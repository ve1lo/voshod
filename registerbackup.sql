PGDMP         (                y         	   gistorsad    13.2    13.2 ,    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394 	   gistorsad    DATABASE     f   CREATE DATABASE gistorsad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE gistorsad;
                postgres    false                        2615    24576    register_appeal    SCHEMA        CREATE SCHEMA register_appeal;
    DROP SCHEMA register_appeal;
                postgres    false            �            1259    24647    answer_appeal    TABLE     g   CREATE TABLE register_appeal.answer_appeal (
    id_answer integer NOT NULL,
    text text NOT NULL
);
 *   DROP TABLE register_appeal.answer_appeal;
       register_appeal         heap    postgres    false    4            �            1259    24645    answer_appeal_id_answer_seq    SEQUENCE     �   ALTER TABLE register_appeal.answer_appeal ALTER COLUMN id_answer ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME register_appeal.answer_appeal_id_answer_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            register_appeal          postgres    false    212    4            �            1259    24579    citizen    TABLE     $  CREATE TABLE register_appeal.citizen (
    citizen_id integer NOT NULL,
    fio character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    telephone integer NOT NULL,
    birthdate date NOT NULL,
    inn integer,
    seria_passport integer,
    nomer_passport integer
);
 $   DROP TABLE register_appeal.citizen;
       register_appeal         heap    postgres    false    4            �            1259    24577    citizen_citizen_id_seq    SEQUENCE     �   ALTER TABLE register_appeal.citizen ALTER COLUMN citizen_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME register_appeal.citizen_citizen_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            register_appeal          postgres    false    4    201            �            1259    24617    register_appeal    TABLE     r   CREATE TABLE register_appeal.register_appeal (
    id_register_appeal integer NOT NULL,
    text text NOT NULL
);
 ,   DROP TABLE register_appeal.register_appeal;
       register_appeal         heap    postgres    false    4            �            1259    24615 &   register_appeal_id_register_appeal_seq    SEQUENCE       ALTER TABLE register_appeal.register_appeal ALTER COLUMN id_register_appeal ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME register_appeal.register_appeal_id_register_appeal_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            register_appeal          postgres    false    210    4            �            1259    24605 
   sotrudniki    TABLE     �   CREATE TABLE register_appeal.sotrudniki (
    id_sotridnik integer NOT NULL,
    fio character varying(100) NOT NULL,
    dolzhnost character varying(100)
);
 '   DROP TABLE register_appeal.sotrudniki;
       register_appeal         heap    postgres    false    4            �            1259    24603    sotrudniki_id_sotridnik_seq    SEQUENCE     �   ALTER TABLE register_appeal.sotrudniki ALTER COLUMN id_sotridnik ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME register_appeal.sotrudniki_id_sotridnik_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            register_appeal          postgres    false    208    4            �            1259    24593    status_appeal    TABLE     x   CREATE TABLE register_appeal.status_appeal (
    id_status integer NOT NULL,
    name character varying(20) NOT NULL
);
 *   DROP TABLE register_appeal.status_appeal;
       register_appeal         heap    postgres    false    4            �            1259    24591    status_request_id_status_seq    SEQUENCE     �   ALTER TABLE register_appeal.status_appeal ALTER COLUMN id_status ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME register_appeal.status_request_id_status_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            register_appeal          postgres    false    4    205            �            1259    24598    type_appeal    TABLE     t   CREATE TABLE register_appeal.type_appeal (
    id_type integer NOT NULL,
    name character varying(11) NOT NULL
);
 (   DROP TABLE register_appeal.type_appeal;
       register_appeal         heap    postgres    false    4            �            1259    24586 	   vedomstvo    TABLE     x   CREATE TABLE register_appeal.vedomstvo (
    id_vedomstvo integer NOT NULL,
    name character varying(200) NOT NULL
);
 &   DROP TABLE register_appeal.vedomstvo;
       register_appeal         heap    postgres    false    4            �            1259    24584    vedomstvo_id_vedomstvo_seq    SEQUENCE     �   ALTER TABLE register_appeal.vedomstvo ALTER COLUMN id_vedomstvo ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME register_appeal.vedomstvo_id_vedomstvo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            register_appeal          postgres    false    203    4            �          0    24647    answer_appeal 
   TABLE DATA                 register_appeal          postgres    false    212   Y5       �          0    24579    citizen 
   TABLE DATA                 register_appeal          postgres    false    201   s5       �          0    24617    register_appeal 
   TABLE DATA                 register_appeal          postgres    false    210   �5       �          0    24605 
   sotrudniki 
   TABLE DATA                 register_appeal          postgres    false    208   �5       �          0    24593    status_appeal 
   TABLE DATA                 register_appeal          postgres    false    205   �5       �          0    24598    type_appeal 
   TABLE DATA                 register_appeal          postgres    false    206   �5       �          0    24586 	   vedomstvo 
   TABLE DATA                 register_appeal          postgres    false    203   �5       �           0    0    answer_appeal_id_answer_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('register_appeal.answer_appeal_id_answer_seq', 1, false);
          register_appeal          postgres    false    211            �           0    0    citizen_citizen_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('register_appeal.citizen_citizen_id_seq', 1, false);
          register_appeal          postgres    false    200            �           0    0 &   register_appeal_id_register_appeal_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('register_appeal.register_appeal_id_register_appeal_seq', 1, false);
          register_appeal          postgres    false    209            �           0    0    sotrudniki_id_sotridnik_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('register_appeal.sotrudniki_id_sotridnik_seq', 1, false);
          register_appeal          postgres    false    207            �           0    0    status_request_id_status_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('register_appeal.status_request_id_status_seq', 1, false);
          register_appeal          postgres    false    204            �           0    0    vedomstvo_id_vedomstvo_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('register_appeal.vedomstvo_id_vedomstvo_seq', 1, false);
          register_appeal          postgres    false    202            S           2606    24654     answer_appeal answer_appeal_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY register_appeal.answer_appeal
    ADD CONSTRAINT answer_appeal_pkey PRIMARY KEY (id_answer);
 S   ALTER TABLE ONLY register_appeal.answer_appeal DROP CONSTRAINT answer_appeal_pkey;
       register_appeal            postgres    false    212            G           2606    24583    citizen citizen_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY register_appeal.citizen
    ADD CONSTRAINT citizen_pkey PRIMARY KEY (citizen_id);
 G   ALTER TABLE ONLY register_appeal.citizen DROP CONSTRAINT citizen_pkey;
       register_appeal            postgres    false    201            Q           2606    24624 $   register_appeal register_appeal_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY register_appeal.register_appeal
    ADD CONSTRAINT register_appeal_pkey PRIMARY KEY (id_register_appeal);
 W   ALTER TABLE ONLY register_appeal.register_appeal DROP CONSTRAINT register_appeal_pkey;
       register_appeal            postgres    false    210            O           2606    24609    sotrudniki sotrudniki_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY register_appeal.sotrudniki
    ADD CONSTRAINT sotrudniki_pkey PRIMARY KEY (id_sotridnik);
 M   ALTER TABLE ONLY register_appeal.sotrudniki DROP CONSTRAINT sotrudniki_pkey;
       register_appeal            postgres    false    208            K           2606    24597     status_appeal status_appeal_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY register_appeal.status_appeal
    ADD CONSTRAINT status_appeal_pkey PRIMARY KEY (id_status);
 S   ALTER TABLE ONLY register_appeal.status_appeal DROP CONSTRAINT status_appeal_pkey;
       register_appeal            postgres    false    205            M           2606    24602    type_appeal type_appeal_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY register_appeal.type_appeal
    ADD CONSTRAINT type_appeal_pkey PRIMARY KEY (id_type);
 O   ALTER TABLE ONLY register_appeal.type_appeal DROP CONSTRAINT type_appeal_pkey;
       register_appeal            postgres    false    206            I           2606    24590    vedomstvo vedomstvo_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY register_appeal.vedomstvo
    ADD CONSTRAINT vedomstvo_pkey PRIMARY KEY (id_vedomstvo);
 K   ALTER TABLE ONLY register_appeal.vedomstvo DROP CONSTRAINT vedomstvo_pkey;
       register_appeal            postgres    false    203            X           2606    24640    register_appeal fk_id_citizen    FK CONSTRAINT     �   ALTER TABLE ONLY register_appeal.register_appeal
    ADD CONSTRAINT fk_id_citizen FOREIGN KEY (id_register_appeal) REFERENCES register_appeal.citizen(citizen_id);
 P   ALTER TABLE ONLY register_appeal.register_appeal DROP CONSTRAINT fk_id_citizen;
       register_appeal          postgres    false    2887    210    201            Y           2606    24655 #   answer_appeal fk_id_register_appeal    FK CONSTRAINT     �   ALTER TABLE ONLY register_appeal.answer_appeal
    ADD CONSTRAINT fk_id_register_appeal FOREIGN KEY (id_answer) REFERENCES register_appeal.register_appeal(id_register_appeal);
 V   ALTER TABLE ONLY register_appeal.answer_appeal DROP CONSTRAINT fk_id_register_appeal;
       register_appeal          postgres    false    2897    212    210            V           2606    24630    register_appeal fk_id_sotrudnik    FK CONSTRAINT     �   ALTER TABLE ONLY register_appeal.register_appeal
    ADD CONSTRAINT fk_id_sotrudnik FOREIGN KEY (id_register_appeal) REFERENCES register_appeal.sotrudniki(id_sotridnik);
 R   ALTER TABLE ONLY register_appeal.register_appeal DROP CONSTRAINT fk_id_sotrudnik;
       register_appeal          postgres    false    2895    208    210            W           2606    24635    register_appeal fk_id_status    FK CONSTRAINT     �   ALTER TABLE ONLY register_appeal.register_appeal
    ADD CONSTRAINT fk_id_status FOREIGN KEY (id_register_appeal) REFERENCES register_appeal.status_appeal(id_status);
 O   ALTER TABLE ONLY register_appeal.register_appeal DROP CONSTRAINT fk_id_status;
       register_appeal          postgres    false    210    205    2891            U           2606    24625 !   register_appeal fk_id_type_appeal    FK CONSTRAINT     �   ALTER TABLE ONLY register_appeal.register_appeal
    ADD CONSTRAINT fk_id_type_appeal FOREIGN KEY (id_register_appeal) REFERENCES register_appeal.type_appeal(id_type);
 T   ALTER TABLE ONLY register_appeal.register_appeal DROP CONSTRAINT fk_id_type_appeal;
       register_appeal          postgres    false    2893    210    206            T           2606    24610    sotrudniki fk_id_vedomstvo    FK CONSTRAINT     �   ALTER TABLE ONLY register_appeal.sotrudniki
    ADD CONSTRAINT fk_id_vedomstvo FOREIGN KEY (id_sotridnik) REFERENCES register_appeal.vedomstvo(id_vedomstvo);
 M   ALTER TABLE ONLY register_appeal.sotrudniki DROP CONSTRAINT fk_id_vedomstvo;
       register_appeal          postgres    false    203    208    2889            �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���         