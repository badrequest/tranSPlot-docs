CREATE TABLE device
(
  os character varying(255) NOT NULL,
  uid character varying(255) NOT NULL,
  status boolean,
  CONSTRAINT device_pkey PRIMARY KEY (os, uid)
);

CREATE TABLE traffic
(
  date timestamp without time zone NOT NULL,
  x integer NOT NULL,
  y integer NOT NULL,
  orientation real,
  velocity real,
  device_os character varying(255),
  device_uid character varying(255),
  CONSTRAINT traffic_pkey PRIMARY KEY (date, x, y),
  CONSTRAINT fkc06221fd2b304dad FOREIGN KEY (device_os, device_uid)
      REFERENCES device (os, uid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
