create table jyushoroku (
  toroku_bango  integer      not null,
  namae         varchar(128) not null,
  jyusho        varchar(256) not null,
  tel_no        char(10),
  mail_address  char(20),
  primary key (toroku_bango));

alter table jyushoroku add column yubin_bango char(8) not null;

drop table jyushoroku;
