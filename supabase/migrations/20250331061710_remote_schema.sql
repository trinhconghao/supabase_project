revoke delete on table "public"."note_tags" from "anon";

revoke insert on table "public"."note_tags" from "anon";

revoke references on table "public"."note_tags" from "anon";

revoke select on table "public"."note_tags" from "anon";

revoke trigger on table "public"."note_tags" from "anon";

revoke truncate on table "public"."note_tags" from "anon";

revoke update on table "public"."note_tags" from "anon";

revoke delete on table "public"."note_tags" from "authenticated";

revoke insert on table "public"."note_tags" from "authenticated";

revoke references on table "public"."note_tags" from "authenticated";

revoke select on table "public"."note_tags" from "authenticated";

revoke trigger on table "public"."note_tags" from "authenticated";

revoke truncate on table "public"."note_tags" from "authenticated";

revoke update on table "public"."note_tags" from "authenticated";

revoke delete on table "public"."note_tags" from "service_role";

revoke insert on table "public"."note_tags" from "service_role";

revoke references on table "public"."note_tags" from "service_role";

revoke select on table "public"."note_tags" from "service_role";

revoke trigger on table "public"."note_tags" from "service_role";

revoke truncate on table "public"."note_tags" from "service_role";

revoke update on table "public"."note_tags" from "service_role";

revoke delete on table "public"."notes" from "anon";

revoke insert on table "public"."notes" from "anon";

revoke references on table "public"."notes" from "anon";

revoke select on table "public"."notes" from "anon";

revoke trigger on table "public"."notes" from "anon";

revoke truncate on table "public"."notes" from "anon";

revoke update on table "public"."notes" from "anon";

revoke delete on table "public"."notes" from "authenticated";

revoke insert on table "public"."notes" from "authenticated";

revoke references on table "public"."notes" from "authenticated";

revoke select on table "public"."notes" from "authenticated";

revoke trigger on table "public"."notes" from "authenticated";

revoke truncate on table "public"."notes" from "authenticated";

revoke update on table "public"."notes" from "authenticated";

revoke delete on table "public"."notes" from "service_role";

revoke insert on table "public"."notes" from "service_role";

revoke references on table "public"."notes" from "service_role";

revoke select on table "public"."notes" from "service_role";

revoke trigger on table "public"."notes" from "service_role";

revoke truncate on table "public"."notes" from "service_role";

revoke update on table "public"."notes" from "service_role";

revoke delete on table "public"."shares" from "anon";

revoke insert on table "public"."shares" from "anon";

revoke references on table "public"."shares" from "anon";

revoke select on table "public"."shares" from "anon";

revoke trigger on table "public"."shares" from "anon";

revoke truncate on table "public"."shares" from "anon";

revoke update on table "public"."shares" from "anon";

revoke delete on table "public"."shares" from "authenticated";

revoke insert on table "public"."shares" from "authenticated";

revoke references on table "public"."shares" from "authenticated";

revoke select on table "public"."shares" from "authenticated";

revoke trigger on table "public"."shares" from "authenticated";

revoke truncate on table "public"."shares" from "authenticated";

revoke update on table "public"."shares" from "authenticated";

revoke delete on table "public"."shares" from "service_role";

revoke insert on table "public"."shares" from "service_role";

revoke references on table "public"."shares" from "service_role";

revoke select on table "public"."shares" from "service_role";

revoke trigger on table "public"."shares" from "service_role";

revoke truncate on table "public"."shares" from "service_role";

revoke update on table "public"."shares" from "service_role";

revoke delete on table "public"."tags" from "anon";

revoke insert on table "public"."tags" from "anon";

revoke references on table "public"."tags" from "anon";

revoke select on table "public"."tags" from "anon";

revoke trigger on table "public"."tags" from "anon";

revoke truncate on table "public"."tags" from "anon";

revoke update on table "public"."tags" from "anon";

revoke delete on table "public"."tags" from "authenticated";

revoke insert on table "public"."tags" from "authenticated";

revoke references on table "public"."tags" from "authenticated";

revoke select on table "public"."tags" from "authenticated";

revoke trigger on table "public"."tags" from "authenticated";

revoke truncate on table "public"."tags" from "authenticated";

revoke update on table "public"."tags" from "authenticated";

revoke delete on table "public"."tags" from "service_role";

revoke insert on table "public"."tags" from "service_role";

revoke references on table "public"."tags" from "service_role";

revoke select on table "public"."tags" from "service_role";

revoke trigger on table "public"."tags" from "service_role";

revoke truncate on table "public"."tags" from "service_role";

revoke update on table "public"."tags" from "service_role";

revoke delete on table "public"."users" from "anon";

revoke insert on table "public"."users" from "anon";

revoke references on table "public"."users" from "anon";

revoke select on table "public"."users" from "anon";

revoke trigger on table "public"."users" from "anon";

revoke truncate on table "public"."users" from "anon";

revoke update on table "public"."users" from "anon";

revoke delete on table "public"."users" from "authenticated";

revoke insert on table "public"."users" from "authenticated";

revoke references on table "public"."users" from "authenticated";

revoke select on table "public"."users" from "authenticated";

revoke trigger on table "public"."users" from "authenticated";

revoke truncate on table "public"."users" from "authenticated";

revoke update on table "public"."users" from "authenticated";

revoke delete on table "public"."users" from "service_role";

revoke insert on table "public"."users" from "service_role";

revoke references on table "public"."users" from "service_role";

revoke select on table "public"."users" from "service_role";

revoke trigger on table "public"."users" from "service_role";

revoke truncate on table "public"."users" from "service_role";

revoke update on table "public"."users" from "service_role";

alter table "public"."note_tags" drop constraint "note_tags_note_id_fkey";

alter table "public"."note_tags" drop constraint "note_tags_tag_id_fkey";

alter table "public"."notes" drop constraint "notes_user_id_fkey";

alter table "public"."shares" drop constraint "shares_note_id_fkey";

alter table "public"."shares" drop constraint "shares_permission_check";

alter table "public"."shares" drop constraint "shares_shared_with_fkey";

alter table "public"."tags" drop constraint "tags_name_key";

alter table "public"."users" drop constraint "users_email_key";

alter table "public"."note_tags" drop constraint "note_tags_pkey";

alter table "public"."notes" drop constraint "notes_pkey";

alter table "public"."shares" drop constraint "shares_pkey";

alter table "public"."tags" drop constraint "tags_pkey";

alter table "public"."users" drop constraint "users_pkey";

drop index if exists "public"."note_tags_pkey";

drop index if exists "public"."notes_pkey";

drop index if exists "public"."shares_pkey";

drop index if exists "public"."tags_name_key";

drop index if exists "public"."tags_pkey";

drop index if exists "public"."users_email_key";

drop index if exists "public"."users_pkey";

drop table "public"."note_tags";

drop table "public"."notes";

drop table "public"."shares";

drop table "public"."tags";

drop table "public"."users";


