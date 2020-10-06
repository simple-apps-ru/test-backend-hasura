ALTER TABLE "public"."user" ADD COLUMN "firebase_uid" text;
ALTER TABLE "public"."user" ALTER COLUMN "firebase_uid" DROP NOT NULL;
ALTER TABLE "public"."user" ADD CONSTRAINT users_firebase_uid_key UNIQUE (firebase_uid);
