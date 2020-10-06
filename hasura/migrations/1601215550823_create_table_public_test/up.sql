CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."test"("id" uuid NOT NULL DEFAULT gen_random_uuid(), PRIMARY KEY ("id") );
