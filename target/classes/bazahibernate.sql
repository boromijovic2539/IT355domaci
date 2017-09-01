/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     8/29/2017 4:12:16 PM                         */
/*==============================================================*/


drop table if exists IGRAC;

drop table if exists KARTA;

drop table if exists KLUB;

drop table if exists KORISNIK;

drop table if exists KUPOVINA;

drop table if exists USERS;

drop table if exists USER_ROLES;

drop table if exists UTAKMICA;

drop table if exists VEST;

drop table if exists ZAPOSLENI;

/*==============================================================*/
/* Table: IGRAC                                                 */
/*==============================================================*/
create table IGRAC
(
   ID_IGRAC             int not null AUTO_INCREMENT,
   ID_KLUB              int,
   IME_IGRAC            varchar(32),
   PREZIME_IGRAC        varchar(32),
   POZICIJA             varchar(32),
   NACIONALNOST         varchar(50),
   MESTO_RODJENJA       varchar(50),
   SLIKA_IGRAC          varchar(32),
   primary key (ID_IGRAC)
);

/*==============================================================*/
/* Table: KARTA                                                 */
/*==============================================================*/
create table KARTA
(
   ID_KARTA             int not null AUTO_INCREMENT,
   ID_UTAKMICA          int,
   CENA_KARTE           decimal,
   primary key (ID_KARTA)
);

/*==============================================================*/
/* Table: KLUB                                                  */
/*==============================================================*/
create table KLUB
(
   ID_KLUB              int not null AUTO_INCREMENT,
   NAZIV_KLUB           varchar(50),
   ADRESA_KLUB          varchar(50),
   KONTAKT_TELEFON      varchar(50),
   NAZIV_STADIONA       varchar(50),
   primary key (ID_KLUB)
);

/*==============================================================*/
/* Table: KORISNIK                                              */
/*==============================================================*/
create table KORISNIK
(
   ID_KORISNIK          int not null AUTO_INCREMENT,
   IME_KORISNIK         varchar(32),
   PREZIME_KORISNIK     varchar(32),
   EMAIL_KORISNIK       varchar(32),
   TELEFON_KORISNIK     varchar(32),
   ADRESA_KORISNIK      varchar(32),
   GRAD_KORISNIK        varchar(32),
   DRZAVA_KORISNIK      varchar(50),
   primary key (ID_KORISNIK)
);

/*==============================================================*/
/* Table: KUPOVINA                                              */
/*==============================================================*/
create table KUPOVINA
(
   ID_KUPOVINA          int not null AUTO_INCREMENT,
   ID_KARTA             int,
   ID_KORISNIK          int,
   BROJ_KARATA          numeric(5,0),
   primary key (ID_KUPOVINA)
);

/*==============================================================*/
/* Table: USERS                                                 */
/*==============================================================*/
create table USERS
(
   ID_USER              int not null AUTO_INCREMENT,
   ID_KORISNIK          int,
   USERNAME             varchar(45),
   PASSWORD             varchar(45),
   ENABLED              int,
   primary key (ID_USER)
);

/*==============================================================*/
/* Table: USER_ROLES                                            */
/*==============================================================*/
create table USER_ROLES
(
   USER_ROLE_ID         int not null AUTO_INCREMENT,
   ID_USER              int,
   ROLE                 varchar(45),
   primary key (USER_ROLE_ID)
);

/*==============================================================*/
/* Table: UTAKMICA                                              */
/*==============================================================*/
create table UTAKMICA
(
   ID_UTAKMICA          int not null AUTO_INCREMENT,
   ID_KLUB              int,
   VREME_UTAKMICE       varchar(50),
   GOSTUJUCI_TIM        varchar(50),
   primary key (ID_UTAKMICA)
);

/*==============================================================*/
/* Table: VEST                                                  */
/*==============================================================*/
create table VEST
(
   ID_VEST              int not null AUTO_INCREMENT,
   ID_KLUB              int,
   NAZIV_VEST           varchar(50),
   OPIS_VEST            varchar(300),
   SLIKA_VEST           varchar(50),
   primary key (ID_VEST)
);

/*==============================================================*/
/* Table: ZAPOSLENI                                             */
/*==============================================================*/
create table ZAPOSLENI
(
   ID_ZAPOSLENI         int not null AUTO_INCREMENT,
   ID_KLUB              int,
   IME_ZAPOSLENI        varchar(32),
   PREZIME_ZAPOSLENI    varchar(32),
   ADRESA_ZAPOSLENI     varchar(32),
   TELEFON_ZAPOSLENI    varchar(32),
   ZANIMANJE            varchar(50),
   primary key (ID_ZAPOSLENI)
);

alter table IGRAC add constraint FK_KLUB_IGRAC foreign key (ID_KLUB)
      references KLUB (ID_KLUB) on delete restrict on update restrict;

alter table KARTA add constraint FK_UTAKMICA_KARTA foreign key (ID_UTAKMICA)
      references UTAKMICA (ID_UTAKMICA) on delete restrict on update restrict;

alter table KUPOVINA add constraint FK_KARTA_KUPOVINA foreign key (ID_KARTA)
      references KARTA (ID_KARTA) on delete restrict on update restrict;

alter table KUPOVINA add constraint FK_KORISNIK_KUPOVINA foreign key (ID_KORISNIK)
      references KORISNIK (ID_KORISNIK) on delete restrict on update restrict;

alter table USERS add constraint FK_REFERENCE_8 foreign key (ID_KORISNIK)
      references KORISNIK (ID_KORISNIK) on delete restrict on update restrict;

alter table USER_ROLES add constraint FK_REFERENCE_9 foreign key (ID_USER)
      references USERS (ID_USER) on delete restrict on update restrict;

alter table UTAKMICA add constraint FK_KLUB_UTAKMICA foreign key (ID_KLUB)
      references KLUB (ID_KLUB) on delete restrict on update restrict;

alter table VEST add constraint FK_KLUB_VESTI foreign key (ID_KLUB)
      references KLUB (ID_KLUB) on delete restrict on update restrict;

alter table ZAPOSLENI add constraint FK_KLUB_ZAPOSLENI foreign key (ID_KLUB)
      references KLUB (ID_KLUB) on delete restrict on update restrict;

