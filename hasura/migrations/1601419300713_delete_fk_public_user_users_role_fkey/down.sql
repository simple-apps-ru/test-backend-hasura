alter table "public"."user" add foreign key ("role") references "public"."role"("role") on update cascade on delete cascade;
