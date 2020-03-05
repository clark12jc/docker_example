CREATE SCHEMA IF NOT EXISTS `default`;

DROP TABLE IF EXISTS default.sitemap;
CREATE TABLE default.sitemap (
    sitemap_id VARCHAR(256) PRIMARY KEY,
    url VARCHAR(256),
    alias VARCHAR(256),
    title VARCHAR(256),
    skip_update boolean,
    skip_migrate boolean,
    duplicate_id VARCHAR(256),
    content TEXT
);

DROP TABLE IF EXISTS default.agency;
CREATE TABLE default.agency (
    agency_id VARCHAR(256) PRIMARY KEY,
    name VARCHAR(256)
);

INSERT INTO default.agency (agency_id, name)
VALUES
  ('ofccp', 'Office of Federal Contract Compliance Programs'),
  ('arb', 'Administrative Review Board'),
  ('brb', 'Benefits Review Board'),
  ('ecab', 'Employees Compensation Appeals Board');
