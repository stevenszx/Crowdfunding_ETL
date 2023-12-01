

CREATE TABLE "Categories" (
    "cat_id" VARCHAR(10)   NOT NULL,
    "cat_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Categories" PRIMARY KEY (
        "cat_id"
     )
);

CREATE TABLE "SubCategories" (
    "subcat_id" VARCHAR(50)   NOT NULL,
    "subcat_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_SubCategories" PRIMARY KEY (
        "subcat_id"
     )
);

CREATE TABLE "Contact" (
    "contact_id" INTEGER   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" INTEGER   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR(100)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(50)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(10)   NOT NULL,
    "currency" VARCHAR(5)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" VARCHAR(10)   NOT NULL,
    "subcategory_id" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contact" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Categories" ("cat_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "SubCategories" ("subcat_id");


SELECT * FROM "Categories";
SELECT * FROM "SubCategories";
SELECT * FROM "Contact";
SELECT * FROM "Campaign";
