CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."alarms"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "user_id" uuid NOT NULL, "start_time" timestamptz NOT NULL, "end_time" timestamptz NOT NULL, "geo" geometry NOT NULL, "comment" text, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE cascade ON DELETE cascade);
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_alarms_updated_at"
BEFORE UPDATE ON "public"."alarms"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_alarms_updated_at" ON "public"."alarms" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
