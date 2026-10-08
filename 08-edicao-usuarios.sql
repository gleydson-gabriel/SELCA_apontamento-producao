begin;
create or replace function public.production_member_directory() returns jsonb language plpgsql security definer set search_path='' as $$
begin
 if not public.production_is_admin() then raise exception 'Somente administradores.'; end if;
 return (select coalesce(jsonb_agg(jsonb_build_object('id',m.id,'name',m.name,'email',u.email,'role',m.role,'active',m.active) order by m.name),'[]'::jsonb) from time_app.members m join auth.users u on u.id=m.id);
end $$;
revoke all on function public.production_member_directory() from public,anon;
grant execute on function public.production_member_directory() to authenticated;
create or replace function time_app.sync_edited_member() returns trigger language plpgsql security definer set search_path='' as $$
declare actor uuid; label text; prior text;
begin
 if new.raw_app_meta_data->>'time_app_edit_id' is not distinct from old.raw_app_meta_data->>'time_app_edit_id' then return new; end if;
 actor:=(new.raw_app_meta_data->>'time_app_edited_by')::uuid;
 perform 1 from time_app.settings where id=1 for update;
 if not exists(select 1 from time_app.members where id=actor and role='admin' and active) then raise exception 'Administrador não autorizado.'; end if;
 select name into prior from time_app.members where id=new.id;
 if not found then raise exception 'Usuário não pertence ao sistema.'; end if;
 if prior is distinct from new.raw_app_meta_data->>'time_app_before_name' or old.email is distinct from new.raw_app_meta_data->>'time_app_before_email' then raise exception 'Cadastro alterado. Atualize e tente novamente.'; end if;
 label:=trim(new.raw_app_meta_data->>'time_app_name');
 if label is null or length(label) not between 1 and 120 then raise exception 'Nome inválido.'; end if;
 update time_app.members set name=label where id=new.id;
 insert into time_app.audit_events(actor,action,entity,before_value,after_value) values(actor,'update_member',new.id::text,jsonb_build_object('name',prior,'email',old.email),jsonb_build_object('name',label,'email',new.email));
 update time_app.settings set revision=revision+1 where id=1;
 return new;
end $$;
drop trigger if exists time_app_sync_edited_member on auth.users;
create trigger time_app_sync_edited_member after update on auth.users for each row execute function time_app.sync_edited_member();
revoke all on function time_app.sync_edited_member() from public,anon,authenticated;
commit;
