--liquibase formatted sql
--changeset liquibase-demo:release_2_0_0.01_create_test_view.sql

CREATE OR REPLACE VIEW
    liquibase_test_view AS select * from liquibase_test;

ALTER VIEW liquibase_test_view OWNER TO liquibasedemo;
