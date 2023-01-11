DROP TABLE IF EXISTS "public"."recipes";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS books_id_seq;

-- Table Definition

CREATE TABLE "public"."recipes" (
"id" SERIAL,
"recipe_names" text,
"cooking_time" text,
"recipe_rating" int
);

INSERT INTO "public"."recipes" ("id", "recipe_names", "cooking_time", "recipe_rating") VALUES
(1, 'Carbonara', '15 minutes', 10),
(2, 'Hot dogs', '5 minutes', 7);