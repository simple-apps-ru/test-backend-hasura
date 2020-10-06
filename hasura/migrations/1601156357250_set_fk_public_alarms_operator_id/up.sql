alter table "public"."alarms"
           add constraint "alarms_operator_id_fkey"
           foreign key ("operator_id")
           references "public"."users"
           ("id") on update cascade on delete cascade;
