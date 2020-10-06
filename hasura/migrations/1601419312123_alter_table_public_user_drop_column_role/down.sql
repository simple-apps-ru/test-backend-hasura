ALTER TABLE "public"."user" ADD COLUMN "role" text;
ALTER TABLE "public"."user" ALTER COLUMN "role" DROP NOT NULL;
ALTER TABLE "public"."user" ALTER COLUMN "role" SET DEFAULT 'user'::text;
