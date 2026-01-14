-- Create "posts" table
CREATE TABLE "posts" (
  "id" serial NOT NULL,
  "user_id" integer NULL,
  "title" character varying(255) NOT NULL,
  "content" text NULL,
  "created_at" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY ("id"),
  CONSTRAINT "posts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION
);
