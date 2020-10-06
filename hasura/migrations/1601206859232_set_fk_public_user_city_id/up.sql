alter table "public"."user"
           add constraint "user_city_id_fkey"
           foreign key ("city_id")
           references "public"."city"
           ("id") on update cascade on delete restrict;
