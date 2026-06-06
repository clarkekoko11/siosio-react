-- Run this SQL in your Supabase SQL Editor to populate realistic mock data
-- Note: All mock users use the password 'qc9zVHIGb0N9A1!'

DO $$
BEGIN

  -- User: Miguel Ocampo
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'authenticated', 'authenticated', 'miguel.ocampo0@example.com', crypt('yBFhgZjLMh2CA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Miguel Ocampo"}', now() - interval '64 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9340617649' WHERE id = 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f';

  -- User: Vicente Ramirez
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'authenticated', 'authenticated', 'vicente.ramirez1@example.com', crypt('N78pbScWEHwGA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Vicente Ramirez"}', now() - interval '98 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9276218903' WHERE id = '280fb370-eac8-4cba-8e95-a8fdd61aeb40';

  -- User: Paul Dela Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '83cf7a6a-878d-4c5a-806b-b9f60f5493c5', 'authenticated', 'authenticated', 'paul.delacruz2@example.com', crypt('hKlhXq1Msk77A1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Paul Dela Cruz"}', now() - interval '4 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9364284175' WHERE id = '83cf7a6a-878d-4c5a-806b-b9f60f5493c5';

  -- User: Mark Fernandez
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'b64da884-fcfd-4117-baaf-eea831514404', 'authenticated', 'authenticated', 'mark.fernandez3@example.com', crypt('mC1UoI50JCEfA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Mark Fernandez"}', now() - interval '30 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9348587293' WHERE id = 'b64da884-fcfd-4117-baaf-eea831514404';

  -- User: Luis Rivera
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '7c958610-38b2-465a-909e-dce129cac5b3', 'authenticated', 'authenticated', 'luis.rivera4@example.com', crypt('DZkgYLerLpwA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Luis Rivera"}', now() - interval '2 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9272802896' WHERE id = '7c958610-38b2-465a-909e-dce129cac5b3';

  -- User: Rosa Lopez
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'authenticated', 'authenticated', 'rosa.lopez5@example.com', crypt('J9pscYSXxDsA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Rosa Lopez"}', now() - interval '48 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9420586142' WHERE id = '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4';

  -- User: Pedro Ocampo
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'authenticated', 'authenticated', 'pedro.ocampo6@example.com', crypt('siEhavYKG4yZA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Pedro Ocampo"}', now() - interval '99 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9570358698' WHERE id = '10a680e3-e4af-40ec-ac2e-116499b3c8d2';

  -- User: Mark Dela Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '301e3595-c9e6-4712-9bc5-c986d353a751', 'authenticated', 'authenticated', 'mark.delacruz7@example.com', crypt('YwpEBbHt7tA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Mark Dela Cruz"}', now() - interval '44 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9523535959' WHERE id = '301e3595-c9e6-4712-9bc5-c986d353a751';

  -- User: Paul Bautista
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'a7526055-3dfe-4aba-94fa-754491ac4cd3', 'authenticated', 'authenticated', 'paul.bautista8@example.com', crypt('ikTg40zvN3bGA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Paul Bautista"}', now() - interval '50 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9900749205' WHERE id = 'a7526055-3dfe-4aba-94fa-754491ac4cd3';

  -- User: Miguel Luna
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'authenticated', 'authenticated', 'miguel.luna9@example.com', crypt('rsc9RkNDJpM0A1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Miguel Luna"}', now() - interval '7 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9375312731' WHERE id = 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866';

  -- User: Paul Gomez
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '1e40f517-3427-4059-afe9-44e84e4257f5', 'authenticated', 'authenticated', 'paul.gomez10@example.com', crypt('HXOv4Kg2ZAosA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Paul Gomez"}', now() - interval '90 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9238955036' WHERE id = '1e40f517-3427-4059-afe9-44e84e4257f5';

  -- User: Pedro Rivera
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7', 'authenticated', 'authenticated', 'pedro.rivera11@example.com', crypt('BjihhYuqUW8qA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Pedro Rivera"}', now() - interval '73 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9418752740' WHERE id = '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7';

  -- User: Antonio Garcia
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'authenticated', 'authenticated', 'antonio.garcia12@example.com', crypt('SE5r8XuBoDcqA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Antonio Garcia"}', now() - interval '71 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9575138458' WHERE id = '2607997f-cb84-447f-89e3-8a3c3bc0e9f5';

  -- User: Francisco Rizal
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135', 'authenticated', 'authenticated', 'francisco.rizal13@example.com', crypt('kYB2lZdkatOTA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Francisco Rizal"}', now() - interval '44 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9826155165' WHERE id = 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135';

  -- User: Juan Rivera
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'authenticated', 'authenticated', 'juan.rivera14@example.com', crypt('opw2E8PdH4A1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Juan Rivera"}', now() - interval '14 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9634614196' WHERE id = 'fe0f525b-2606-48d8-be2c-a1248079118e';

  -- User: Roberto Garcia
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'authenticated', 'authenticated', 'roberto.garcia15@example.com', crypt('nI1aFcca4tV7A1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Roberto Garcia"}', now() - interval '61 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9998114458' WHERE id = 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54';

  -- User: Francisco Rizal
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '3887a8d3-aaa2-429d-9481-1cd3d91a6b77', 'authenticated', 'authenticated', 'francisco.rizal16@example.com', crypt('PawlgZI93D9A1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Francisco Rizal"}', now() - interval '49 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9121526062' WHERE id = '3887a8d3-aaa2-429d-9481-1cd3d91a6b77';

  -- User: Maria Torres
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'authenticated', 'authenticated', 'maria.torres17@example.com', crypt('F1UujRIuHtROA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Maria Torres"}', now() - interval '65 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9369039106' WHERE id = '0d6615af-8634-4914-9dae-7b94d6a97a35';

  -- User: Carmen Perez
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '3beb0cee-2839-445b-9bb1-a4d4d5c9bab9', 'authenticated', 'authenticated', 'carmen.perez18@example.com', crypt('wkSzyapzbiTLA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Carmen Perez"}', now() - interval '36 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9846533716' WHERE id = '3beb0cee-2839-445b-9bb1-a4d4d5c9bab9';

  -- User: Carmen Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '28e041df-ed58-4f58-8423-fff80af4d5eb', 'authenticated', 'authenticated', 'carmen.cruz19@example.com', crypt('fd8Q45688gT9A1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Carmen Cruz"}', now() - interval '19 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9642792171' WHERE id = '28e041df-ed58-4f58-8423-fff80af4d5eb';

  -- User: Paul Bautista
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'authenticated', 'authenticated', 'paul.bautista20@example.com', crypt('znVF2BjXpUyfA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Paul Bautista"}', now() - interval '16 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9688720824' WHERE id = '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe';

  -- User: Carmen Luna
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'authenticated', 'authenticated', 'carmen.luna21@example.com', crypt('XMsZZvAlf7W3A1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Carmen Luna"}', now() - interval '44 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9750824469' WHERE id = 'ab7d16b5-e02d-49a3-b22f-32a658f303b6';

  -- User: Roberto Fernandez
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '274ce8da-c7fe-4ca8-9c0a-f4d5d524d0f1', 'authenticated', 'authenticated', 'roberto.fernandez22@example.com', crypt('Td1WmKjquXA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Roberto Fernandez"}', now() - interval '63 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9531683663' WHERE id = '274ce8da-c7fe-4ca8-9c0a-f4d5d524d0f1';

  -- User: Juan Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'authenticated', 'authenticated', 'juan.cruz23@example.com', crypt('ykZA7DWIc31hA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Juan Cruz"}', now() - interval '18 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9106150165' WHERE id = 'bede30ac-c75c-4413-8d1b-43e8b9c3e583';

  -- User: Manuel Garcia
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '92548978-1693-44bd-b7b9-49a92393d843', 'authenticated', 'authenticated', 'manuel.garcia24@example.com', crypt('fijmt5wiCKDlA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Manuel Garcia"}', now() - interval '27 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9838305407' WHERE id = '92548978-1693-44bd-b7b9-49a92393d843';

  -- User: Ana Mendoza
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '905e182d-e96d-4ca8-9991-3a94f6d83373', 'authenticated', 'authenticated', 'ana.mendoza25@example.com', crypt('ltOv5VkYdPxvA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Ana Mendoza"}', now() - interval '79 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9568517643' WHERE id = '905e182d-e96d-4ca8-9991-3a94f6d83373';

  -- User: Maria Gonzales
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'authenticated', 'authenticated', 'maria.gonzales26@example.com', crypt('0CMnKsxVsrJdA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Maria Gonzales"}', now() - interval '7 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9216042660' WHERE id = 'd597afa7-9acc-474d-b7b3-45f242e446a2';

  -- User: Pedro Luna
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'authenticated', 'authenticated', 'pedro.luna27@example.com', crypt('V5QY0CZQvTNHA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Pedro Luna"}', now() - interval '52 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9590300969' WHERE id = 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2';

  -- User: Paul Dela Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'authenticated', 'authenticated', 'paul.delacruz28@example.com', crypt('6HzWLmKIGfOA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Paul Dela Cruz"}', now() - interval '21 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9686108904' WHERE id = 'c9e22c91-486e-40c5-99ac-5ae2c172c198';

  -- User: Rosa Gomez
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '46052fea-47c0-44ae-8e84-4182007d073a', 'authenticated', 'authenticated', 'rosa.gomez29@example.com', crypt('rlYlkcfSftPA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Rosa Gomez"}', now() - interval '53 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9528725187' WHERE id = '46052fea-47c0-44ae-8e84-4182007d073a';

  -- User: Antonio Gonzales
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '4645611f-1d66-4780-899a-929d39d9a150', 'authenticated', 'authenticated', 'antonio.gonzales30@example.com', crypt('bGtfLeME1TrDA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Antonio Gonzales"}', now() - interval '32 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9669353021' WHERE id = '4645611f-1d66-4780-899a-929d39d9a150';

  -- User: Miguel Rizal
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'authenticated', 'authenticated', 'miguel.rizal31@example.com', crypt('ooVcQ1RbDWjoA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Miguel Rizal"}', now() - interval '83 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9731784710' WHERE id = '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538';

  -- User: Juan Ocampo
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'authenticated', 'authenticated', 'juan.ocampo32@example.com', crypt('if2VJniMoL7A1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Juan Ocampo"}', now() - interval '79 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9143183588' WHERE id = '0d09ee55-9600-4ca3-a84d-6ff749b6a66b';

  -- User: Carlos Ocampo
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '530e0d5d-f37a-4d28-bf10-6acbbf2cd989', 'authenticated', 'authenticated', 'carlos.ocampo33@example.com', crypt('tKPCO4r0VQAMA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Carlos Ocampo"}', now() - interval '16 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9436801555' WHERE id = '530e0d5d-f37a-4d28-bf10-6acbbf2cd989';

  -- User: Rosa Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '63f3d871-11f2-4720-8edb-821f8276fa6f', 'authenticated', 'authenticated', 'rosa.cruz34@example.com', crypt('GkVJvSJuIhhiA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Rosa Cruz"}', now() - interval '92 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9710023969' WHERE id = '63f3d871-11f2-4720-8edb-821f8276fa6f';

  -- User: Miguel Torres
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '9a246f71-53f2-4663-9e16-c0ef3da8fda3', 'authenticated', 'authenticated', 'miguel.torres35@example.com', crypt('DVciMT0otrCoA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Miguel Torres"}', now() - interval '96 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9796155100' WHERE id = '9a246f71-53f2-4663-9e16-c0ef3da8fda3';

  -- User: Ricardo Ramirez
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '2ff4f21c-36cd-4cfe-94aa-ffd3cbfc859d', 'authenticated', 'authenticated', 'ricardo.ramirez36@example.com', crypt('gRO26xBSCByA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Ricardo Ramirez"}', now() - interval '79 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9482882790' WHERE id = '2ff4f21c-36cd-4cfe-94aa-ffd3cbfc859d';

  -- User: Javier Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '7e6123c7-d5cc-453d-bd2e-f973966e77bb', 'authenticated', 'authenticated', 'javier.cruz37@example.com', crypt('W2rmTODDOblGA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Javier Cruz"}', now() - interval '34 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9632767691' WHERE id = '7e6123c7-d5cc-453d-bd2e-f973966e77bb';

  -- User: Luis Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'ca4cc8a1-6358-46ad-89d5-58530725185b', 'authenticated', 'authenticated', 'luis.cruz38@example.com', crypt('OFldaoe3kCrjA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Luis Cruz"}', now() - interval '99 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9601569482' WHERE id = 'ca4cc8a1-6358-46ad-89d5-58530725185b';

  -- User: Ricardo Garcia
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '0a8fd3f2-bc60-4ed7-8c38-168c93c15641', 'authenticated', 'authenticated', 'ricardo.garcia39@example.com', crypt('HwLxHjLNwCBsA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Ricardo Garcia"}', now() - interval '48 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9377602496' WHERE id = '0a8fd3f2-bc60-4ed7-8c38-168c93c15641';

  -- User: Antonio Torres
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'authenticated', 'authenticated', 'antonio.torres40@example.com', crypt('CogxhzupcTF4A1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Antonio Torres"}', now() - interval '57 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9413365341' WHERE id = 'f79b2197-2084-402d-a7ee-efed796ec87c';

  -- User: Carmen Ocampo
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '2f65aaca-7f5d-4616-bf8d-728a2fc56101', 'authenticated', 'authenticated', 'carmen.ocampo41@example.com', crypt('MQAkcBcIRDA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Carmen Ocampo"}', now() - interval '4 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9737662908' WHERE id = '2f65aaca-7f5d-4616-bf8d-728a2fc56101';

  -- User: Ana Dela Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'ab7ba6a4-a4d3-449c-9f56-94969f427eae', 'authenticated', 'authenticated', 'ana.delacruz42@example.com', crypt('DMa3Q8p1Dj8gA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Ana Dela Cruz"}', now() - interval '91 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9403416038' WHERE id = 'ab7ba6a4-a4d3-449c-9f56-94969f427eae';

  -- User: Teresa Fernandez
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'authenticated', 'authenticated', 'teresa.fernandez43@example.com', crypt('js9zAjFJ4HIgA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Teresa Fernandez"}', now() - interval '51 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9152623912' WHERE id = 'ee0c57fd-3322-4728-b074-7dbbe85857ea';

  -- User: Pedro Rivera
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'c315d8cd-0c4b-46b9-b31e-be08e1bc69e0', 'authenticated', 'authenticated', 'pedro.rivera44@example.com', crypt('GrEiXuZbamJyA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Pedro Rivera"}', now() - interval '79 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9780746951' WHERE id = 'c315d8cd-0c4b-46b9-b31e-be08e1bc69e0';

  -- User: Jose Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '4ee87f43-0284-4d16-869a-6996b969cf28', 'authenticated', 'authenticated', 'jose.cruz45@example.com', crypt('f7jnGXS1S5BeA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Jose Cruz"}', now() - interval '47 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9319292746' WHERE id = '4ee87f43-0284-4d16-869a-6996b969cf28';

  -- User: Juan Gomez
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '51b4df1e-fedf-4ec8-97eb-8083c6f84012', 'authenticated', 'authenticated', 'juan.gomez46@example.com', crypt('bd6ziHapQPsWA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Juan Gomez"}', now() - interval '60 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9893300276' WHERE id = '51b4df1e-fedf-4ec8-97eb-8083c6f84012';

  -- User: Vicente Luna
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'authenticated', 'authenticated', 'vicente.luna47@example.com', crypt('ipBSEEoeY6OdA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Vicente Luna"}', now() - interval '91 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9992893171' WHERE id = 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1';

  -- User: Luis Tomas
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'authenticated', 'authenticated', 'luis.tomas48@example.com', crypt('ZB0G7vLTCqlfA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Luis Tomas"}', now() - interval '33 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9922623614' WHERE id = 'd344d880-ec8e-4c74-87ed-1d4537717675';

  -- User: Antonio Dela Cruz
  INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
  VALUES ('00000000-0000-0000-0000-000000000000', '7e41b395-c8aa-4900-ad00-094d3b72abcc', 'authenticated', 'authenticated', 'antonio.delacruz49@example.com', crypt('ocdrtxFE8KfpA1!', gen_salt('bf')), now(), '{"provider": "email", "providers": ["email"]}', '{"full_name": "Antonio Dela Cruz"}', now() - interval '82 days', now()) ON CONFLICT (id) DO NOTHING;
  UPDATE public.profiles SET phone = '+63 9127433821' WHERE id = '7e41b395-c8aa-4900-ad00-094d3b72abcc';


  -- Creating 500 Orders

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('eb73ee8c-9aa5-4cde-a4fd-737f28fbb42d', '63f3d871-11f2-4720-8edb-821f8276fa6f', 'Rosa Cruz', '+63 9710023969', '130 Quezon Ave, Makati City', 'Please leave at the lobby.', 125.00, 'delivered', now() - interval '58 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('eb73ee8c-9aa5-4cde-a4fd-737f28fbb42d', 1, 'Pork Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('252e3bcd-378f-4d5e-908e-079f079a4529', '274ce8da-c7fe-4ca8-9c0a-f4d5d524d0f1', 'Roberto Fernandez', '+63 9531683663', '610 Espana Blvd, Muntinlupa City', '', 125.00, 'delivered', now() - interval '25 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('252e3bcd-378f-4d5e-908e-079f079a4529', 1, 'Pork Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b0be5467-0f7b-41c6-88fb-18eb665b2a17', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '624 Ayala Ave, San Juan City', '', 190.00, 'delivered', now() - interval '15 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b0be5467-0f7b-41c6-88fb-18eb665b2a17', 2, 'Chicken Siomai', 25.00, 2),
  ('b0be5467-0f7b-41c6-88fb-18eb665b2a17', 1, 'Pork Siomai', 25.00, 2),
  ('b0be5467-0f7b-41c6-88fb-18eb665b2a17', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d94dc74f-e606-479d-8d9b-92a302414cb2', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '671 Ortigas Ave, Taguig City', 'Call upon arrival.', 165.00, 'delivered', now() - interval '48 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d94dc74f-e606-479d-8d9b-92a302414cb2', 10, 'Ube Siopao', 45.00, 2),
  ('d94dc74f-e606-479d-8d9b-92a302414cb2', 6, 'Japanese Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1e4277f6-da23-42cf-a774-5869a66c6b88', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '795 Aurora Blvd, Quezon City', '', 135.00, 'delivering', now() - interval '11 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1e4277f6-da23-42cf-a774-5869a66c6b88', 11, 'Red Bean Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7620e7c3-e9d5-4b67-9bf2-08b6a285e6a6', '4645611f-1d66-4780-899a-929d39d9a150', 'Antonio Gonzales', '+63 9669353021', '638 Quezon Ave, Mandaluyong City', 'Ring the doorbell.', 25.00, 'delivered', now() - interval '32 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7620e7c3-e9d5-4b67-9bf2-08b6a285e6a6', 4, 'Tuna Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b0c66c40-8506-4bf2-9045-c4d57690bc11', '3887a8d3-aaa2-429d-9481-1cd3d91a6b77', 'Francisco Rizal', '+63 9121526062', '969 Ortigas Ave, Quezon City', '', 235.00, 'pending', now() - interval '1 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b0c66c40-8506-4bf2-9045-c4d57690bc11', 4, 'Tuna Siomai', 25.00, 1),
  ('b0c66c40-8506-4bf2-9045-c4d57690bc11', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('b0c66c40-8506-4bf2-9045-c4d57690bc11', 10, 'Ube Siopao', 45.00, 1),
  ('b0c66c40-8506-4bf2-9045-c4d57690bc11', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1aff9d66-e8b4-4f9c-9f30-397e0329a759', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '266 Roxas Blvd, San Juan City', 'I need this by 12PM.', 295.00, 'cancelled', now() - interval '39 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1aff9d66-e8b4-4f9c-9f30-397e0329a759', 4, 'Tuna Siomai', 25.00, 1),
  ('1aff9d66-e8b4-4f9c-9f30-397e0329a759', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('1aff9d66-e8b4-4f9c-9f30-397e0329a759', 12, 'Custard Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2e994245-673c-4c03-b9bc-344879df355d', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '103 Ayala Ave, Muntinlupa City', 'Extra chili oil please.', 25.00, 'delivered', now() - interval '36 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2e994245-673c-4c03-b9bc-344879df355d', 6, 'Japanese Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('46771720-6585-4c35-9705-1ad20938963a', 'c315d8cd-0c4b-46b9-b31e-be08e1bc69e0', 'Pedro Rivera', '+63 9780746951', '269 Ortigas Ave, San Juan City', '', 490.00, 'delivered', now() - interval '30 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('46771720-6585-4c35-9705-1ad20938963a', 6, 'Japanese Siomai', 25.00, 4),
  ('46771720-6585-4c35-9705-1ad20938963a', 9, 'Choco Siopao', 45.00, 2),
  ('46771720-6585-4c35-9705-1ad20938963a', 1, 'Pork Siomai', 25.00, 3),
  ('46771720-6585-4c35-9705-1ad20938963a', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('319fac94-32be-4f98-9dbf-29a69b284075', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '252 Taft Ave, Paranaque City', '', 295.00, 'delivered', now() - interval '54 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('319fac94-32be-4f98-9dbf-29a69b284075', 3, 'Beef Siomai', 25.00, 2),
  ('319fac94-32be-4f98-9dbf-29a69b284075', 2, 'Chicken Siomai', 25.00, 4),
  ('319fac94-32be-4f98-9dbf-29a69b284075', 7, 'Asado Siopao', 45.00, 1),
  ('319fac94-32be-4f98-9dbf-29a69b284075', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('65d282b3-1734-4a3c-889c-40b6aae65667', 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135', 'Francisco Rizal', '+63 9826155165', '906 Ayala Ave, Manila City', 'Ring the doorbell.', 350.00, 'pending', now() - interval '13 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('65d282b3-1734-4a3c-889c-40b6aae65667', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('65d282b3-1734-4a3c-889c-40b6aae65667', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a8400fb1-192b-4be3-a362-aca76ef21e47', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '87 Aurora Blvd, San Juan City', 'Call upon arrival.', 45.00, 'cancelled', now() - interval '22 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a8400fb1-192b-4be3-a362-aca76ef21e47', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e6767426-fd5e-4db3-980d-72a601a508da', '2f65aaca-7f5d-4616-bf8d-728a2fc56101', 'Carmen Ocampo', '+63 9737662908', '731 Shaw Blvd, Taguig City', 'Leave at the gate.', 340.00, 'cancelled', now() - interval '27 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e6767426-fd5e-4db3-980d-72a601a508da', 5, 'Shark''s Fin Siomai', 25.00, 2),
  ('e6767426-fd5e-4db3-980d-72a601a508da', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('e6767426-fd5e-4db3-980d-72a601a508da', 3, 'Beef Siomai', 25.00, 4),
  ('e6767426-fd5e-4db3-980d-72a601a508da', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8460dbf8-4c81-4f7c-be62-1c9c7f6c0c33', 'ab7ba6a4-a4d3-449c-9f56-94969f427eae', 'Ana Dela Cruz', '+63 9403416038', '77 Shaw Blvd, Quezon City', '', 50.00, 'preparing', now() - interval '17 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8460dbf8-4c81-4f7c-be62-1c9c7f6c0c33', 5, 'Shark''s Fin Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('bd964bf2-fb86-49cd-82e7-7be69e19dcda', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '328 C5 Road, Pasig City', 'Please leave at the lobby.', 500.00, 'delivered', now() - interval '16 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('bd964bf2-fb86-49cd-82e7-7be69e19dcda', 12, 'Custard Siopao', 45.00, 3),
  ('bd964bf2-fb86-49cd-82e7-7be69e19dcda', 10, 'Ube Siopao', 45.00, 5),
  ('bd964bf2-fb86-49cd-82e7-7be69e19dcda', 7, 'Asado Siopao', 45.00, 2),
  ('bd964bf2-fb86-49cd-82e7-7be69e19dcda', 3, 'Beef Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('85a7f36d-6692-45da-ad52-f33543c49373', '63f3d871-11f2-4720-8edb-821f8276fa6f', 'Rosa Cruz', '+63 9710023969', '245 Taft Ave, Taguig City', 'Please leave at the lobby.', 45.00, 'delivering', now() - interval '15 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('85a7f36d-6692-45da-ad52-f33543c49373', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d4fb0b04-0196-4aae-8ef4-00c280beb010', '1e40f517-3427-4059-afe9-44e84e4257f5', 'Paul Gomez', '+63 9238955036', '649 Shaw Blvd, Manila City', '', 280.00, 'delivered', now() - interval '5 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d4fb0b04-0196-4aae-8ef4-00c280beb010', 3, 'Beef Siomai', 25.00, 4),
  ('d4fb0b04-0196-4aae-8ef4-00c280beb010', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('08f4a49a-d7c2-45bd-87ec-dca35bbded36', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '754 Espana Blvd, Manila City', '', 125.00, 'delivered', now() - interval '12 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('08f4a49a-d7c2-45bd-87ec-dca35bbded36', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('dcf19a5f-78f8-491c-a9ca-72a5cd89cd17', 'a7526055-3dfe-4aba-94fa-754491ac4cd3', 'Paul Bautista', '+63 9900749205', '852 Roxas Blvd, Muntinlupa City', 'Please leave at the lobby.', 350.00, 'delivering', now() - interval '30 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('dcf19a5f-78f8-491c-a9ca-72a5cd89cd17', 1, 'Pork Siomai', 25.00, 2),
  ('dcf19a5f-78f8-491c-a9ca-72a5cd89cd17', 2, 'Chicken Siomai', 25.00, 3),
  ('dcf19a5f-78f8-491c-a9ca-72a5cd89cd17', 11, 'Red Bean Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('06c04bcf-7494-430d-bd4b-e83c07bd939c', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '731 Aurora Blvd, Manila City', '', 315.00, 'preparing', now() - interval '10 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('06c04bcf-7494-430d-bd4b-e83c07bd939c', 12, 'Custard Siopao', 45.00, 3),
  ('06c04bcf-7494-430d-bd4b-e83c07bd939c', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('960f4748-ce2b-4fdd-b78f-1877dcc27fc0', 'c315d8cd-0c4b-46b9-b31e-be08e1bc69e0', 'Pedro Rivera', '+63 9780746951', '387 Espana Blvd, Taguig City', 'Ring the doorbell.', 100.00, 'delivered', now() - interval '33 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('960f4748-ce2b-4fdd-b78f-1877dcc27fc0', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('31cbcd94-414b-4810-a65b-72b03948a47c', '2ff4f21c-36cd-4cfe-94aa-ffd3cbfc859d', 'Ricardo Ramirez', '+63 9482882790', '482 Ortigas Ave, San Juan City', '', 70.00, 'delivered', now() - interval '8 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('31cbcd94-414b-4810-a65b-72b03948a47c', 1, 'Pork Siomai', 25.00, 1),
  ('31cbcd94-414b-4810-a65b-72b03948a47c', 8, 'Bola-Bola Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('dbc86d4f-eeb6-451a-acf7-e27e22e02adc', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '451 C5 Road, Muntinlupa City', '', 410.00, 'delivered', now() - interval '51 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('dbc86d4f-eeb6-451a-acf7-e27e22e02adc', 10, 'Ube Siopao', 45.00, 3),
  ('dbc86d4f-eeb6-451a-acf7-e27e22e02adc', 5, 'Shark''s Fin Siomai', 25.00, 2),
  ('dbc86d4f-eeb6-451a-acf7-e27e22e02adc', 12, 'Custard Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ae3d3a6e-34e5-42fd-b777-a9836b024095', 'b64da884-fcfd-4117-baaf-eea831514404', 'Mark Fernandez', '+63 9348587293', '599 C5 Road, Pasig City', '', 405.00, 'cancelled', now() - interval '23 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ae3d3a6e-34e5-42fd-b777-a9836b024095', 7, 'Asado Siopao', 45.00, 4),
  ('ae3d3a6e-34e5-42fd-b777-a9836b024095', 4, 'Tuna Siomai', 25.00, 1),
  ('ae3d3a6e-34e5-42fd-b777-a9836b024095', 2, 'Chicken Siomai', 25.00, 3),
  ('ae3d3a6e-34e5-42fd-b777-a9836b024095', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e4a6ea24-cc11-4139-857a-5a5f0e4ebb9e', 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135', 'Francisco Rizal', '+63 9826155165', '764 EDSA, San Juan City', 'I need this by 12PM.', 25.00, 'delivered', now() - interval '25 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e4a6ea24-cc11-4139-857a-5a5f0e4ebb9e', 3, 'Beef Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('19db79aa-eb70-4198-862d-1bbb3b70c52f', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '913 Shaw Blvd, Taguig City', '', 400.00, 'delivered', now() - interval '28 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('19db79aa-eb70-4198-862d-1bbb3b70c52f', 1, 'Pork Siomai', 25.00, 2),
  ('19db79aa-eb70-4198-862d-1bbb3b70c52f', 6, 'Japanese Siomai', 25.00, 5),
  ('19db79aa-eb70-4198-862d-1bbb3b70c52f', 10, 'Ube Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1d3afbd3-f26c-4ce0-a459-8b4b7cb66085', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '654 Ayala Ave, Quezon City', '', 405.00, 'pending', now() - interval '32 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1d3afbd3-f26c-4ce0-a459-8b4b7cb66085', 4, 'Tuna Siomai', 25.00, 2),
  ('1d3afbd3-f26c-4ce0-a459-8b4b7cb66085', 3, 'Beef Siomai', 25.00, 3),
  ('1d3afbd3-f26c-4ce0-a459-8b4b7cb66085', 11, 'Red Bean Siopao', 45.00, 4),
  ('1d3afbd3-f26c-4ce0-a459-8b4b7cb66085', 6, 'Japanese Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('24527fe4-c97a-46a9-aa85-f503248cd5b1', '9a246f71-53f2-4663-9e16-c0ef3da8fda3', 'Miguel Torres', '+63 9796155100', '630 Taft Ave, Mandaluyong City', '', 305.00, 'delivered', now() - interval '49 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('24527fe4-c97a-46a9-aa85-f503248cd5b1', 2, 'Chicken Siomai', 25.00, 1),
  ('24527fe4-c97a-46a9-aa85-f503248cd5b1', 6, 'Japanese Siomai', 25.00, 2),
  ('24527fe4-c97a-46a9-aa85-f503248cd5b1', 4, 'Tuna Siomai', 25.00, 2),
  ('24527fe4-c97a-46a9-aa85-f503248cd5b1', 12, 'Custard Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7b64b799-be96-47c3-8845-9adf1c697a76', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '329 Taft Ave, Taguig City', 'Leave at the gate.', 275.00, 'delivered', now() - interval '8 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7b64b799-be96-47c3-8845-9adf1c697a76', 4, 'Tuna Siomai', 25.00, 2),
  ('7b64b799-be96-47c3-8845-9adf1c697a76', 7, 'Asado Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('3cf35a3b-b258-4bbe-bda5-78b6681e1372', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '358 Ortigas Ave, Quezon City', '', 100.00, 'delivered', now() - interval '29 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('3cf35a3b-b258-4bbe-bda5-78b6681e1372', 1, 'Pork Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5bb5270a-6f2c-4b19-b8ec-35d477f5ee56', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '144 Ayala Ave, San Juan City', '', 555.00, 'delivered', now() - interval '17 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5bb5270a-6f2c-4b19-b8ec-35d477f5ee56', 3, 'Beef Siomai', 25.00, 4),
  ('5bb5270a-6f2c-4b19-b8ec-35d477f5ee56', 1, 'Pork Siomai', 25.00, 2),
  ('5bb5270a-6f2c-4b19-b8ec-35d477f5ee56', 11, 'Red Bean Siopao', 45.00, 5),
  ('5bb5270a-6f2c-4b19-b8ec-35d477f5ee56', 10, 'Ube Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('556dfec6-cb08-4f19-b611-3cba8c80270d', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '261 Roxas Blvd, Mandaluyong City', '', 340.00, 'delivered', now() - interval '41 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('556dfec6-cb08-4f19-b611-3cba8c80270d', 4, 'Tuna Siomai', 25.00, 3),
  ('556dfec6-cb08-4f19-b611-3cba8c80270d', 3, 'Beef Siomai', 25.00, 5),
  ('556dfec6-cb08-4f19-b611-3cba8c80270d', 10, 'Ube Siopao', 45.00, 2),
  ('556dfec6-cb08-4f19-b611-3cba8c80270d', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('620404e9-64d2-4d16-ae75-b16794799758', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '534 Quezon Ave, Taguig City', '', 135.00, 'delivered', now() - interval '12 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('620404e9-64d2-4d16-ae75-b16794799758', 8, 'Bola-Bola Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2258500d-4b35-4fb4-bbb4-8b96d5590183', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '956 Shaw Blvd, Paranaque City', 'No soy sauce.', 150.00, 'cancelled', now() - interval '48 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2258500d-4b35-4fb4-bbb4-8b96d5590183', 3, 'Beef Siomai', 25.00, 4),
  ('2258500d-4b35-4fb4-bbb4-8b96d5590183', 2, 'Chicken Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('056baffa-7fa0-4d76-9906-e6c2976cf7ad', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '214 Ayala Ave, San Juan City', 'Please leave at the lobby.', 125.00, 'cancelled', now() - interval '32 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('056baffa-7fa0-4d76-9906-e6c2976cf7ad', 2, 'Chicken Siomai', 25.00, 2),
  ('056baffa-7fa0-4d76-9906-e6c2976cf7ad', 4, 'Tuna Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('34b6bfa9-7326-4f33-9ba9-5e875597b5c4', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '786 Roxas Blvd, Taguig City', '', 205.00, 'delivered', now() - interval '49 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('34b6bfa9-7326-4f33-9ba9-5e875597b5c4', 1, 'Pork Siomai', 25.00, 1),
  ('34b6bfa9-7326-4f33-9ba9-5e875597b5c4', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5660479c-22a0-4918-9878-b0b742c9aec8', '2f65aaca-7f5d-4616-bf8d-728a2fc56101', 'Carmen Ocampo', '+63 9737662908', '295 Quezon Ave, Mandaluyong City', 'Ring the doorbell.', 125.00, 'delivered', now() - interval '7 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5660479c-22a0-4918-9878-b0b742c9aec8', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('152f8229-40f9-40e4-8c02-1a73e787b984', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '142 EDSA, San Juan City', '', 475.00, 'delivered', now() - interval '28 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('152f8229-40f9-40e4-8c02-1a73e787b984', 3, 'Beef Siomai', 25.00, 5),
  ('152f8229-40f9-40e4-8c02-1a73e787b984', 7, 'Asado Siopao', 45.00, 1),
  ('152f8229-40f9-40e4-8c02-1a73e787b984', 6, 'Japanese Siomai', 25.00, 5),
  ('152f8229-40f9-40e4-8c02-1a73e787b984', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2bcf7398-a5e8-4a5a-a5e3-ab0e577e31a2', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '339 Shaw Blvd, San Juan City', 'Please leave at the lobby.', 275.00, 'preparing', now() - interval '21 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2bcf7398-a5e8-4a5a-a5e3-ab0e577e31a2', 6, 'Japanese Siomai', 25.00, 1),
  ('2bcf7398-a5e8-4a5a-a5e3-ab0e577e31a2', 4, 'Tuna Siomai', 25.00, 1),
  ('2bcf7398-a5e8-4a5a-a5e3-ab0e577e31a2', 11, 'Red Bean Siopao', 45.00, 2),
  ('2bcf7398-a5e8-4a5a-a5e3-ab0e577e31a2', 12, 'Custard Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('eeedd811-d2de-43c7-8bc6-f01fa36466f2', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '691 Roxas Blvd, Manila City', '', 250.00, 'delivered', now() - interval '41 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('eeedd811-d2de-43c7-8bc6-f01fa36466f2', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('eeedd811-d2de-43c7-8bc6-f01fa36466f2', 7, 'Asado Siopao', 45.00, 1),
  ('eeedd811-d2de-43c7-8bc6-f01fa36466f2', 12, 'Custard Siopao', 45.00, 3),
  ('eeedd811-d2de-43c7-8bc6-f01fa36466f2', 6, 'Japanese Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('95401aa4-6cea-49bf-a3d1-f997faefe41f', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '394 Roxas Blvd, Manila City', 'No soy sauce.', 230.00, 'delivered', now() - interval '11 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('95401aa4-6cea-49bf-a3d1-f997faefe41f', 1, 'Pork Siomai', 25.00, 2),
  ('95401aa4-6cea-49bf-a3d1-f997faefe41f', 7, 'Asado Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ce741faf-6755-424c-b9a0-f4fddfad8b98', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '489 Quezon Ave, Paranaque City', 'Extra chili oil please.', 270.00, 'delivered', now() - interval '58 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ce741faf-6755-424c-b9a0-f4fddfad8b98', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('ce741faf-6755-424c-b9a0-f4fddfad8b98', 7, 'Asado Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0cde69fe-a6fb-42d8-a4a1-e1b6cf8b2d1d', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '785 Aurora Blvd, Paranaque City', 'No soy sauce.', 590.00, 'preparing', now() - interval '34 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0cde69fe-a6fb-42d8-a4a1-e1b6cf8b2d1d', 1, 'Pork Siomai', 25.00, 2),
  ('0cde69fe-a6fb-42d8-a4a1-e1b6cf8b2d1d', 12, 'Custard Siopao', 45.00, 2),
  ('0cde69fe-a6fb-42d8-a4a1-e1b6cf8b2d1d', 11, 'Red Bean Siopao', 45.00, 5),
  ('0cde69fe-a6fb-42d8-a4a1-e1b6cf8b2d1d', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('eb7ec9d1-dcac-4971-b92e-6a51203664be', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '703 Quezon Ave, Mandaluyong City', 'Leave at the gate.', 415.00, 'delivered', now() - interval '7 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('eb7ec9d1-dcac-4971-b92e-6a51203664be', 6, 'Japanese Siomai', 25.00, 4),
  ('eb7ec9d1-dcac-4971-b92e-6a51203664be', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('eb7ec9d1-dcac-4971-b92e-6a51203664be', 12, 'Custard Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('68f0b9a3-995c-4319-8e9c-423ee1c59dc5', '92548978-1693-44bd-b7b9-49a92393d843', 'Manuel Garcia', '+63 9838305407', '207 Shaw Blvd, Mandaluyong City', 'Please leave at the lobby.', 180.00, 'cancelled', now() - interval '34 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('68f0b9a3-995c-4319-8e9c-423ee1c59dc5', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('68f0b9a3-995c-4319-8e9c-423ee1c59dc5', 7, 'Asado Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8b0ae420-2613-457a-bb30-249212f93bf2', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '120 Taft Ave, Quezon City', 'Ring the doorbell.', 425.00, 'delivered', now() - interval '29 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8b0ae420-2613-457a-bb30-249212f93bf2', 9, 'Choco Siopao', 45.00, 5),
  ('8b0ae420-2613-457a-bb30-249212f93bf2', 3, 'Beef Siomai', 25.00, 2),
  ('8b0ae420-2613-457a-bb30-249212f93bf2', 6, 'Japanese Siomai', 25.00, 3),
  ('8b0ae420-2613-457a-bb30-249212f93bf2', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c767179c-2479-462d-9e04-f27a94c1ac39', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '277 Espana Blvd, Pasig City', 'I need this by 12PM.', 325.00, 'delivered', now() - interval '37 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c767179c-2479-462d-9e04-f27a94c1ac39', 1, 'Pork Siomai', 25.00, 4),
  ('c767179c-2479-462d-9e04-f27a94c1ac39', 12, 'Custard Siopao', 45.00, 2),
  ('c767179c-2479-462d-9e04-f27a94c1ac39', 11, 'Red Bean Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1390bcfe-7ca2-47c2-8f29-dd4935c92902', '2ff4f21c-36cd-4cfe-94aa-ffd3cbfc859d', 'Ricardo Ramirez', '+63 9482882790', '826 EDSA, San Juan City', '', 125.00, 'preparing', now() - interval '8 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1390bcfe-7ca2-47c2-8f29-dd4935c92902', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d7f4dee9-a923-4360-8ca6-ad587e0db81b', '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7', 'Pedro Rivera', '+63 9418752740', '972 Ayala Ave, San Juan City', 'Leave at the gate.', 395.00, 'delivered', now() - interval '43 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d7f4dee9-a923-4360-8ca6-ad587e0db81b', 4, 'Tuna Siomai', 25.00, 2),
  ('d7f4dee9-a923-4360-8ca6-ad587e0db81b', 3, 'Beef Siomai', 25.00, 3),
  ('d7f4dee9-a923-4360-8ca6-ad587e0db81b', 10, 'Ube Siopao', 45.00, 4),
  ('d7f4dee9-a923-4360-8ca6-ad587e0db81b', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('9ab71a5f-9746-4e95-a086-e72cbac9c22e', '7e6123c7-d5cc-453d-bd2e-f973966e77bb', 'Javier Cruz', '+63 9632767691', '171 Ortigas Ave, Quezon City', 'No soy sauce.', 430.00, 'delivered', now() - interval '46 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('9ab71a5f-9746-4e95-a086-e72cbac9c22e', 7, 'Asado Siopao', 45.00, 2),
  ('9ab71a5f-9746-4e95-a086-e72cbac9c22e', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('9ab71a5f-9746-4e95-a086-e72cbac9c22e', 9, 'Choco Siopao', 45.00, 4),
  ('9ab71a5f-9746-4e95-a086-e72cbac9c22e', 8, 'Bola-Bola Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('932626e0-884d-4e62-8e4e-338e7eb0e587', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '387 Espana Blvd, Makati City', 'I need this by 12PM.', 75.00, 'delivered', now() - interval '50 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('932626e0-884d-4e62-8e4e-338e7eb0e587', 6, 'Japanese Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b529ade2-2cfe-4abc-b02f-8440566186a9', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '346 Quezon Ave, Quezon City', '', 305.00, 'delivered', now() - interval '8 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b529ade2-2cfe-4abc-b02f-8440566186a9', 9, 'Choco Siopao', 45.00, 4),
  ('b529ade2-2cfe-4abc-b02f-8440566186a9', 3, 'Beef Siomai', 25.00, 3),
  ('b529ade2-2cfe-4abc-b02f-8440566186a9', 2, 'Chicken Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('251ca9c2-bcfa-45a2-bd20-652f0efe9b5d', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '865 Taft Ave, Muntinlupa City', '', 315.00, 'delivered', now() - interval '29 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('251ca9c2-bcfa-45a2-bd20-652f0efe9b5d', 3, 'Beef Siomai', 25.00, 5),
  ('251ca9c2-bcfa-45a2-bd20-652f0efe9b5d', 12, 'Custard Siopao', 45.00, 2),
  ('251ca9c2-bcfa-45a2-bd20-652f0efe9b5d', 6, 'Japanese Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ccdd2282-f0a3-4470-84e0-642cdbc7a65b', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '370 Aurora Blvd, Manila City', '', 170.00, 'delivered', now() - interval '12 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ccdd2282-f0a3-4470-84e0-642cdbc7a65b', 3, 'Beef Siomai', 25.00, 5),
  ('ccdd2282-f0a3-4470-84e0-642cdbc7a65b', 8, 'Bola-Bola Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('770beebe-f276-481d-8226-dae50b32bf2c', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '978 Taft Ave, Pasig City', '', 450.00, 'delivered', now() - interval '14 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('770beebe-f276-481d-8226-dae50b32bf2c', 10, 'Ube Siopao', 45.00, 5),
  ('770beebe-f276-481d-8226-dae50b32bf2c', 12, 'Custard Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('85dce41d-afcd-4c80-aebe-ea1b7f3bcb07', '92548978-1693-44bd-b7b9-49a92393d843', 'Manuel Garcia', '+63 9838305407', '970 Quezon Ave, San Juan City', 'Leave at the gate.', 270.00, 'pending', now() - interval '23 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('85dce41d-afcd-4c80-aebe-ea1b7f3bcb07', 9, 'Choco Siopao', 45.00, 2),
  ('85dce41d-afcd-4c80-aebe-ea1b7f3bcb07', 7, 'Asado Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a3d8be46-f9fb-4828-bb57-dddd9f33cb67', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '944 Quezon Ave, Pasig City', 'Extra chili oil please.', 360.00, 'delivered', now() - interval '16 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a3d8be46-f9fb-4828-bb57-dddd9f33cb67', 7, 'Asado Siopao', 45.00, 3),
  ('a3d8be46-f9fb-4828-bb57-dddd9f33cb67', 6, 'Japanese Siomai', 25.00, 4),
  ('a3d8be46-f9fb-4828-bb57-dddd9f33cb67', 1, 'Pork Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f1e0ce27-6faf-4dde-a345-7eeda1c71b38', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '147 Shaw Blvd, Taguig City', 'I need this by 12PM.', 125.00, 'delivered', now() - interval '18 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f1e0ce27-6faf-4dde-a345-7eeda1c71b38', 1, 'Pork Siomai', 25.00, 3),
  ('f1e0ce27-6faf-4dde-a345-7eeda1c71b38', 6, 'Japanese Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7c93ea42-293e-47e8-be7b-4052348c9bb4', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '661 Ortigas Ave, Quezon City', 'Call upon arrival.', 305.00, 'delivered', now() - interval '13 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7c93ea42-293e-47e8-be7b-4052348c9bb4', 1, 'Pork Siomai', 25.00, 5),
  ('7c93ea42-293e-47e8-be7b-4052348c9bb4', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8875804d-84b8-46fd-93ca-9f473aaaf310', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '37 Aurora Blvd, San Juan City', 'Leave at the gate.', 75.00, 'delivered', now() - interval '6 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8875804d-84b8-46fd-93ca-9f473aaaf310', 4, 'Tuna Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2d2d3876-b2dc-4655-a561-b15e59abc526', '28e041df-ed58-4f58-8423-fff80af4d5eb', 'Carmen Cruz', '+63 9642792171', '806 Ayala Ave, Muntinlupa City', '', 100.00, 'delivered', now() - interval '54 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2d2d3876-b2dc-4655-a561-b15e59abc526', 6, 'Japanese Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6ca2f598-335f-4e90-870b-4ca198c6c992', '51b4df1e-fedf-4ec8-97eb-8083c6f84012', 'Juan Gomez', '+63 9893300276', '629 Shaw Blvd, Paranaque City', '', 405.00, 'delivered', now() - interval '22 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6ca2f598-335f-4e90-870b-4ca198c6c992', 1, 'Pork Siomai', 25.00, 4),
  ('6ca2f598-335f-4e90-870b-4ca198c6c992', 3, 'Beef Siomai', 25.00, 1),
  ('6ca2f598-335f-4e90-870b-4ca198c6c992', 11, 'Red Bean Siopao', 45.00, 4),
  ('6ca2f598-335f-4e90-870b-4ca198c6c992', 6, 'Japanese Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('df5b0b87-8f14-4f54-9623-18348ec9c9a3', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '768 EDSA, Manila City', 'Please leave at the lobby.', 175.00, 'cancelled', now() - interval '23 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('df5b0b87-8f14-4f54-9623-18348ec9c9a3', 1, 'Pork Siomai', 25.00, 2),
  ('df5b0b87-8f14-4f54-9623-18348ec9c9a3', 2, 'Chicken Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8f44e738-6c1c-4898-8144-8feb3c448694', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '314 Ortigas Ave, Quezon City', 'No soy sauce.', 270.00, 'delivering', now() - interval '40 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8f44e738-6c1c-4898-8144-8feb3c448694', 5, 'Shark''s Fin Siomai', 25.00, 4),
  ('8f44e738-6c1c-4898-8144-8feb3c448694', 12, 'Custard Siopao', 45.00, 1),
  ('8f44e738-6c1c-4898-8144-8feb3c448694', 4, 'Tuna Siomai', 25.00, 1),
  ('8f44e738-6c1c-4898-8144-8feb3c448694', 3, 'Beef Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6f8f3465-0774-4ab0-a80a-77e60db38c0d', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '719 Roxas Blvd, Paranaque City', 'Leave at the gate.', 480.00, 'preparing', now() - interval '6 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6f8f3465-0774-4ab0-a80a-77e60db38c0d', 2, 'Chicken Siomai', 25.00, 5),
  ('6f8f3465-0774-4ab0-a80a-77e60db38c0d', 9, 'Choco Siopao', 45.00, 4),
  ('6f8f3465-0774-4ab0-a80a-77e60db38c0d', 6, 'Japanese Siomai', 25.00, 4),
  ('6f8f3465-0774-4ab0-a80a-77e60db38c0d', 4, 'Tuna Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0574688c-2e56-4534-8e2c-d17a76ab5465', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '981 Espana Blvd, Paranaque City', '', 125.00, 'delivered', now() - interval '38 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0574688c-2e56-4534-8e2c-d17a76ab5465', 3, 'Beef Siomai', 25.00, 1),
  ('0574688c-2e56-4534-8e2c-d17a76ab5465', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5232936a-e097-4ae9-b344-7966190d63ce', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '633 Quezon Ave, Taguig City', 'Extra chili oil please.', 75.00, 'delivered', now() - interval '47 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5232936a-e097-4ae9-b344-7966190d63ce', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('5232936a-e097-4ae9-b344-7966190d63ce', 3, 'Beef Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b0688b63-9d1b-4c4e-802a-fabfdb60efb4', '2f65aaca-7f5d-4616-bf8d-728a2fc56101', 'Carmen Ocampo', '+63 9737662908', '989 EDSA, Quezon City', 'Ring the doorbell.', 200.00, 'delivered', now() - interval '24 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b0688b63-9d1b-4c4e-802a-fabfdb60efb4', 4, 'Tuna Siomai', 25.00, 5),
  ('b0688b63-9d1b-4c4e-802a-fabfdb60efb4', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('9f092af2-98ad-4a11-affe-4832fa287662', '2f65aaca-7f5d-4616-bf8d-728a2fc56101', 'Carmen Ocampo', '+63 9737662908', '670 Roxas Blvd, Muntinlupa City', 'Ring the doorbell.', 140.00, 'delivered', now() - interval '19 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('9f092af2-98ad-4a11-affe-4832fa287662', 10, 'Ube Siopao', 45.00, 2),
  ('9f092af2-98ad-4a11-affe-4832fa287662', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2644cf36-9d5f-4d32-92bf-45e17262ceb7', '4645611f-1d66-4780-899a-929d39d9a150', 'Antonio Gonzales', '+63 9669353021', '608 C5 Road, Manila City', '', 215.00, 'cancelled', now() - interval '1 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2644cf36-9d5f-4d32-92bf-45e17262ceb7', 6, 'Japanese Siomai', 25.00, 2),
  ('2644cf36-9d5f-4d32-92bf-45e17262ceb7', 5, 'Shark''s Fin Siomai', 25.00, 3),
  ('2644cf36-9d5f-4d32-92bf-45e17262ceb7', 10, 'Ube Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d5a1e6ca-4119-4a34-81ee-0fe53c046995', 'c315d8cd-0c4b-46b9-b31e-be08e1bc69e0', 'Pedro Rivera', '+63 9780746951', '240 Aurora Blvd, Taguig City', 'Call upon arrival.', 395.00, 'preparing', now() - interval '31 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d5a1e6ca-4119-4a34-81ee-0fe53c046995', 7, 'Asado Siopao', 45.00, 1),
  ('d5a1e6ca-4119-4a34-81ee-0fe53c046995', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('d5a1e6ca-4119-4a34-81ee-0fe53c046995', 6, 'Japanese Siomai', 25.00, 5),
  ('d5a1e6ca-4119-4a34-81ee-0fe53c046995', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6a403d2a-b579-433e-8a25-669b83feab8d', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '443 Quezon Ave, Manila City', '', 390.00, 'delivered', now() - interval '58 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6a403d2a-b579-433e-8a25-669b83feab8d', 9, 'Choco Siopao', 45.00, 2),
  ('6a403d2a-b579-433e-8a25-669b83feab8d', 12, 'Custard Siopao', 45.00, 5),
  ('6a403d2a-b579-433e-8a25-669b83feab8d', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d09e7eac-0948-4c93-9d2d-f0a743257346', '7e6123c7-d5cc-453d-bd2e-f973966e77bb', 'Javier Cruz', '+63 9632767691', '333 Taft Ave, Taguig City', 'Call upon arrival.', 325.00, 'delivered', now() - interval '21 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d09e7eac-0948-4c93-9d2d-f0a743257346', 1, 'Pork Siomai', 25.00, 1),
  ('d09e7eac-0948-4c93-9d2d-f0a743257346', 4, 'Tuna Siomai', 25.00, 2),
  ('d09e7eac-0948-4c93-9d2d-f0a743257346', 3, 'Beef Siomai', 25.00, 1),
  ('d09e7eac-0948-4c93-9d2d-f0a743257346', 10, 'Ube Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e0cf511c-9936-427f-acc6-a92648c4c4a5', '905e182d-e96d-4ca8-9991-3a94f6d83373', 'Ana Mendoza', '+63 9568517643', '49 Espana Blvd, Pasig City', 'Extra chili oil please.', 265.00, 'cancelled', now() - interval '33 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e0cf511c-9936-427f-acc6-a92648c4c4a5', 6, 'Japanese Siomai', 25.00, 2),
  ('e0cf511c-9936-427f-acc6-a92648c4c4a5', 2, 'Chicken Siomai', 25.00, 5),
  ('e0cf511c-9936-427f-acc6-a92648c4c4a5', 9, 'Choco Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('36ab8fea-c61f-4590-8940-c02578b75ab7', '2ff4f21c-36cd-4cfe-94aa-ffd3cbfc859d', 'Ricardo Ramirez', '+63 9482882790', '657 Quezon Ave, Muntinlupa City', 'Extra chili oil please.', 360.00, 'pending', now() - interval '33 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('36ab8fea-c61f-4590-8940-c02578b75ab7', 11, 'Red Bean Siopao', 45.00, 5),
  ('36ab8fea-c61f-4590-8940-c02578b75ab7', 10, 'Ube Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('58f2d905-3fe9-481a-b512-b9a4dc55b222', '7e41b395-c8aa-4900-ad00-094d3b72abcc', 'Antonio Dela Cruz', '+63 9127433821', '255 Roxas Blvd, Quezon City', 'Call upon arrival.', 100.00, 'delivered', now() - interval '53 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('58f2d905-3fe9-481a-b512-b9a4dc55b222', 6, 'Japanese Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a08502a4-edcd-4460-9daf-2bc24a7460bb', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '978 Roxas Blvd, Taguig City', '', 235.00, 'delivered', now() - interval '11 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a08502a4-edcd-4460-9daf-2bc24a7460bb', 4, 'Tuna Siomai', 25.00, 4),
  ('a08502a4-edcd-4460-9daf-2bc24a7460bb', 12, 'Custard Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('76abdf58-c512-482b-9495-6f716691ba8e', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '621 Quezon Ave, Makati City', '', 150.00, 'delivering', now() - interval '15 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('76abdf58-c512-482b-9495-6f716691ba8e', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('76abdf58-c512-482b-9495-6f716691ba8e', 2, 'Chicken Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5ffe5c01-ff87-4c18-8991-55f0f917accb', '905e182d-e96d-4ca8-9991-3a94f6d83373', 'Ana Mendoza', '+63 9568517643', '282 Espana Blvd, Muntinlupa City', 'Leave at the gate.', 135.00, 'pending', now() - interval '41 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5ffe5c01-ff87-4c18-8991-55f0f917accb', 11, 'Red Bean Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d9a473bb-6712-4a31-b1f7-6506ba69adc8', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '688 Shaw Blvd, Mandaluyong City', 'Please leave at the lobby.', 100.00, 'delivering', now() - interval '57 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d9a473bb-6712-4a31-b1f7-6506ba69adc8', 5, 'Shark''s Fin Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('99ab1363-b56e-4efa-b475-8c1221d88677', '92548978-1693-44bd-b7b9-49a92393d843', 'Manuel Garcia', '+63 9838305407', '129 Taft Ave, Muntinlupa City', 'Please leave at the lobby.', 285.00, 'delivered', now() - interval '2 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('99ab1363-b56e-4efa-b475-8c1221d88677', 9, 'Choco Siopao', 45.00, 2),
  ('99ab1363-b56e-4efa-b475-8c1221d88677', 3, 'Beef Siomai', 25.00, 4),
  ('99ab1363-b56e-4efa-b475-8c1221d88677', 11, 'Red Bean Siopao', 45.00, 1),
  ('99ab1363-b56e-4efa-b475-8c1221d88677', 2, 'Chicken Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2307f551-6b0e-4683-9f04-7bdfc235639d', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '257 Roxas Blvd, Paranaque City', 'Please leave at the lobby.', 520.00, 'delivered', now() - interval '51 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2307f551-6b0e-4683-9f04-7bdfc235639d', 11, 'Red Bean Siopao', 45.00, 3),
  ('2307f551-6b0e-4683-9f04-7bdfc235639d', 10, 'Ube Siopao', 45.00, 5),
  ('2307f551-6b0e-4683-9f04-7bdfc235639d', 7, 'Asado Siopao', 45.00, 3),
  ('2307f551-6b0e-4683-9f04-7bdfc235639d', 2, 'Chicken Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b54b1b81-4512-4021-9140-047aa5f0388d', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '8 C5 Road, Taguig City', 'Please leave at the lobby.', 520.00, 'delivered', now() - interval '15 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b54b1b81-4512-4021-9140-047aa5f0388d', 12, 'Custard Siopao', 45.00, 2),
  ('b54b1b81-4512-4021-9140-047aa5f0388d', 9, 'Choco Siopao', 45.00, 4),
  ('b54b1b81-4512-4021-9140-047aa5f0388d', 3, 'Beef Siomai', 25.00, 5),
  ('b54b1b81-4512-4021-9140-047aa5f0388d', 2, 'Chicken Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7cb9c79c-9181-4911-8b14-65053aae9437', 'b64da884-fcfd-4117-baaf-eea831514404', 'Mark Fernandez', '+63 9348587293', '618 Shaw Blvd, Quezon City', 'I need this by 12PM.', 50.00, 'cancelled', now() - interval '13 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7cb9c79c-9181-4911-8b14-65053aae9437', 3, 'Beef Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('fb6c9687-143a-477d-8b69-88e6325f162e', '3887a8d3-aaa2-429d-9481-1cd3d91a6b77', 'Francisco Rizal', '+63 9121526062', '376 Taft Ave, Manila City', 'Please leave at the lobby.', 300.00, 'delivered', now() - interval '33 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('fb6c9687-143a-477d-8b69-88e6325f162e', 4, 'Tuna Siomai', 25.00, 3),
  ('fb6c9687-143a-477d-8b69-88e6325f162e', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('fb6c9687-143a-477d-8b69-88e6325f162e', 12, 'Custard Siopao', 45.00, 1),
  ('fb6c9687-143a-477d-8b69-88e6325f162e', 9, 'Choco Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('24b38193-ca65-4359-90cf-2b8ce4d5b6c9', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '950 Espana Blvd, Paranaque City', 'Please leave at the lobby.', 100.00, 'delivered', now() - interval '43 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('24b38193-ca65-4359-90cf-2b8ce4d5b6c9', 1, 'Pork Siomai', 25.00, 2),
  ('24b38193-ca65-4359-90cf-2b8ce4d5b6c9', 5, 'Shark''s Fin Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0bde12a4-8afa-4f3a-b4b6-2559563f9448', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '908 Roxas Blvd, Muntinlupa City', 'Please leave at the lobby.', 350.00, 'delivered', now() - interval '1 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0bde12a4-8afa-4f3a-b4b6-2559563f9448', 12, 'Custard Siopao', 45.00, 5),
  ('0bde12a4-8afa-4f3a-b4b6-2559563f9448', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('06f69d01-bccf-497d-9424-322565e66726', '7e41b395-c8aa-4900-ad00-094d3b72abcc', 'Antonio Dela Cruz', '+63 9127433821', '478 Espana Blvd, Taguig City', 'Please leave at the lobby.', 455.00, 'preparing', now() - interval '32 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('06f69d01-bccf-497d-9424-322565e66726', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('06f69d01-bccf-497d-9424-322565e66726', 1, 'Pork Siomai', 25.00, 2),
  ('06f69d01-bccf-497d-9424-322565e66726', 9, 'Choco Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('94a980d1-8820-4f28-a3d2-e2805fb8b049', '92548978-1693-44bd-b7b9-49a92393d843', 'Manuel Garcia', '+63 9838305407', '798 EDSA, San Juan City', 'Extra chili oil please.', 270.00, 'preparing', now() - interval '19 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('94a980d1-8820-4f28-a3d2-e2805fb8b049', 9, 'Choco Siopao', 45.00, 1),
  ('94a980d1-8820-4f28-a3d2-e2805fb8b049', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8adde670-5e4b-43a4-acc3-96af827d8c4e', '0a8fd3f2-bc60-4ed7-8c38-168c93c15641', 'Ricardo Garcia', '+63 9377602496', '192 Shaw Blvd, Makati City', '', 485.00, 'cancelled', now() - interval '22 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8adde670-5e4b-43a4-acc3-96af827d8c4e', 11, 'Red Bean Siopao', 45.00, 1),
  ('8adde670-5e4b-43a4-acc3-96af827d8c4e', 12, 'Custard Siopao', 45.00, 3),
  ('8adde670-5e4b-43a4-acc3-96af827d8c4e', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('8adde670-5e4b-43a4-acc3-96af827d8c4e', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5ea463e3-8b0e-4c5e-b1f0-23b950507ada', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '877 Aurora Blvd, Pasig City', '', 250.00, 'preparing', now() - interval '30 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5ea463e3-8b0e-4c5e-b1f0-23b950507ada', 3, 'Beef Siomai', 25.00, 1),
  ('5ea463e3-8b0e-4c5e-b1f0-23b950507ada', 7, 'Asado Siopao', 45.00, 3),
  ('5ea463e3-8b0e-4c5e-b1f0-23b950507ada', 11, 'Red Bean Siopao', 45.00, 1),
  ('5ea463e3-8b0e-4c5e-b1f0-23b950507ada', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c1b5c061-202a-45f1-bb9b-4582214138df', '4ee87f43-0284-4d16-869a-6996b969cf28', 'Jose Cruz', '+63 9319292746', '477 Espana Blvd, Manila City', 'Ring the doorbell.', 275.00, 'pending', now() - interval '58 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c1b5c061-202a-45f1-bb9b-4582214138df', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('c1b5c061-202a-45f1-bb9b-4582214138df', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('c1b5c061-202a-45f1-bb9b-4582214138df', 4, 'Tuna Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('426bb612-f4c3-440c-92c7-1c779f20c02c', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '531 Quezon Ave, Manila City', '', 95.00, 'delivered', now() - interval '46 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('426bb612-f4c3-440c-92c7-1c779f20c02c', 9, 'Choco Siopao', 45.00, 1),
  ('426bb612-f4c3-440c-92c7-1c779f20c02c', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('afed5a85-a2cc-4cbf-9eee-952fd39b01fc', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '99 EDSA, Quezon City', 'I need this by 12PM.', 75.00, 'delivered', now() - interval '53 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('afed5a85-a2cc-4cbf-9eee-952fd39b01fc', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b255c309-769e-44bc-952f-321328f41c06', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '711 Ayala Ave, Makati City', '', 280.00, 'delivered', now() - interval '21 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b255c309-769e-44bc-952f-321328f41c06', 3, 'Beef Siomai', 25.00, 4),
  ('b255c309-769e-44bc-952f-321328f41c06', 7, 'Asado Siopao', 45.00, 2),
  ('b255c309-769e-44bc-952f-321328f41c06', 10, 'Ube Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e546e2b2-11be-4052-aa17-b0ea924cb66d', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '928 C5 Road, Paranaque City', 'I need this by 12PM.', 50.00, 'delivered', now() - interval '16 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e546e2b2-11be-4052-aa17-b0ea924cb66d', 5, 'Shark''s Fin Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5284c332-4a16-4fc9-8a60-fb8ffe40b15a', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '962 Quezon Ave, Taguig City', '', 275.00, 'delivered', now() - interval '31 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5284c332-4a16-4fc9-8a60-fb8ffe40b15a', 1, 'Pork Siomai', 25.00, 2),
  ('5284c332-4a16-4fc9-8a60-fb8ffe40b15a', 10, 'Ube Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('be6d56ea-f235-4746-afce-da285fbe4b74', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '548 Espana Blvd, Quezon City', '', 100.00, 'delivered', now() - interval '19 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('be6d56ea-f235-4746-afce-da285fbe4b74', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('188afd4a-9bb4-45bd-a2f9-31cf75fda763', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '147 Taft Ave, Makati City', '', 480.00, 'delivered', now() - interval '30 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('188afd4a-9bb4-45bd-a2f9-31cf75fda763', 2, 'Chicken Siomai', 25.00, 3),
  ('188afd4a-9bb4-45bd-a2f9-31cf75fda763', 9, 'Choco Siopao', 45.00, 5),
  ('188afd4a-9bb4-45bd-a2f9-31cf75fda763', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ccb38080-1830-4e89-b830-ad54398f29fd', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'Juan Rivera', '+63 9634614196', '290 Aurora Blvd, Paranaque City', 'Call upon arrival.', 175.00, 'delivered', now() - interval '21 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ccb38080-1830-4e89-b830-ad54398f29fd', 1, 'Pork Siomai', 25.00, 2),
  ('ccb38080-1830-4e89-b830-ad54398f29fd', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c0fc19d5-6819-4ff7-ba04-baa842c34c8c', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '605 Espana Blvd, Quezon City', 'No soy sauce.', 255.00, 'delivered', now() - interval '52 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c0fc19d5-6819-4ff7-ba04-baa842c34c8c', 11, 'Red Bean Siopao', 45.00, 4),
  ('c0fc19d5-6819-4ff7-ba04-baa842c34c8c', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f5371fc0-0fdf-4f5c-8bea-0165cb7be174', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'Juan Rivera', '+63 9634614196', '245 Ortigas Ave, Makati City', '', 290.00, 'cancelled', now() - interval '58 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f5371fc0-0fdf-4f5c-8bea-0165cb7be174', 3, 'Beef Siomai', 25.00, 5),
  ('f5371fc0-0fdf-4f5c-8bea-0165cb7be174', 4, 'Tuna Siomai', 25.00, 3),
  ('f5371fc0-0fdf-4f5c-8bea-0165cb7be174', 7, 'Asado Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ba1e8dcb-05ab-432a-9afd-66931a4bcc30', '2ff4f21c-36cd-4cfe-94aa-ffd3cbfc859d', 'Ricardo Ramirez', '+63 9482882790', '301 Ortigas Ave, Quezon City', 'No soy sauce.', 320.00, 'delivered', now() - interval '39 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ba1e8dcb-05ab-432a-9afd-66931a4bcc30', 3, 'Beef Siomai', 25.00, 2),
  ('ba1e8dcb-05ab-432a-9afd-66931a4bcc30', 7, 'Asado Siopao', 45.00, 5),
  ('ba1e8dcb-05ab-432a-9afd-66931a4bcc30', 8, 'Bola-Bola Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('da75958e-d221-4db4-8603-781db1b3bcac', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '52 Shaw Blvd, Manila City', '', 310.00, 'delivered', now() - interval '23 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('da75958e-d221-4db4-8603-781db1b3bcac', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('da75958e-d221-4db4-8603-781db1b3bcac', 2, 'Chicken Siomai', 25.00, 2),
  ('da75958e-d221-4db4-8603-781db1b3bcac', 4, 'Tuna Siomai', 25.00, 5),
  ('da75958e-d221-4db4-8603-781db1b3bcac', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5c236599-c81a-47ae-a49a-22942952ab05', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '464 C5 Road, Quezon City', '', 315.00, 'cancelled', now() - interval '33 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5c236599-c81a-47ae-a49a-22942952ab05', 10, 'Ube Siopao', 45.00, 2),
  ('5c236599-c81a-47ae-a49a-22942952ab05', 11, 'Red Bean Siopao', 45.00, 1),
  ('5c236599-c81a-47ae-a49a-22942952ab05', 12, 'Custard Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('68d64fe1-4318-4006-82ad-a76a744d4199', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '171 EDSA, Taguig City', '', 455.00, 'delivering', now() - interval '1 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('68d64fe1-4318-4006-82ad-a76a744d4199', 12, 'Custard Siopao', 45.00, 5),
  ('68d64fe1-4318-4006-82ad-a76a744d4199', 9, 'Choco Siopao', 45.00, 4),
  ('68d64fe1-4318-4006-82ad-a76a744d4199', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6c81ddbf-9e67-4506-bcbf-0d4c58e821d6', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '797 Aurora Blvd, Mandaluyong City', '', 200.00, 'delivered', now() - interval '26 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6c81ddbf-9e67-4506-bcbf-0d4c58e821d6', 5, 'Shark''s Fin Siomai', 25.00, 5),
  ('6c81ddbf-9e67-4506-bcbf-0d4c58e821d6', 6, 'Japanese Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('19fa4b47-11d1-4645-b603-3ac479a2e6fc', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '358 EDSA, San Juan City', 'I need this by 12PM.', 135.00, 'cancelled', now() - interval '20 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('19fa4b47-11d1-4645-b603-3ac479a2e6fc', 10, 'Ube Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('9eeb493c-1001-4a66-9818-8016d6f3dd57', 'ca4cc8a1-6358-46ad-89d5-58530725185b', 'Luis Cruz', '+63 9601569482', '338 Quezon Ave, Mandaluyong City', 'Leave at the gate.', 180.00, 'delivered', now() - interval '38 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('9eeb493c-1001-4a66-9818-8016d6f3dd57', 12, 'Custard Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('aebdc2ec-498e-41f7-9c4c-38a2ccd16c92', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '766 Espana Blvd, San Juan City', '', 225.00, 'delivered', now() - interval '58 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('aebdc2ec-498e-41f7-9c4c-38a2ccd16c92', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e838a5b7-2cd9-44ba-9254-4f919bdbf44a', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '142 Ayala Ave, Quezon City', '', 175.00, 'preparing', now() - interval '55 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e838a5b7-2cd9-44ba-9254-4f919bdbf44a', 3, 'Beef Siomai', 25.00, 4),
  ('e838a5b7-2cd9-44ba-9254-4f919bdbf44a', 4, 'Tuna Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4c5c9c6d-1539-4518-99b6-ac75d852b949', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '18 Ortigas Ave, Paranaque City', '', 405.00, 'delivered', now() - interval '13 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4c5c9c6d-1539-4518-99b6-ac75d852b949', 1, 'Pork Siomai', 25.00, 4),
  ('4c5c9c6d-1539-4518-99b6-ac75d852b949', 11, 'Red Bean Siopao', 45.00, 4),
  ('4c5c9c6d-1539-4518-99b6-ac75d852b949', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7d0731ea-6440-4113-85e7-8a0c84bd016c', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '765 Ayala Ave, San Juan City', 'Ring the doorbell.', 375.00, 'cancelled', now() - interval '26 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7d0731ea-6440-4113-85e7-8a0c84bd016c', 11, 'Red Bean Siopao', 45.00, 4),
  ('7d0731ea-6440-4113-85e7-8a0c84bd016c', 6, 'Japanese Siomai', 25.00, 3),
  ('7d0731ea-6440-4113-85e7-8a0c84bd016c', 4, 'Tuna Siomai', 25.00, 3),
  ('7d0731ea-6440-4113-85e7-8a0c84bd016c', 7, 'Asado Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ca84570f-ed6e-4e2a-afc0-f29c61c226c1', '301e3595-c9e6-4712-9bc5-c986d353a751', 'Mark Dela Cruz', '+63 9523535959', '437 Ayala Ave, San Juan City', 'Please leave at the lobby.', 350.00, 'delivered', now() - interval '40 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ca84570f-ed6e-4e2a-afc0-f29c61c226c1', 10, 'Ube Siopao', 45.00, 1),
  ('ca84570f-ed6e-4e2a-afc0-f29c61c226c1', 2, 'Chicken Siomai', 25.00, 5),
  ('ca84570f-ed6e-4e2a-afc0-f29c61c226c1', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1b822c72-174a-410f-b93f-d1b134cabadd', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '44 Roxas Blvd, Muntinlupa City', 'Please leave at the lobby.', 225.00, 'delivered', now() - interval '32 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1b822c72-174a-410f-b93f-d1b134cabadd', 11, 'Red Bean Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e513f8fa-5232-4116-81f0-3ef14e17baf5', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '829 Aurora Blvd, Paranaque City', 'Ring the doorbell.', 150.00, 'delivered', now() - interval '51 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e513f8fa-5232-4116-81f0-3ef14e17baf5', 3, 'Beef Siomai', 25.00, 2),
  ('e513f8fa-5232-4116-81f0-3ef14e17baf5', 2, 'Chicken Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ca2c2441-2798-43a1-870c-aaec4d88167d', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '259 Roxas Blvd, Quezon City', 'I need this by 12PM.', 70.00, 'delivered', now() - interval '49 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ca2c2441-2798-43a1-870c-aaec4d88167d', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('ca2c2441-2798-43a1-870c-aaec4d88167d', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('60a7dd1a-761e-4826-be02-3e3d1a7b5187', 'ca4cc8a1-6358-46ad-89d5-58530725185b', 'Luis Cruz', '+63 9601569482', '766 Shaw Blvd, Quezon City', 'Please leave at the lobby.', 350.00, 'delivered', now() - interval '1 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('60a7dd1a-761e-4826-be02-3e3d1a7b5187', 9, 'Choco Siopao', 45.00, 5),
  ('60a7dd1a-761e-4826-be02-3e3d1a7b5187', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('dc54b57c-7545-4bb6-ae75-ed1a99557daa', '301e3595-c9e6-4712-9bc5-c986d353a751', 'Mark Dela Cruz', '+63 9523535959', '152 Ayala Ave, Makati City', 'I need this by 12PM.', 350.00, 'delivered', now() - interval '32 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('dc54b57c-7545-4bb6-ae75-ed1a99557daa', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('dc54b57c-7545-4bb6-ae75-ed1a99557daa', 11, 'Red Bean Siopao', 45.00, 4),
  ('dc54b57c-7545-4bb6-ae75-ed1a99557daa', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b454b1c4-190a-4b48-b915-6576cdf4c0eb', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'Juan Rivera', '+63 9634614196', '854 Roxas Blvd, San Juan City', '', 225.00, 'delivering', now() - interval '26 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b454b1c4-190a-4b48-b915-6576cdf4c0eb', 4, 'Tuna Siomai', 25.00, 5),
  ('b454b1c4-190a-4b48-b915-6576cdf4c0eb', 1, 'Pork Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0b600135-c554-41a6-99f3-e4c6375bf192', '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7', 'Pedro Rivera', '+63 9418752740', '455 Roxas Blvd, Manila City', 'Call upon arrival.', 135.00, 'delivered', now() - interval '10 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0b600135-c554-41a6-99f3-e4c6375bf192', 12, 'Custard Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b8e87892-7361-41fc-a27b-fa24eeb1f1e5', '0a8fd3f2-bc60-4ed7-8c38-168c93c15641', 'Ricardo Garcia', '+63 9377602496', '275 Quezon Ave, Taguig City', '', 530.00, 'delivered', now() - interval '44 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b8e87892-7361-41fc-a27b-fa24eeb1f1e5', 10, 'Ube Siopao', 45.00, 5),
  ('b8e87892-7361-41fc-a27b-fa24eeb1f1e5', 7, 'Asado Siopao', 45.00, 4),
  ('b8e87892-7361-41fc-a27b-fa24eeb1f1e5', 1, 'Pork Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('736ac0b7-0fba-4a7c-b977-4407214178e6', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '302 EDSA, Muntinlupa City', 'Ring the doorbell.', 125.00, 'delivered', now() - interval '41 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('736ac0b7-0fba-4a7c-b977-4407214178e6', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8698a2ee-548b-423a-8b9a-91f2a7ec98a2', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '966 Roxas Blvd, Muntinlupa City', 'I need this by 12PM.', 570.00, 'pending', now() - interval '27 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8698a2ee-548b-423a-8b9a-91f2a7ec98a2', 9, 'Choco Siopao', 45.00, 4),
  ('8698a2ee-548b-423a-8b9a-91f2a7ec98a2', 7, 'Asado Siopao', 45.00, 2),
  ('8698a2ee-548b-423a-8b9a-91f2a7ec98a2', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('8698a2ee-548b-423a-8b9a-91f2a7ec98a2', 2, 'Chicken Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b14b482d-9efb-4dae-be22-e834df50e5c4', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '94 Shaw Blvd, Paranaque City', '', 150.00, 'delivered', now() - interval '42 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b14b482d-9efb-4dae-be22-e834df50e5c4', 2, 'Chicken Siomai', 25.00, 4),
  ('b14b482d-9efb-4dae-be22-e834df50e5c4', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('14b1a52e-435e-477a-bb0e-bf896a1fb5cf', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '589 Aurora Blvd, San Juan City', 'Call upon arrival.', 270.00, 'preparing', now() - interval '48 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('14b1a52e-435e-477a-bb0e-bf896a1fb5cf', 10, 'Ube Siopao', 45.00, 5),
  ('14b1a52e-435e-477a-bb0e-bf896a1fb5cf', 8, 'Bola-Bola Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d5de82fe-ca96-430f-a4cd-4f0c9071813d', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '257 Roxas Blvd, Taguig City', '', 285.00, 'delivered', now() - interval '21 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d5de82fe-ca96-430f-a4cd-4f0c9071813d', 3, 'Beef Siomai', 25.00, 5),
  ('d5de82fe-ca96-430f-a4cd-4f0c9071813d', 7, 'Asado Siopao', 45.00, 3),
  ('d5de82fe-ca96-430f-a4cd-4f0c9071813d', 1, 'Pork Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8cbb1a40-c84f-4031-8f2e-6fa8e1e950bf', '1e40f517-3427-4059-afe9-44e84e4257f5', 'Paul Gomez', '+63 9238955036', '517 EDSA, Paranaque City', '', 270.00, 'delivered', now() - interval '13 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8cbb1a40-c84f-4031-8f2e-6fa8e1e950bf', 9, 'Choco Siopao', 45.00, 5),
  ('8cbb1a40-c84f-4031-8f2e-6fa8e1e950bf', 10, 'Ube Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0b4b9dbc-c6f1-4448-97df-874b2c4d94a9', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '833 C5 Road, Quezon City', 'Extra chili oil please.', 125.00, 'delivered', now() - interval '1 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0b4b9dbc-c6f1-4448-97df-874b2c4d94a9', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('cdb4a0ae-24d4-4567-86b0-5d98304cea52', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '494 C5 Road, Taguig City', 'Leave at the gate.', 305.00, 'delivered', now() - interval '26 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('cdb4a0ae-24d4-4567-86b0-5d98304cea52', 2, 'Chicken Siomai', 25.00, 5),
  ('cdb4a0ae-24d4-4567-86b0-5d98304cea52', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('aa156ee3-f810-49d3-964b-8c32d3b7b583', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '238 Aurora Blvd, Pasig City', '', 345.00, 'delivered', now() - interval '49 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('aa156ee3-f810-49d3-964b-8c32d3b7b583', 9, 'Choco Siopao', 45.00, 4),
  ('aa156ee3-f810-49d3-964b-8c32d3b7b583', 3, 'Beef Siomai', 25.00, 3),
  ('aa156ee3-f810-49d3-964b-8c32d3b7b583', 12, 'Custard Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f422e231-7df8-4996-9b08-30d91f1fa933', '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7', 'Pedro Rivera', '+63 9418752740', '722 Espana Blvd, Makati City', 'Call upon arrival.', 250.00, 'delivered', now() - interval '16 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f422e231-7df8-4996-9b08-30d91f1fa933', 2, 'Chicken Siomai', 25.00, 3),
  ('f422e231-7df8-4996-9b08-30d91f1fa933', 6, 'Japanese Siomai', 25.00, 4),
  ('f422e231-7df8-4996-9b08-30d91f1fa933', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e412cd9a-321d-4a81-99f2-2322307d5d85', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '217 C5 Road, Muntinlupa City', '', 75.00, 'delivered', now() - interval '22 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e412cd9a-321d-4a81-99f2-2322307d5d85', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0e9cf489-3bd4-4e96-82c1-1741ceaf9436', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'Juan Rivera', '+63 9634614196', '33 Roxas Blvd, Quezon City', 'Ring the doorbell.', 50.00, 'delivered', now() - interval '17 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0e9cf489-3bd4-4e96-82c1-1741ceaf9436', 6, 'Japanese Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f6b510c4-d8e6-4127-b50d-273a3f8643a6', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '608 C5 Road, Makati City', '', 75.00, 'delivered', now() - interval '4 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f6b510c4-d8e6-4127-b50d-273a3f8643a6', 2, 'Chicken Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('bda9e652-91e3-4c7f-a6b7-d2b471629b9c', '3beb0cee-2839-445b-9bb1-a4d4d5c9bab9', 'Carmen Perez', '+63 9846533716', '957 Ortigas Ave, Taguig City', '', 280.00, 'delivered', now() - interval '51 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('bda9e652-91e3-4c7f-a6b7-d2b471629b9c', 9, 'Choco Siopao', 45.00, 4),
  ('bda9e652-91e3-4c7f-a6b7-d2b471629b9c', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1b4a54ce-7a7d-47a1-8ba5-d998f3825680', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '757 Ayala Ave, Paranaque City', 'Extra chili oil please.', 25.00, 'delivered', now() - interval '58 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1b4a54ce-7a7d-47a1-8ba5-d998f3825680', 6, 'Japanese Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('17a656d5-eff3-4701-99c7-34375729c5bd', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '473 Shaw Blvd, Pasig City', 'Call upon arrival.', 540.00, 'delivered', now() - interval '4 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('17a656d5-eff3-4701-99c7-34375729c5bd', 8, 'Bola-Bola Siopao', 45.00, 3),
  ('17a656d5-eff3-4701-99c7-34375729c5bd', 9, 'Choco Siopao', 45.00, 5),
  ('17a656d5-eff3-4701-99c7-34375729c5bd', 10, 'Ube Siopao', 45.00, 2),
  ('17a656d5-eff3-4701-99c7-34375729c5bd', 7, 'Asado Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e0bb31c1-958a-4662-8378-70e71eccc98d', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '411 Ayala Ave, Paranaque City', 'Call upon arrival.', 350.00, 'delivered', now() - interval '41 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e0bb31c1-958a-4662-8378-70e71eccc98d', 10, 'Ube Siopao', 45.00, 5),
  ('e0bb31c1-958a-4662-8378-70e71eccc98d', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6815c42b-ecdd-4ce9-9c13-70c787cbbf2f', '530e0d5d-f37a-4d28-bf10-6acbbf2cd989', 'Carlos Ocampo', '+63 9436801555', '875 C5 Road, Pasig City', '', 225.00, 'preparing', now() - interval '21 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6815c42b-ecdd-4ce9-9c13-70c787cbbf2f', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('6815c42b-ecdd-4ce9-9c13-70c787cbbf2f', 7, 'Asado Siopao', 45.00, 2),
  ('6815c42b-ecdd-4ce9-9c13-70c787cbbf2f', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b7f9d78a-c26f-41de-9e8b-4cf9b0cf3883', '9a246f71-53f2-4663-9e16-c0ef3da8fda3', 'Miguel Torres', '+63 9796155100', '573 Ayala Ave, Pasig City', '', 270.00, 'pending', now() - interval '51 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b7f9d78a-c26f-41de-9e8b-4cf9b0cf3883', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('b7f9d78a-c26f-41de-9e8b-4cf9b0cf3883', 7, 'Asado Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7e70b679-4a92-47c7-88d1-91594a250d03', '4ee87f43-0284-4d16-869a-6996b969cf28', 'Jose Cruz', '+63 9319292746', '201 Roxas Blvd, Paranaque City', 'Please leave at the lobby.', 425.00, 'delivered', now() - interval '2 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7e70b679-4a92-47c7-88d1-91594a250d03', 4, 'Tuna Siomai', 25.00, 1),
  ('7e70b679-4a92-47c7-88d1-91594a250d03', 3, 'Beef Siomai', 25.00, 4),
  ('7e70b679-4a92-47c7-88d1-91594a250d03', 5, 'Shark''s Fin Siomai', 25.00, 3),
  ('7e70b679-4a92-47c7-88d1-91594a250d03', 12, 'Custard Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ba7736b4-37d9-4af9-86db-e5939ebb060b', 'a7526055-3dfe-4aba-94fa-754491ac4cd3', 'Paul Bautista', '+63 9900749205', '706 C5 Road, Paranaque City', 'Leave at the gate.', 25.00, 'delivering', now() - interval '37 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ba7736b4-37d9-4af9-86db-e5939ebb060b', 6, 'Japanese Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('387cd7f5-f5b1-4058-90e4-e589f50e204d', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '676 Quezon Ave, Manila City', 'Extra chili oil please.', 100.00, 'delivering', now() - interval '58 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('387cd7f5-f5b1-4058-90e4-e589f50e204d', 3, 'Beef Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d9e592f8-f0f9-4842-9447-3e2560cf7b97', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '970 Taft Ave, Manila City', '', 300.00, 'delivered', now() - interval '22 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d9e592f8-f0f9-4842-9447-3e2560cf7b97', 11, 'Red Bean Siopao', 45.00, 5),
  ('d9e592f8-f0f9-4842-9447-3e2560cf7b97', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d369d321-26f9-4638-8b49-c1ae9c71a846', '9a246f71-53f2-4663-9e16-c0ef3da8fda3', 'Miguel Torres', '+63 9796155100', '270 Aurora Blvd, Paranaque City', 'Leave at the gate.', 120.00, 'delivered', now() - interval '35 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d369d321-26f9-4638-8b49-c1ae9c71a846', 12, 'Custard Siopao', 45.00, 1),
  ('d369d321-26f9-4638-8b49-c1ae9c71a846', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d12904bf-5536-4f84-b3f8-1c552256cc82', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'Juan Rivera', '+63 9634614196', '32 EDSA, Makati City', 'I need this by 12PM.', 360.00, 'delivered', now() - interval '27 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d12904bf-5536-4f84-b3f8-1c552256cc82', 7, 'Asado Siopao', 45.00, 3),
  ('d12904bf-5536-4f84-b3f8-1c552256cc82', 10, 'Ube Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5d430612-f1a3-435d-ac72-6bfca48b3bd1', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '387 Espana Blvd, San Juan City', '', 50.00, 'delivered', now() - interval '33 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5d430612-f1a3-435d-ac72-6bfca48b3bd1', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('339f82ba-e096-4f05-b2b4-ff56bdceb308', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '421 Roxas Blvd, Pasig City', 'Call upon arrival.', 280.00, 'delivered', now() - interval '46 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('339f82ba-e096-4f05-b2b4-ff56bdceb308', 7, 'Asado Siopao', 45.00, 4),
  ('339f82ba-e096-4f05-b2b4-ff56bdceb308', 3, 'Beef Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7e8bbcf8-3af1-475a-8f49-1566d6d6853f', '9a246f71-53f2-4663-9e16-c0ef3da8fda3', 'Miguel Torres', '+63 9796155100', '720 Quezon Ave, Manila City', 'I need this by 12PM.', 450.00, 'delivered', now() - interval '39 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7e8bbcf8-3af1-475a-8f49-1566d6d6853f', 1, 'Pork Siomai', 25.00, 5),
  ('7e8bbcf8-3af1-475a-8f49-1566d6d6853f', 4, 'Tuna Siomai', 25.00, 3),
  ('7e8bbcf8-3af1-475a-8f49-1566d6d6853f', 11, 'Red Bean Siopao', 45.00, 5),
  ('7e8bbcf8-3af1-475a-8f49-1566d6d6853f', 5, 'Shark''s Fin Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('db27b58c-5c3f-4f34-8d75-c454dd3c66e6', '4645611f-1d66-4780-899a-929d39d9a150', 'Antonio Gonzales', '+63 9669353021', '303 Ayala Ave, Pasig City', 'I need this by 12PM.', 95.00, 'delivered', now() - interval '37 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('db27b58c-5c3f-4f34-8d75-c454dd3c66e6', 2, 'Chicken Siomai', 25.00, 2),
  ('db27b58c-5c3f-4f34-8d75-c454dd3c66e6', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('511ac6da-931f-4874-bdaf-6472cc5f0dbe', '3beb0cee-2839-445b-9bb1-a4d4d5c9bab9', 'Carmen Perez', '+63 9846533716', '389 Shaw Blvd, Pasig City', '', 430.00, 'delivered', now() - interval '26 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('511ac6da-931f-4874-bdaf-6472cc5f0dbe', 1, 'Pork Siomai', 25.00, 5),
  ('511ac6da-931f-4874-bdaf-6472cc5f0dbe', 12, 'Custard Siopao', 45.00, 4),
  ('511ac6da-931f-4874-bdaf-6472cc5f0dbe', 2, 'Chicken Siomai', 25.00, 2),
  ('511ac6da-931f-4874-bdaf-6472cc5f0dbe', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('15754034-b11c-46b2-a019-6e77d6509160', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '611 Aurora Blvd, Quezon City', 'Ring the doorbell.', 550.00, 'cancelled', now() - interval '8 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('15754034-b11c-46b2-a019-6e77d6509160', 1, 'Pork Siomai', 25.00, 4),
  ('15754034-b11c-46b2-a019-6e77d6509160', 12, 'Custard Siopao', 45.00, 5),
  ('15754034-b11c-46b2-a019-6e77d6509160', 7, 'Asado Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6f3e186c-b2c7-4774-83f2-edad2185834b', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '722 EDSA, Taguig City', '', 210.00, 'delivered', now() - interval '59 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6f3e186c-b2c7-4774-83f2-edad2185834b', 2, 'Chicken Siomai', 25.00, 2),
  ('6f3e186c-b2c7-4774-83f2-edad2185834b', 7, 'Asado Siopao', 45.00, 1),
  ('6f3e186c-b2c7-4774-83f2-edad2185834b', 6, 'Japanese Siomai', 25.00, 1),
  ('6f3e186c-b2c7-4774-83f2-edad2185834b', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8ed460e8-90a2-40b7-bc50-a64d4c3bc393', '4ee87f43-0284-4d16-869a-6996b969cf28', 'Jose Cruz', '+63 9319292746', '787 Shaw Blvd, Paranaque City', 'Leave at the gate.', 295.00, 'delivering', now() - interval '21 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8ed460e8-90a2-40b7-bc50-a64d4c3bc393', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('8ed460e8-90a2-40b7-bc50-a64d4c3bc393', 4, 'Tuna Siomai', 25.00, 1),
  ('8ed460e8-90a2-40b7-bc50-a64d4c3bc393', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('fe4c4fc8-3d34-4540-9843-b26380974a7b', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '310 Taft Ave, Manila City', '', 360.00, 'cancelled', now() - interval '50 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('fe4c4fc8-3d34-4540-9843-b26380974a7b', 5, 'Shark''s Fin Siomai', 25.00, 4),
  ('fe4c4fc8-3d34-4540-9843-b26380974a7b', 12, 'Custard Siopao', 45.00, 1),
  ('fe4c4fc8-3d34-4540-9843-b26380974a7b', 7, 'Asado Siopao', 45.00, 2),
  ('fe4c4fc8-3d34-4540-9843-b26380974a7b', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('30e159a2-b26d-4cb3-b6a4-daf87551f1e8', 'a7526055-3dfe-4aba-94fa-754491ac4cd3', 'Paul Bautista', '+63 9900749205', '956 Espana Blvd, Pasig City', '', 275.00, 'cancelled', now() - interval '59 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('30e159a2-b26d-4cb3-b6a4-daf87551f1e8', 4, 'Tuna Siomai', 25.00, 1),
  ('30e159a2-b26d-4cb3-b6a4-daf87551f1e8', 8, 'Bola-Bola Siopao', 45.00, 3),
  ('30e159a2-b26d-4cb3-b6a4-daf87551f1e8', 1, 'Pork Siomai', 25.00, 1),
  ('30e159a2-b26d-4cb3-b6a4-daf87551f1e8', 10, 'Ube Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0de58ff3-6ba4-4139-bbb2-46191fa162cb', '274ce8da-c7fe-4ca8-9c0a-f4d5d524d0f1', 'Roberto Fernandez', '+63 9531683663', '779 Taft Ave, Makati City', '', 25.00, 'delivered', now() - interval '43 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0de58ff3-6ba4-4139-bbb2-46191fa162cb', 3, 'Beef Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('aa106102-4a76-406d-b172-be32d677ecec', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '19 Ortigas Ave, Taguig City', 'No soy sauce.', 75.00, 'preparing', now() - interval '42 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('aa106102-4a76-406d-b172-be32d677ecec', 6, 'Japanese Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('063e72b2-d336-4831-a70c-2f49870cfa40', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '294 Ortigas Ave, San Juan City', '', 565.00, 'delivering', now() - interval '19 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('063e72b2-d336-4831-a70c-2f49870cfa40', 7, 'Asado Siopao', 45.00, 2),
  ('063e72b2-d336-4831-a70c-2f49870cfa40', 4, 'Tuna Siomai', 25.00, 5),
  ('063e72b2-d336-4831-a70c-2f49870cfa40', 5, 'Shark''s Fin Siomai', 25.00, 5),
  ('063e72b2-d336-4831-a70c-2f49870cfa40', 11, 'Red Bean Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('49f5fa18-6bd4-4828-aba7-6085e010fd44', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '892 EDSA, Paranaque City', 'Leave at the gate.', 400.00, 'delivered', now() - interval '9 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('49f5fa18-6bd4-4828-aba7-6085e010fd44', 3, 'Beef Siomai', 25.00, 2),
  ('49f5fa18-6bd4-4828-aba7-6085e010fd44', 6, 'Japanese Siomai', 25.00, 5),
  ('49f5fa18-6bd4-4828-aba7-6085e010fd44', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('49f5fa18-6bd4-4828-aba7-6085e010fd44', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('eb3698f5-a180-44b9-80b4-90d89f97a8df', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '950 Shaw Blvd, Muntinlupa City', '', 100.00, 'delivered', now() - interval '12 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('eb3698f5-a180-44b9-80b4-90d89f97a8df', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('9f6e876a-9d6b-48e1-bd73-d9e0509c0990', 'c315d8cd-0c4b-46b9-b31e-be08e1bc69e0', 'Pedro Rivera', '+63 9780746951', '341 Quezon Ave, Quezon City', '', 45.00, 'preparing', now() - interval '13 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('9f6e876a-9d6b-48e1-bd73-d9e0509c0990', 10, 'Ube Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a493ee14-1630-4263-a874-880633421481', 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135', 'Francisco Rizal', '+63 9826155165', '254 Aurora Blvd, Paranaque City', '', 100.00, 'delivered', now() - interval '51 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a493ee14-1630-4263-a874-880633421481', 3, 'Beef Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('bfc36855-605a-4239-b45e-d488889d7aed', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '814 Aurora Blvd, Quezon City', '', 500.00, 'delivered', now() - interval '9 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('bfc36855-605a-4239-b45e-d488889d7aed', 7, 'Asado Siopao', 45.00, 3),
  ('bfc36855-605a-4239-b45e-d488889d7aed', 2, 'Chicken Siomai', 25.00, 2),
  ('bfc36855-605a-4239-b45e-d488889d7aed', 12, 'Custard Siopao', 45.00, 3),
  ('bfc36855-605a-4239-b45e-d488889d7aed', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('18b88cda-e671-4fad-a25f-5f540a6a587a', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '46 Aurora Blvd, Paranaque City', '', 380.00, 'delivered', now() - interval '12 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('18b88cda-e671-4fad-a25f-5f540a6a587a', 2, 'Chicken Siomai', 25.00, 4),
  ('18b88cda-e671-4fad-a25f-5f540a6a587a', 1, 'Pork Siomai', 25.00, 4),
  ('18b88cda-e671-4fad-a25f-5f540a6a587a', 11, 'Red Bean Siopao', 45.00, 2),
  ('18b88cda-e671-4fad-a25f-5f540a6a587a', 9, 'Choco Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('29f8d3cc-51bc-44c0-bb22-88374963305b', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '957 C5 Road, Muntinlupa City', 'Leave at the gate.', 75.00, 'delivered', now() - interval '22 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('29f8d3cc-51bc-44c0-bb22-88374963305b', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f3d85577-da3f-4fb6-9bcb-28c8147e319d', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '803 Espana Blvd, Paranaque City', '', 450.00, 'delivered', now() - interval '37 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f3d85577-da3f-4fb6-9bcb-28c8147e319d', 6, 'Japanese Siomai', 25.00, 4),
  ('f3d85577-da3f-4fb6-9bcb-28c8147e319d', 12, 'Custard Siopao', 45.00, 5),
  ('f3d85577-da3f-4fb6-9bcb-28c8147e319d', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f71f4018-4791-4169-9690-e354efdc7104', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '242 Taft Ave, Quezon City', 'Please leave at the lobby.', 125.00, 'delivered', now() - interval '58 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f71f4018-4791-4169-9690-e354efdc7104', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('51af75ec-2802-4dec-8343-1cbc3af4e847', 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135', 'Francisco Rizal', '+63 9826155165', '326 Aurora Blvd, Muntinlupa City', '', 90.00, 'cancelled', now() - interval '10 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('51af75ec-2802-4dec-8343-1cbc3af4e847', 10, 'Ube Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('77f509e8-d13e-458e-9a89-8c72b4c62a0d', '63f3d871-11f2-4720-8edb-821f8276fa6f', 'Rosa Cruz', '+63 9710023969', '156 Ortigas Ave, Manila City', '', 50.00, 'delivered', now() - interval '25 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('77f509e8-d13e-458e-9a89-8c72b4c62a0d', 5, 'Shark''s Fin Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('fe0c88b5-2f55-47eb-a791-e5d9b16cc925', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '150 EDSA, San Juan City', 'Leave at the gate.', 300.00, 'cancelled', now() - interval '33 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('fe0c88b5-2f55-47eb-a791-e5d9b16cc925', 1, 'Pork Siomai', 25.00, 3),
  ('fe0c88b5-2f55-47eb-a791-e5d9b16cc925', 9, 'Choco Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f4d56cb6-e081-4b07-9828-81f3accd20e6', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '505 Taft Ave, Quezon City', '', 410.00, 'delivered', now() - interval '23 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f4d56cb6-e081-4b07-9828-81f3accd20e6', 3, 'Beef Siomai', 25.00, 5),
  ('f4d56cb6-e081-4b07-9828-81f3accd20e6', 12, 'Custard Siopao', 45.00, 3),
  ('f4d56cb6-e081-4b07-9828-81f3accd20e6', 2, 'Chicken Siomai', 25.00, 1),
  ('f4d56cb6-e081-4b07-9828-81f3accd20e6', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b841a932-6745-4187-8121-b3a37389a5b4', '83cf7a6a-878d-4c5a-806b-b9f60f5493c5', 'Paul Dela Cruz', '+63 9364284175', '637 Aurora Blvd, Muntinlupa City', '', 125.00, 'pending', now() - interval '6 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b841a932-6745-4187-8121-b3a37389a5b4', 6, 'Japanese Siomai', 25.00, 3),
  ('b841a932-6745-4187-8121-b3a37389a5b4', 3, 'Beef Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('be2ba693-cfdc-499c-8a8b-8c5d3f46addf', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '126 Ayala Ave, Makati City', '', 445.00, 'delivered', now() - interval '19 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('be2ba693-cfdc-499c-8a8b-8c5d3f46addf', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('be2ba693-cfdc-499c-8a8b-8c5d3f46addf', 4, 'Tuna Siomai', 25.00, 2),
  ('be2ba693-cfdc-499c-8a8b-8c5d3f46addf', 11, 'Red Bean Siopao', 45.00, 2),
  ('be2ba693-cfdc-499c-8a8b-8c5d3f46addf', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2c2c59a7-351b-4157-894d-5df1ed9367a8', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'Juan Rivera', '+63 9634614196', '57 EDSA, Paranaque City', 'Leave at the gate.', 480.00, 'pending', now() - interval '5 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2c2c59a7-351b-4157-894d-5df1ed9367a8', 4, 'Tuna Siomai', 25.00, 3),
  ('2c2c59a7-351b-4157-894d-5df1ed9367a8', 1, 'Pork Siomai', 25.00, 5),
  ('2c2c59a7-351b-4157-894d-5df1ed9367a8', 6, 'Japanese Siomai', 25.00, 4),
  ('2c2c59a7-351b-4157-894d-5df1ed9367a8', 12, 'Custard Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('70f37f35-3ebb-4eb0-83a5-2f856a6552d4', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '700 Ayala Ave, Manila City', 'No soy sauce.', 125.00, 'cancelled', now() - interval '45 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('70f37f35-3ebb-4eb0-83a5-2f856a6552d4', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('435afbf4-11bc-4f46-98a6-ba8647124c8a', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '201 Shaw Blvd, Muntinlupa City', '', 370.00, 'delivered', now() - interval '22 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('435afbf4-11bc-4f46-98a6-ba8647124c8a', 12, 'Custard Siopao', 45.00, 2),
  ('435afbf4-11bc-4f46-98a6-ba8647124c8a', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('435afbf4-11bc-4f46-98a6-ba8647124c8a', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6fe2f8f8-dff2-47dc-99fb-836d7eb16a14', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '7 Shaw Blvd, Mandaluyong City', 'No soy sauce.', 500.00, 'delivered', now() - interval '27 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6fe2f8f8-dff2-47dc-99fb-836d7eb16a14', 6, 'Japanese Siomai', 25.00, 3),
  ('6fe2f8f8-dff2-47dc-99fb-836d7eb16a14', 4, 'Tuna Siomai', 25.00, 4),
  ('6fe2f8f8-dff2-47dc-99fb-836d7eb16a14', 2, 'Chicken Siomai', 25.00, 4),
  ('6fe2f8f8-dff2-47dc-99fb-836d7eb16a14', 11, 'Red Bean Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('acb4c73d-4a3b-4e77-ad89-a7ffc6ed739b', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '983 Aurora Blvd, San Juan City', '', 275.00, 'delivered', now() - interval '28 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('acb4c73d-4a3b-4e77-ad89-a7ffc6ed739b', 10, 'Ube Siopao', 45.00, 2),
  ('acb4c73d-4a3b-4e77-ad89-a7ffc6ed739b', 1, 'Pork Siomai', 25.00, 2),
  ('acb4c73d-4a3b-4e77-ad89-a7ffc6ed739b', 12, 'Custard Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7e5913e4-699c-4c8f-ba90-9e530d3c2872', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '789 Taft Ave, Paranaque City', 'Ring the doorbell.', 90.00, 'cancelled', now() - interval '11 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7e5913e4-699c-4c8f-ba90-9e530d3c2872', 12, 'Custard Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5da3fd88-cf1a-4543-b219-2f96b8ed4871', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '181 Shaw Blvd, Taguig City', '', 230.00, 'delivered', now() - interval '41 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5da3fd88-cf1a-4543-b219-2f96b8ed4871', 11, 'Red Bean Siopao', 45.00, 3),
  ('5da3fd88-cf1a-4543-b219-2f96b8ed4871', 1, 'Pork Siomai', 25.00, 2),
  ('5da3fd88-cf1a-4543-b219-2f96b8ed4871', 10, 'Ube Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('20b9f928-8d77-45b1-900f-13db583fe8db', 'a7526055-3dfe-4aba-94fa-754491ac4cd3', 'Paul Bautista', '+63 9900749205', '146 Roxas Blvd, Paranaque City', 'Leave at the gate.', 305.00, 'delivered', now() - interval '41 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('20b9f928-8d77-45b1-900f-13db583fe8db', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('20b9f928-8d77-45b1-900f-13db583fe8db', 7, 'Asado Siopao', 45.00, 2),
  ('20b9f928-8d77-45b1-900f-13db583fe8db', 1, 'Pork Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8a180632-da7e-42d9-ac14-f3caddca13cd', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '2 Quezon Ave, Pasig City', '', 70.00, 'delivering', now() - interval '15 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8a180632-da7e-42d9-ac14-f3caddca13cd', 4, 'Tuna Siomai', 25.00, 1),
  ('8a180632-da7e-42d9-ac14-f3caddca13cd', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('dc1147a7-fe4f-430f-8adb-a8f94243049b', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '837 Ayala Ave, Pasig City', '', 75.00, 'delivered', now() - interval '36 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('dc1147a7-fe4f-430f-8adb-a8f94243049b', 2, 'Chicken Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4821f438-7ef0-46c6-b11a-f946c1c77ad1', '28e041df-ed58-4f58-8423-fff80af4d5eb', 'Carmen Cruz', '+63 9642792171', '582 Quezon Ave, Makati City', 'Please leave at the lobby.', 385.00, 'delivered', now() - interval '17 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4821f438-7ef0-46c6-b11a-f946c1c77ad1', 11, 'Red Bean Siopao', 45.00, 4),
  ('4821f438-7ef0-46c6-b11a-f946c1c77ad1', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('4821f438-7ef0-46c6-b11a-f946c1c77ad1', 1, 'Pork Siomai', 25.00, 1),
  ('4821f438-7ef0-46c6-b11a-f946c1c77ad1', 10, 'Ube Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('53ebf0a6-133d-4714-bfc5-724b79e7bd56', '9a246f71-53f2-4663-9e16-c0ef3da8fda3', 'Miguel Torres', '+63 9796155100', '404 Ortigas Ave, Manila City', 'Please leave at the lobby.', 90.00, 'delivering', now() - interval '34 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('53ebf0a6-133d-4714-bfc5-724b79e7bd56', 10, 'Ube Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7e94e65e-01a5-4215-8474-d3ce348d05e9', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '536 Shaw Blvd, Makati City', '', 280.00, 'delivered', now() - interval '13 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7e94e65e-01a5-4215-8474-d3ce348d05e9', 4, 'Tuna Siomai', 25.00, 1),
  ('7e94e65e-01a5-4215-8474-d3ce348d05e9', 2, 'Chicken Siomai', 25.00, 3),
  ('7e94e65e-01a5-4215-8474-d3ce348d05e9', 11, 'Red Bean Siopao', 45.00, 3),
  ('7e94e65e-01a5-4215-8474-d3ce348d05e9', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('50ca6b71-6a99-4852-993d-ac3d643b533c', '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7', 'Pedro Rivera', '+63 9418752740', '472 Aurora Blvd, Manila City', '', 120.00, 'delivered', now() - interval '8 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('50ca6b71-6a99-4852-993d-ac3d643b533c', 4, 'Tuna Siomai', 25.00, 3),
  ('50ca6b71-6a99-4852-993d-ac3d643b533c', 10, 'Ube Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f85d46ef-a19e-4d26-bd10-ee43ad9f8373', 'c315d8cd-0c4b-46b9-b31e-be08e1bc69e0', 'Pedro Rivera', '+63 9780746951', '540 Roxas Blvd, Makati City', 'I need this by 12PM.', 440.00, 'preparing', now() - interval '16 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f85d46ef-a19e-4d26-bd10-ee43ad9f8373', 12, 'Custard Siopao', 45.00, 4),
  ('f85d46ef-a19e-4d26-bd10-ee43ad9f8373', 7, 'Asado Siopao', 45.00, 3),
  ('f85d46ef-a19e-4d26-bd10-ee43ad9f8373', 2, 'Chicken Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f3708981-ad66-492b-8fc0-727a336db7fa', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '807 Ayala Ave, Manila City', '', 25.00, 'pending', now() - interval '58 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f3708981-ad66-492b-8fc0-727a336db7fa', 1, 'Pork Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('98b058a2-063e-448a-8041-6bb1a9b2d097', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'Juan Rivera', '+63 9634614196', '801 Aurora Blvd, Quezon City', '', 405.00, 'delivered', now() - interval '26 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('98b058a2-063e-448a-8041-6bb1a9b2d097', 1, 'Pork Siomai', 25.00, 4),
  ('98b058a2-063e-448a-8041-6bb1a9b2d097', 2, 'Chicken Siomai', 25.00, 2),
  ('98b058a2-063e-448a-8041-6bb1a9b2d097', 7, 'Asado Siopao', 45.00, 4),
  ('98b058a2-063e-448a-8041-6bb1a9b2d097', 6, 'Japanese Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b32277ac-b1de-400e-a18d-a30e683bb79f', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '217 Quezon Ave, Manila City', '', 415.00, 'delivered', now() - interval '41 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b32277ac-b1de-400e-a18d-a30e683bb79f', 7, 'Asado Siopao', 45.00, 3),
  ('b32277ac-b1de-400e-a18d-a30e683bb79f', 9, 'Choco Siopao', 45.00, 4),
  ('b32277ac-b1de-400e-a18d-a30e683bb79f', 1, 'Pork Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('cdc63295-1af1-404c-a931-4b885a354662', '301e3595-c9e6-4712-9bc5-c986d353a751', 'Mark Dela Cruz', '+63 9523535959', '685 Taft Ave, Pasig City', 'Ring the doorbell.', 120.00, 'delivered', now() - interval '22 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('cdc63295-1af1-404c-a931-4b885a354662', 5, 'Shark''s Fin Siomai', 25.00, 2),
  ('cdc63295-1af1-404c-a931-4b885a354662', 1, 'Pork Siomai', 25.00, 1),
  ('cdc63295-1af1-404c-a931-4b885a354662', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('531141f2-a6a1-4b96-bee5-0042fa9c2a93', 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135', 'Francisco Rizal', '+63 9826155165', '166 Aurora Blvd, Pasig City', '', 375.00, 'preparing', now() - interval '40 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('531141f2-a6a1-4b96-bee5-0042fa9c2a93', 9, 'Choco Siopao', 45.00, 3),
  ('531141f2-a6a1-4b96-bee5-0042fa9c2a93', 10, 'Ube Siopao', 45.00, 2),
  ('531141f2-a6a1-4b96-bee5-0042fa9c2a93', 2, 'Chicken Siomai', 25.00, 5),
  ('531141f2-a6a1-4b96-bee5-0042fa9c2a93', 1, 'Pork Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0caa247a-85ab-40bc-9b0b-bf3e1c055966', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '101 Shaw Blvd, Taguig City', 'Call upon arrival.', 150.00, 'delivered', now() - interval '56 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0caa247a-85ab-40bc-9b0b-bf3e1c055966', 1, 'Pork Siomai', 25.00, 3),
  ('0caa247a-85ab-40bc-9b0b-bf3e1c055966', 2, 'Chicken Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d7238d52-630f-4fd3-aee1-04bb43d714ac', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '70 Ayala Ave, Mandaluyong City', 'I need this by 12PM.', 260.00, 'delivering', now() - interval '37 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d7238d52-630f-4fd3-aee1-04bb43d714ac', 1, 'Pork Siomai', 25.00, 5),
  ('d7238d52-630f-4fd3-aee1-04bb43d714ac', 10, 'Ube Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('fe19353a-567b-412b-bea6-70158f28755d', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '996 Quezon Ave, Muntinlupa City', '', 180.00, 'delivered', now() - interval '14 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('fe19353a-567b-412b-bea6-70158f28755d', 9, 'Choco Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('3286a28a-530f-4f1f-84b3-1876cb47c76f', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '2 Espana Blvd, Quezon City', '', 260.00, 'delivered', now() - interval '41 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('3286a28a-530f-4f1f-84b3-1876cb47c76f', 5, 'Shark''s Fin Siomai', 25.00, 5),
  ('3286a28a-530f-4f1f-84b3-1876cb47c76f', 8, 'Bola-Bola Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d59b3cb5-a6d7-4741-82cf-15da6ac7b36e', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '357 Ayala Ave, Mandaluyong City', 'Ring the doorbell.', 305.00, 'delivered', now() - interval '39 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d59b3cb5-a6d7-4741-82cf-15da6ac7b36e', 1, 'Pork Siomai', 25.00, 5),
  ('d59b3cb5-a6d7-4741-82cf-15da6ac7b36e', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c8471f89-f666-48dd-b1d8-bee3f4bea4a7', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '408 Ortigas Ave, Manila City', 'Extra chili oil please.', 160.00, 'pending', now() - interval '54 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c8471f89-f666-48dd-b1d8-bee3f4bea4a7', 4, 'Tuna Siomai', 25.00, 1),
  ('c8471f89-f666-48dd-b1d8-bee3f4bea4a7', 9, 'Choco Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c84318a8-30a3-45ec-bac3-cce9f43b46bb', 'ab7ba6a4-a4d3-449c-9f56-94969f427eae', 'Ana Dela Cruz', '+63 9403416038', '102 Espana Blvd, Makati City', '', 325.00, 'delivered', now() - interval '21 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c84318a8-30a3-45ec-bac3-cce9f43b46bb', 2, 'Chicken Siomai', 25.00, 2),
  ('c84318a8-30a3-45ec-bac3-cce9f43b46bb', 6, 'Japanese Siomai', 25.00, 2),
  ('c84318a8-30a3-45ec-bac3-cce9f43b46bb', 9, 'Choco Siopao', 45.00, 4),
  ('c84318a8-30a3-45ec-bac3-cce9f43b46bb', 10, 'Ube Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4e58b505-0151-4855-8d51-a2d3d07b03ea', '4ee87f43-0284-4d16-869a-6996b969cf28', 'Jose Cruz', '+63 9319292746', '549 Aurora Blvd, Muntinlupa City', '', 360.00, 'delivered', now() - interval '37 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4e58b505-0151-4855-8d51-a2d3d07b03ea', 5, 'Shark''s Fin Siomai', 25.00, 3),
  ('4e58b505-0151-4855-8d51-a2d3d07b03ea', 6, 'Japanese Siomai', 25.00, 4),
  ('4e58b505-0151-4855-8d51-a2d3d07b03ea', 9, 'Choco Siopao', 45.00, 3),
  ('4e58b505-0151-4855-8d51-a2d3d07b03ea', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b625a56d-7a72-4033-baa4-b77f12c743cd', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '204 Roxas Blvd, Makati City', '', 50.00, 'delivered', now() - interval '23 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b625a56d-7a72-4033-baa4-b77f12c743cd', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('77a28f49-6bec-4e66-92d0-9e49710551c7', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '360 Espana Blvd, Muntinlupa City', '', 230.00, 'delivering', now() - interval '41 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('77a28f49-6bec-4e66-92d0-9e49710551c7', 7, 'Asado Siopao', 45.00, 2),
  ('77a28f49-6bec-4e66-92d0-9e49710551c7', 2, 'Chicken Siomai', 25.00, 1),
  ('77a28f49-6bec-4e66-92d0-9e49710551c7', 11, 'Red Bean Siopao', 45.00, 2),
  ('77a28f49-6bec-4e66-92d0-9e49710551c7', 6, 'Japanese Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4fc69ffe-7355-47a7-9aa1-2871ce6e9d99', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '824 Aurora Blvd, Manila City', '', 225.00, 'cancelled', now() - interval '51 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4fc69ffe-7355-47a7-9aa1-2871ce6e9d99', 7, 'Asado Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c688bda1-6f56-4319-8dc6-df2ef8db22e9', '301e3595-c9e6-4712-9bc5-c986d353a751', 'Mark Dela Cruz', '+63 9523535959', '634 Shaw Blvd, San Juan City', '', 395.00, 'delivered', now() - interval '37 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c688bda1-6f56-4319-8dc6-df2ef8db22e9', 10, 'Ube Siopao', 45.00, 4),
  ('c688bda1-6f56-4319-8dc6-df2ef8db22e9', 5, 'Shark''s Fin Siomai', 25.00, 5),
  ('c688bda1-6f56-4319-8dc6-df2ef8db22e9', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('13ed0a91-5b4f-46ad-b625-0663eb179054', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '282 Aurora Blvd, Quezon City', 'Leave at the gate.', 295.00, 'delivering', now() - interval '45 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('13ed0a91-5b4f-46ad-b625-0663eb179054', 3, 'Beef Siomai', 25.00, 3),
  ('13ed0a91-5b4f-46ad-b625-0663eb179054', 6, 'Japanese Siomai', 25.00, 5),
  ('13ed0a91-5b4f-46ad-b625-0663eb179054', 12, 'Custard Siopao', 45.00, 1),
  ('13ed0a91-5b4f-46ad-b625-0663eb179054', 5, 'Shark''s Fin Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('66ce4d09-09f6-47f4-a782-65983faa9c64', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '694 EDSA, Pasig City', 'Please leave at the lobby.', 475.00, 'delivered', now() - interval '51 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('66ce4d09-09f6-47f4-a782-65983faa9c64', 7, 'Asado Siopao', 45.00, 5),
  ('66ce4d09-09f6-47f4-a782-65983faa9c64', 4, 'Tuna Siomai', 25.00, 5),
  ('66ce4d09-09f6-47f4-a782-65983faa9c64', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a0d95f50-ab20-435e-baca-00a9b4b05617', '92548978-1693-44bd-b7b9-49a92393d843', 'Manuel Garcia', '+63 9838305407', '460 C5 Road, Manila City', 'Leave at the gate.', 225.00, 'delivered', now() - interval '54 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a0d95f50-ab20-435e-baca-00a9b4b05617', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('3a8e0fbc-d374-416f-b79b-cda4de323ed2', '7e6123c7-d5cc-453d-bd2e-f973966e77bb', 'Javier Cruz', '+63 9632767691', '139 Aurora Blvd, Quezon City', '', 25.00, 'delivered', now() - interval '38 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('3a8e0fbc-d374-416f-b79b-cda4de323ed2', 2, 'Chicken Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('3a9c81ef-fe42-4539-b7fc-f3ab8002b08d', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '677 Shaw Blvd, Taguig City', 'Call upon arrival.', 100.00, 'delivered', now() - interval '39 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('3a9c81ef-fe42-4539-b7fc-f3ab8002b08d', 6, 'Japanese Siomai', 25.00, 2),
  ('3a9c81ef-fe42-4539-b7fc-f3ab8002b08d', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('54f7b7a4-1c04-4a55-b776-3d691faea52e', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '961 Shaw Blvd, Makati City', '', 95.00, 'delivered', now() - interval '49 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('54f7b7a4-1c04-4a55-b776-3d691faea52e', 5, 'Shark''s Fin Siomai', 25.00, 2),
  ('54f7b7a4-1c04-4a55-b776-3d691faea52e', 10, 'Ube Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d0cf3420-0bb8-44e4-839a-77daca22fc0e', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '536 EDSA, San Juan City', '', 200.00, 'preparing', now() - interval '21 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d0cf3420-0bb8-44e4-839a-77daca22fc0e', 4, 'Tuna Siomai', 25.00, 3),
  ('d0cf3420-0bb8-44e4-839a-77daca22fc0e', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('01255de9-d396-42a0-aedc-c38c9b7224c3', 'ab7ba6a4-a4d3-449c-9f56-94969f427eae', 'Ana Dela Cruz', '+63 9403416038', '609 Shaw Blvd, Makati City', 'Please leave at the lobby.', 45.00, 'delivered', now() - interval '34 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('01255de9-d396-42a0-aedc-c38c9b7224c3', 7, 'Asado Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4f92017f-22be-4671-b2a9-73ed0468a980', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '680 Aurora Blvd, Taguig City', 'I need this by 12PM.', 125.00, 'delivered', now() - interval '44 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4f92017f-22be-4671-b2a9-73ed0468a980', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('63c4a8c4-ad1c-4895-945e-baf4c499ff04', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '859 Ayala Ave, Manila City', '', 160.00, 'preparing', now() - interval '6 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('63c4a8c4-ad1c-4895-945e-baf4c499ff04', 1, 'Pork Siomai', 25.00, 1),
  ('63c4a8c4-ad1c-4895-945e-baf4c499ff04', 9, 'Choco Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5696cca6-c821-453e-8ead-6a6e70c2fd32', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '405 Shaw Blvd, Taguig City', 'No soy sauce.', 185.00, 'delivered', now() - interval '41 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5696cca6-c821-453e-8ead-6a6e70c2fd32', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('5696cca6-c821-453e-8ead-6a6e70c2fd32', 7, 'Asado Siopao', 45.00, 2),
  ('5696cca6-c821-453e-8ead-6a6e70c2fd32', 1, 'Pork Siomai', 25.00, 1),
  ('5696cca6-c821-453e-8ead-6a6e70c2fd32', 3, 'Beef Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('74a1c305-e8d3-46c8-98e0-b8eb6bbcc24a', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '608 C5 Road, San Juan City', '', 95.00, 'delivered', now() - interval '26 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('74a1c305-e8d3-46c8-98e0-b8eb6bbcc24a', 7, 'Asado Siopao', 45.00, 1),
  ('74a1c305-e8d3-46c8-98e0-b8eb6bbcc24a', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1531ad2a-9d66-44c8-987f-5f862e107da2', '4ee87f43-0284-4d16-869a-6996b969cf28', 'Jose Cruz', '+63 9319292746', '233 Espana Blvd, Paranaque City', 'Extra chili oil please.', 230.00, 'delivered', now() - interval '15 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1531ad2a-9d66-44c8-987f-5f862e107da2', 2, 'Chicken Siomai', 25.00, 1),
  ('1531ad2a-9d66-44c8-987f-5f862e107da2', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('1531ad2a-9d66-44c8-987f-5f862e107da2', 4, 'Tuna Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('cf9f93bd-d118-4534-b7fb-3b2f6b41d8c5', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '478 Espana Blvd, San Juan City', '', 325.00, 'delivered', now() - interval '29 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('cf9f93bd-d118-4534-b7fb-3b2f6b41d8c5', 2, 'Chicken Siomai', 25.00, 5),
  ('cf9f93bd-d118-4534-b7fb-3b2f6b41d8c5', 4, 'Tuna Siomai', 25.00, 4),
  ('cf9f93bd-d118-4534-b7fb-3b2f6b41d8c5', 5, 'Shark''s Fin Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d09086b6-b1f1-4fbf-9b97-e2546fa9714f', '7e6123c7-d5cc-453d-bd2e-f973966e77bb', 'Javier Cruz', '+63 9632767691', '870 Ortigas Ave, Paranaque City', 'Please leave at the lobby.', 315.00, 'delivered', now() - interval '32 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d09086b6-b1f1-4fbf-9b97-e2546fa9714f', 7, 'Asado Siopao', 45.00, 3),
  ('d09086b6-b1f1-4fbf-9b97-e2546fa9714f', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('144b6c6c-fbf9-446c-ad4f-72845c532beb', '51b4df1e-fedf-4ec8-97eb-8083c6f84012', 'Juan Gomez', '+63 9893300276', '70 Aurora Blvd, Muntinlupa City', 'Call upon arrival.', 260.00, 'delivered', now() - interval '43 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('144b6c6c-fbf9-446c-ad4f-72845c532beb', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('144b6c6c-fbf9-446c-ad4f-72845c532beb', 8, 'Bola-Bola Siopao', 45.00, 3),
  ('144b6c6c-fbf9-446c-ad4f-72845c532beb', 1, 'Pork Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('dce264e5-f934-4f8d-8c88-514bf07bf35a', '530e0d5d-f37a-4d28-bf10-6acbbf2cd989', 'Carlos Ocampo', '+63 9436801555', '835 EDSA, Paranaque City', '', 350.00, 'delivered', now() - interval '53 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('dce264e5-f934-4f8d-8c88-514bf07bf35a', 5, 'Shark''s Fin Siomai', 25.00, 4),
  ('dce264e5-f934-4f8d-8c88-514bf07bf35a', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('dce264e5-f934-4f8d-8c88-514bf07bf35a', 11, 'Red Bean Siopao', 45.00, 4),
  ('dce264e5-f934-4f8d-8c88-514bf07bf35a', 4, 'Tuna Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d18e2986-fef4-44d7-85e5-7db73372134f', '28e041df-ed58-4f58-8423-fff80af4d5eb', 'Carmen Cruz', '+63 9642792171', '297 Quezon Ave, Manila City', 'Ring the doorbell.', 325.00, 'delivered', now() - interval '58 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d18e2986-fef4-44d7-85e5-7db73372134f', 5, 'Shark''s Fin Siomai', 25.00, 4),
  ('d18e2986-fef4-44d7-85e5-7db73372134f', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('aeb1b288-4390-4f6a-b866-82279f168487', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '986 Roxas Blvd, Mandaluyong City', '', 150.00, 'delivered', now() - interval '30 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('aeb1b288-4390-4f6a-b866-82279f168487', 2, 'Chicken Siomai', 25.00, 1),
  ('aeb1b288-4390-4f6a-b866-82279f168487', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e7abfbfc-9418-4520-b020-8d9e65329ea9', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '349 Shaw Blvd, Muntinlupa City', '', 220.00, 'delivering', now() - interval '0 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e7abfbfc-9418-4520-b020-8d9e65329ea9', 10, 'Ube Siopao', 45.00, 1),
  ('e7abfbfc-9418-4520-b020-8d9e65329ea9', 2, 'Chicken Siomai', 25.00, 4),
  ('e7abfbfc-9418-4520-b020-8d9e65329ea9', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c4381be6-1ce0-45bc-ae4e-6c76389318ed', '4ee87f43-0284-4d16-869a-6996b969cf28', 'Jose Cruz', '+63 9319292746', '731 Aurora Blvd, Pasig City', 'Ring the doorbell.', 140.00, 'delivered', now() - interval '48 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c4381be6-1ce0-45bc-ae4e-6c76389318ed', 12, 'Custard Siopao', 45.00, 2),
  ('c4381be6-1ce0-45bc-ae4e-6c76389318ed', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('bf25c075-6134-4d53-ad2a-d4432fe8a2ef', 'b64da884-fcfd-4117-baaf-eea831514404', 'Mark Fernandez', '+63 9348587293', '519 Quezon Ave, Manila City', 'Ring the doorbell.', 210.00, 'delivered', now() - interval '58 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('bf25c075-6134-4d53-ad2a-d4432fe8a2ef', 9, 'Choco Siopao', 45.00, 2),
  ('bf25c075-6134-4d53-ad2a-d4432fe8a2ef', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('bf25c075-6134-4d53-ad2a-d4432fe8a2ef', 2, 'Chicken Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c01476a6-83d0-4fd5-80ca-738ad4fe9c96', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '620 Shaw Blvd, Quezon City', '', 265.00, 'delivered', now() - interval '32 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c01476a6-83d0-4fd5-80ca-738ad4fe9c96', 11, 'Red Bean Siopao', 45.00, 2),
  ('c01476a6-83d0-4fd5-80ca-738ad4fe9c96', 6, 'Japanese Siomai', 25.00, 4),
  ('c01476a6-83d0-4fd5-80ca-738ad4fe9c96', 2, 'Chicken Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4fe10666-200c-493c-8865-94192427d35b', 'ca4cc8a1-6358-46ad-89d5-58530725185b', 'Luis Cruz', '+63 9601569482', '196 Taft Ave, Makati City', 'Extra chili oil please.', 125.00, 'delivered', now() - interval '0 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4fe10666-200c-493c-8865-94192427d35b', 1, 'Pork Siomai', 25.00, 1),
  ('4fe10666-200c-493c-8865-94192427d35b', 2, 'Chicken Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('39681baf-00c2-4f39-a670-933b69c7dede', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '413 Aurora Blvd, Paranaque City', 'Leave at the gate.', 50.00, 'cancelled', now() - interval '11 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('39681baf-00c2-4f39-a670-933b69c7dede', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0741c782-76b9-4abd-b909-49f2dbb97408', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '283 EDSA, Pasig City', 'Call upon arrival.', 125.00, 'delivered', now() - interval '57 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0741c782-76b9-4abd-b909-49f2dbb97408', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('fc05cd00-f22f-4745-9929-e3a7574936dd', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '44 Taft Ave, San Juan City', '', 450.00, 'delivered', now() - interval '43 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('fc05cd00-f22f-4745-9929-e3a7574936dd', 4, 'Tuna Siomai', 25.00, 4),
  ('fc05cd00-f22f-4745-9929-e3a7574936dd', 2, 'Chicken Siomai', 25.00, 5),
  ('fc05cd00-f22f-4745-9929-e3a7574936dd', 12, 'Custard Siopao', 45.00, 3),
  ('fc05cd00-f22f-4745-9929-e3a7574936dd', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6ef8c445-47a6-4b57-b1b5-1c1959aba023', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '307 Ayala Ave, Paranaque City', 'No soy sauce.', 465.00, 'delivered', now() - interval '21 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6ef8c445-47a6-4b57-b1b5-1c1959aba023', 11, 'Red Bean Siopao', 45.00, 5),
  ('6ef8c445-47a6-4b57-b1b5-1c1959aba023', 10, 'Ube Siopao', 45.00, 2),
  ('6ef8c445-47a6-4b57-b1b5-1c1959aba023', 2, 'Chicken Siomai', 25.00, 1),
  ('6ef8c445-47a6-4b57-b1b5-1c1959aba023', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('03e26a52-26cc-4bba-895c-f03664d8b758', '7e6123c7-d5cc-453d-bd2e-f973966e77bb', 'Javier Cruz', '+63 9632767691', '579 Quezon Ave, Quezon City', '', 175.00, 'delivered', now() - interval '15 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('03e26a52-26cc-4bba-895c-f03664d8b758', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('03e26a52-26cc-4bba-895c-f03664d8b758', 1, 'Pork Siomai', 25.00, 1),
  ('03e26a52-26cc-4bba-895c-f03664d8b758', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a3359905-e190-481d-a5ed-35f557727156', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '76 Ortigas Ave, San Juan City', 'Please leave at the lobby.', 450.00, 'delivered', now() - interval '18 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a3359905-e190-481d-a5ed-35f557727156', 9, 'Choco Siopao', 45.00, 5),
  ('a3359905-e190-481d-a5ed-35f557727156', 7, 'Asado Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d8893c19-a3f9-4148-b2ec-2f84fcc8d189', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '715 Ayala Ave, Pasig City', '', 25.00, 'delivered', now() - interval '19 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d8893c19-a3f9-4148-b2ec-2f84fcc8d189', 2, 'Chicken Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('48d3292a-5d5f-4782-841f-d80d6482e0c6', '83cf7a6a-878d-4c5a-806b-b9f60f5493c5', 'Paul Dela Cruz', '+63 9364284175', '388 EDSA, Manila City', '', 225.00, 'delivered', now() - interval '43 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('48d3292a-5d5f-4782-841f-d80d6482e0c6', 1, 'Pork Siomai', 25.00, 4),
  ('48d3292a-5d5f-4782-841f-d80d6482e0c6', 2, 'Chicken Siomai', 25.00, 2),
  ('48d3292a-5d5f-4782-841f-d80d6482e0c6', 6, 'Japanese Siomai', 25.00, 1),
  ('48d3292a-5d5f-4782-841f-d80d6482e0c6', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4b041b6f-3eec-496f-8f5d-5962b2fb30dd', '3beb0cee-2839-445b-9bb1-a4d4d5c9bab9', 'Carmen Perez', '+63 9846533716', '795 C5 Road, Manila City', '', 150.00, 'delivered', now() - interval '10 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4b041b6f-3eec-496f-8f5d-5962b2fb30dd', 5, 'Shark''s Fin Siomai', 25.00, 4),
  ('4b041b6f-3eec-496f-8f5d-5962b2fb30dd', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('66841dec-d987-4e10-9c78-2ace370c277f', '51b4df1e-fedf-4ec8-97eb-8083c6f84012', 'Juan Gomez', '+63 9893300276', '121 Ayala Ave, Paranaque City', 'No soy sauce.', 100.00, 'delivered', now() - interval '32 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('66841dec-d987-4e10-9c78-2ace370c277f', 4, 'Tuna Siomai', 25.00, 3),
  ('66841dec-d987-4e10-9c78-2ace370c277f', 1, 'Pork Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ea6d3236-5e77-4eb6-9cf2-3b1b7e142df0', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '502 EDSA, Pasig City', 'Extra chili oil please.', 50.00, 'delivered', now() - interval '30 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ea6d3236-5e77-4eb6-9cf2-3b1b7e142df0', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('467120c7-14b7-4d72-a9b5-7be2251150c5', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '83 Ortigas Ave, Muntinlupa City', 'Extra chili oil please.', 235.00, 'delivered', now() - interval '22 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('467120c7-14b7-4d72-a9b5-7be2251150c5', 5, 'Shark''s Fin Siomai', 25.00, 2),
  ('467120c7-14b7-4d72-a9b5-7be2251150c5', 1, 'Pork Siomai', 25.00, 2),
  ('467120c7-14b7-4d72-a9b5-7be2251150c5', 9, 'Choco Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a01e93c1-17ce-472b-9841-f21a0bf60b10', '301e3595-c9e6-4712-9bc5-c986d353a751', 'Mark Dela Cruz', '+63 9523535959', '179 C5 Road, Muntinlupa City', 'Extra chili oil please.', 45.00, 'delivered', now() - interval '53 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a01e93c1-17ce-472b-9841-f21a0bf60b10', 8, 'Bola-Bola Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('09434185-f321-4201-af6c-786592cb8a03', '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7', 'Pedro Rivera', '+63 9418752740', '790 Espana Blvd, Taguig City', 'I need this by 12PM.', 225.00, 'delivered', now() - interval '30 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('09434185-f321-4201-af6c-786592cb8a03', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b474fe3c-420b-47ec-a0a8-75274f1ebfd8', '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7', 'Pedro Rivera', '+63 9418752740', '836 C5 Road, Mandaluyong City', 'No soy sauce.', 190.00, 'delivering', now() - interval '14 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b474fe3c-420b-47ec-a0a8-75274f1ebfd8', 6, 'Japanese Siomai', 25.00, 2),
  ('b474fe3c-420b-47ec-a0a8-75274f1ebfd8', 5, 'Shark''s Fin Siomai', 25.00, 2),
  ('b474fe3c-420b-47ec-a0a8-75274f1ebfd8', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('268f2a6e-41b2-42ab-a34d-5dd28173b7a5', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '300 Quezon Ave, Makati City', 'Ring the doorbell.', 135.00, 'delivered', now() - interval '3 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('268f2a6e-41b2-42ab-a34d-5dd28173b7a5', 8, 'Bola-Bola Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8a949144-5f9d-4cad-80ca-b173d48ca870', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '99 Ortigas Ave, San Juan City', '', 45.00, 'pending', now() - interval '41 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8a949144-5f9d-4cad-80ca-b173d48ca870', 10, 'Ube Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('bea7114f-229e-4750-9b4f-d019a4d844da', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '215 C5 Road, Pasig City', 'Extra chili oil please.', 630.00, 'delivered', now() - interval '46 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('bea7114f-229e-4750-9b4f-d019a4d844da', 11, 'Red Bean Siopao', 45.00, 4),
  ('bea7114f-229e-4750-9b4f-d019a4d844da', 12, 'Custard Siopao', 45.00, 3),
  ('bea7114f-229e-4750-9b4f-d019a4d844da', 9, 'Choco Siopao', 45.00, 5),
  ('bea7114f-229e-4750-9b4f-d019a4d844da', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f4e50063-c816-40a3-a87f-e2413b3c99b0', '274ce8da-c7fe-4ca8-9c0a-f4d5d524d0f1', 'Roberto Fernandez', '+63 9531683663', '638 Shaw Blvd, Manila City', 'Please leave at the lobby.', 95.00, 'delivered', now() - interval '48 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f4e50063-c816-40a3-a87f-e2413b3c99b0', 1, 'Pork Siomai', 25.00, 2),
  ('f4e50063-c816-40a3-a87f-e2413b3c99b0', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1cf4432d-2ace-4360-ac7a-41d24fd3c6ca', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '337 Roxas Blvd, Taguig City', 'I need this by 12PM.', 350.00, 'preparing', now() - interval '0 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1cf4432d-2ace-4360-ac7a-41d24fd3c6ca', 11, 'Red Bean Siopao', 45.00, 3),
  ('1cf4432d-2ace-4360-ac7a-41d24fd3c6ca', 7, 'Asado Siopao', 45.00, 2),
  ('1cf4432d-2ace-4360-ac7a-41d24fd3c6ca', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f3b89925-5fb2-44bd-9e04-86f211a753f9', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '225 C5 Road, Makati City', '', 400.00, 'delivered', now() - interval '49 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f3b89925-5fb2-44bd-9e04-86f211a753f9', 7, 'Asado Siopao', 45.00, 4),
  ('f3b89925-5fb2-44bd-9e04-86f211a753f9', 6, 'Japanese Siomai', 25.00, 2),
  ('f3b89925-5fb2-44bd-9e04-86f211a753f9', 4, 'Tuna Siomai', 25.00, 5),
  ('f3b89925-5fb2-44bd-9e04-86f211a753f9', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('84c120bc-adcd-44b7-85bc-7b25a00a3a0e', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '966 C5 Road, San Juan City', '', 150.00, 'delivering', now() - interval '14 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('84c120bc-adcd-44b7-85bc-7b25a00a3a0e', 4, 'Tuna Siomai', 25.00, 1),
  ('84c120bc-adcd-44b7-85bc-7b25a00a3a0e', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('87bc98ef-1b32-41f9-958c-393abdfe4bfc', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '647 Ayala Ave, Makati City', 'Leave at the gate.', 180.00, 'delivered', now() - interval '2 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('87bc98ef-1b32-41f9-958c-393abdfe4bfc', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('192ccd31-9dc2-4e52-aebe-fab4f530ea9e', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '981 Roxas Blvd, Taguig City', '', 330.00, 'delivered', now() - interval '17 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('192ccd31-9dc2-4e52-aebe-fab4f530ea9e', 4, 'Tuna Siomai', 25.00, 4),
  ('192ccd31-9dc2-4e52-aebe-fab4f530ea9e', 12, 'Custard Siopao', 45.00, 4),
  ('192ccd31-9dc2-4e52-aebe-fab4f530ea9e', 2, 'Chicken Siomai', 25.00, 1),
  ('192ccd31-9dc2-4e52-aebe-fab4f530ea9e', 3, 'Beef Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8c164c2b-6d79-44e0-84d8-c1949c82bcbf', '63f3d871-11f2-4720-8edb-821f8276fa6f', 'Rosa Cruz', '+63 9710023969', '182 EDSA, Taguig City', '', 375.00, 'preparing', now() - interval '24 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8c164c2b-6d79-44e0-84d8-c1949c82bcbf', 2, 'Chicken Siomai', 25.00, 4),
  ('8c164c2b-6d79-44e0-84d8-c1949c82bcbf', 4, 'Tuna Siomai', 25.00, 2),
  ('8c164c2b-6d79-44e0-84d8-c1949c82bcbf', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7f409ff8-fe06-4e97-bfae-ca65f0204865', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '728 Roxas Blvd, Manila City', 'Please leave at the lobby.', 95.00, 'delivered', now() - interval '18 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7f409ff8-fe06-4e97-bfae-ca65f0204865', 1, 'Pork Siomai', 25.00, 1),
  ('7f409ff8-fe06-4e97-bfae-ca65f0204865', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('7f409ff8-fe06-4e97-bfae-ca65f0204865', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0fec590b-f380-4141-b9ce-39aeb0c26b7d', '3beb0cee-2839-445b-9bb1-a4d4d5c9bab9', 'Carmen Perez', '+63 9846533716', '463 C5 Road, Paranaque City', 'Call upon arrival.', 410.00, 'delivered', now() - interval '2 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0fec590b-f380-4141-b9ce-39aeb0c26b7d', 5, 'Shark''s Fin Siomai', 25.00, 5),
  ('0fec590b-f380-4141-b9ce-39aeb0c26b7d', 4, 'Tuna Siomai', 25.00, 1),
  ('0fec590b-f380-4141-b9ce-39aeb0c26b7d', 9, 'Choco Siopao', 45.00, 3),
  ('0fec590b-f380-4141-b9ce-39aeb0c26b7d', 1, 'Pork Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('3b47dffc-a520-4754-bdc6-58580d7c6b10', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '352 Espana Blvd, Mandaluyong City', '', 455.00, 'delivered', now() - interval '8 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('3b47dffc-a520-4754-bdc6-58580d7c6b10', 8, 'Bola-Bola Siopao', 45.00, 3),
  ('3b47dffc-a520-4754-bdc6-58580d7c6b10', 6, 'Japanese Siomai', 25.00, 2),
  ('3b47dffc-a520-4754-bdc6-58580d7c6b10', 12, 'Custard Siopao', 45.00, 5),
  ('3b47dffc-a520-4754-bdc6-58580d7c6b10', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('87e951bd-de55-4261-b0d9-557cda016777', '3887a8d3-aaa2-429d-9481-1cd3d91a6b77', 'Francisco Rizal', '+63 9121526062', '270 Shaw Blvd, Pasig City', '', 640.00, 'delivered', now() - interval '4 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('87e951bd-de55-4261-b0d9-557cda016777', 7, 'Asado Siopao', 45.00, 5),
  ('87e951bd-de55-4261-b0d9-557cda016777', 1, 'Pork Siomai', 25.00, 4),
  ('87e951bd-de55-4261-b0d9-557cda016777', 11, 'Red Bean Siopao', 45.00, 2),
  ('87e951bd-de55-4261-b0d9-557cda016777', 9, 'Choco Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('352830db-4b0b-46ac-b3be-e0242d82a38f', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '778 C5 Road, Muntinlupa City', '', 325.00, 'delivered', now() - interval '50 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('352830db-4b0b-46ac-b3be-e0242d82a38f', 3, 'Beef Siomai', 25.00, 1),
  ('352830db-4b0b-46ac-b3be-e0242d82a38f', 11, 'Red Bean Siopao', 45.00, 5),
  ('352830db-4b0b-46ac-b3be-e0242d82a38f', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2c9f4396-a510-46dd-9fd8-cb01cec856cc', '4ee87f43-0284-4d16-869a-6996b969cf28', 'Jose Cruz', '+63 9319292746', '391 C5 Road, Paranaque City', 'Ring the doorbell.', 210.00, 'delivered', now() - interval '14 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2c9f4396-a510-46dd-9fd8-cb01cec856cc', 11, 'Red Bean Siopao', 45.00, 3),
  ('2c9f4396-a510-46dd-9fd8-cb01cec856cc', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('081b0281-21a5-4740-bf9f-0783f3eac287', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '992 Taft Ave, Quezon City', 'Please leave at the lobby.', 405.00, 'delivering', now() - interval '22 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('081b0281-21a5-4740-bf9f-0783f3eac287', 11, 'Red Bean Siopao', 45.00, 2),
  ('081b0281-21a5-4740-bf9f-0783f3eac287', 1, 'Pork Siomai', 25.00, 4),
  ('081b0281-21a5-4740-bf9f-0783f3eac287', 4, 'Tuna Siomai', 25.00, 5),
  ('081b0281-21a5-4740-bf9f-0783f3eac287', 12, 'Custard Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('037bd54f-83a0-406b-be8a-55c9a62f4aad', 'ca4cc8a1-6358-46ad-89d5-58530725185b', 'Luis Cruz', '+63 9601569482', '969 Aurora Blvd, Quezon City', 'Ring the doorbell.', 175.00, 'delivered', now() - interval '44 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('037bd54f-83a0-406b-be8a-55c9a62f4aad', 3, 'Beef Siomai', 25.00, 2),
  ('037bd54f-83a0-406b-be8a-55c9a62f4aad', 4, 'Tuna Siomai', 25.00, 4),
  ('037bd54f-83a0-406b-be8a-55c9a62f4aad', 5, 'Shark''s Fin Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('990ceedb-f7cf-43fd-a1ea-5b76bf6fd1cf', '3beb0cee-2839-445b-9bb1-a4d4d5c9bab9', 'Carmen Perez', '+63 9846533716', '103 Taft Ave, San Juan City', '', 115.00, 'delivered', now() - interval '43 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('990ceedb-f7cf-43fd-a1ea-5b76bf6fd1cf', 12, 'Custard Siopao', 45.00, 2),
  ('990ceedb-f7cf-43fd-a1ea-5b76bf6fd1cf', 6, 'Japanese Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e31712da-2031-428d-a40e-310662458abd', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '60 Taft Ave, Makati City', '', 440.00, 'delivered', now() - interval '16 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e31712da-2031-428d-a40e-310662458abd', 4, 'Tuna Siomai', 25.00, 3),
  ('e31712da-2031-428d-a40e-310662458abd', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('e31712da-2031-428d-a40e-310662458abd', 9, 'Choco Siopao', 45.00, 5),
  ('e31712da-2031-428d-a40e-310662458abd', 3, 'Beef Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d954262f-4ed9-43ee-b94d-f2a670d86207', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '23 C5 Road, Makati City', 'Call upon arrival.', 280.00, 'delivered', now() - interval '32 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d954262f-4ed9-43ee-b94d-f2a670d86207', 11, 'Red Bean Siopao', 45.00, 4),
  ('d954262f-4ed9-43ee-b94d-f2a670d86207', 1, 'Pork Siomai', 25.00, 3),
  ('d954262f-4ed9-43ee-b94d-f2a670d86207', 2, 'Chicken Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('406d10ec-fba9-4a4b-884c-96e0fa9ba56a', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '294 Shaw Blvd, Mandaluyong City', '', 125.00, 'preparing', now() - interval '55 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('406d10ec-fba9-4a4b-884c-96e0fa9ba56a', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('cf2adbbb-b555-4786-979d-56101bc3efd9', '3887a8d3-aaa2-429d-9481-1cd3d91a6b77', 'Francisco Rizal', '+63 9121526062', '338 Ayala Ave, Muntinlupa City', '', 175.00, 'preparing', now() - interval '4 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('cf2adbbb-b555-4786-979d-56101bc3efd9', 2, 'Chicken Siomai', 25.00, 5),
  ('cf2adbbb-b555-4786-979d-56101bc3efd9', 5, 'Shark''s Fin Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c5514e1e-6f36-47ec-a6a8-8865ca4212d1', '905e182d-e96d-4ca8-9991-3a94f6d83373', 'Ana Mendoza', '+63 9568517643', '391 Taft Ave, Mandaluyong City', 'Call upon arrival.', 365.00, 'preparing', now() - interval '27 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c5514e1e-6f36-47ec-a6a8-8865ca4212d1', 9, 'Choco Siopao', 45.00, 2),
  ('c5514e1e-6f36-47ec-a6a8-8865ca4212d1', 2, 'Chicken Siomai', 25.00, 1),
  ('c5514e1e-6f36-47ec-a6a8-8865ca4212d1', 6, 'Japanese Siomai', 25.00, 1),
  ('c5514e1e-6f36-47ec-a6a8-8865ca4212d1', 11, 'Red Bean Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4bc3875c-7451-4d20-ab9a-d583d26c8981', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '84 Ayala Ave, Quezon City', '', 370.00, 'cancelled', now() - interval '9 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4bc3875c-7451-4d20-ab9a-d583d26c8981', 3, 'Beef Siomai', 25.00, 4),
  ('4bc3875c-7451-4d20-ab9a-d583d26c8981', 9, 'Choco Siopao', 45.00, 5),
  ('4bc3875c-7451-4d20-ab9a-d583d26c8981', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('091948f4-745c-434d-88f3-286e55f6f325', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '839 Shaw Blvd, Pasig City', '', 485.00, 'delivered', now() - interval '1 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('091948f4-745c-434d-88f3-286e55f6f325', 7, 'Asado Siopao', 45.00, 4),
  ('091948f4-745c-434d-88f3-286e55f6f325', 10, 'Ube Siopao', 45.00, 4),
  ('091948f4-745c-434d-88f3-286e55f6f325', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('fb2773f6-6341-48e7-a4bc-b40f7050c07a', '4645611f-1d66-4780-899a-929d39d9a150', 'Antonio Gonzales', '+63 9669353021', '727 C5 Road, Muntinlupa City', '', 505.00, 'delivered', now() - interval '47 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('fb2773f6-6341-48e7-a4bc-b40f7050c07a', 7, 'Asado Siopao', 45.00, 5),
  ('fb2773f6-6341-48e7-a4bc-b40f7050c07a', 10, 'Ube Siopao', 45.00, 4),
  ('fb2773f6-6341-48e7-a4bc-b40f7050c07a', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('fb2773f6-6341-48e7-a4bc-b40f7050c07a', 4, 'Tuna Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1b3663f0-b86d-4a07-8348-f0c1b0102bd7', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '603 Ayala Ave, Mandaluyong City', '', 125.00, 'delivered', now() - interval '57 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1b3663f0-b86d-4a07-8348-f0c1b0102bd7', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('62116d0a-1e36-4d1f-ac8c-ebfff8c06b8e', 'b64da884-fcfd-4117-baaf-eea831514404', 'Mark Fernandez', '+63 9348587293', '947 Taft Ave, Quezon City', '', 620.00, 'cancelled', now() - interval '6 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('62116d0a-1e36-4d1f-ac8c-ebfff8c06b8e', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('62116d0a-1e36-4d1f-ac8c-ebfff8c06b8e', 7, 'Asado Siopao', 45.00, 1),
  ('62116d0a-1e36-4d1f-ac8c-ebfff8c06b8e', 11, 'Red Bean Siopao', 45.00, 5),
  ('62116d0a-1e36-4d1f-ac8c-ebfff8c06b8e', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('46c7c74c-d151-4d14-91cb-e4a8ad3813f7', '28e041df-ed58-4f58-8423-fff80af4d5eb', 'Carmen Cruz', '+63 9642792171', '743 Taft Ave, Quezon City', 'Ring the doorbell.', 495.00, 'delivered', now() - interval '51 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('46c7c74c-d151-4d14-91cb-e4a8ad3813f7', 9, 'Choco Siopao', 45.00, 4),
  ('46c7c74c-d151-4d14-91cb-e4a8ad3813f7', 10, 'Ube Siopao', 45.00, 3),
  ('46c7c74c-d151-4d14-91cb-e4a8ad3813f7', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('9158a3fb-fe9d-48ff-ad16-3359c43ad274', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '371 Roxas Blvd, San Juan City', 'No soy sauce.', 170.00, 'delivered', now() - interval '13 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('9158a3fb-fe9d-48ff-ad16-3359c43ad274', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('9158a3fb-fe9d-48ff-ad16-3359c43ad274', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('cd2cfd39-5df9-48a7-9de2-eed0b89ae4ec', '3887a8d3-aaa2-429d-9481-1cd3d91a6b77', 'Francisco Rizal', '+63 9121526062', '690 Roxas Blvd, Manila City', 'Extra chili oil please.', 270.00, 'delivered', now() - interval '35 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('cd2cfd39-5df9-48a7-9de2-eed0b89ae4ec', 3, 'Beef Siomai', 25.00, 5),
  ('cd2cfd39-5df9-48a7-9de2-eed0b89ae4ec', 6, 'Japanese Siomai', 25.00, 4),
  ('cd2cfd39-5df9-48a7-9de2-eed0b89ae4ec', 12, 'Custard Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2684fe87-3b27-4ed0-bdd8-fa507c04cc8d', '28e041df-ed58-4f58-8423-fff80af4d5eb', 'Carmen Cruz', '+63 9642792171', '167 Quezon Ave, Paranaque City', '', 125.00, 'delivered', now() - interval '10 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2684fe87-3b27-4ed0-bdd8-fa507c04cc8d', 6, 'Japanese Siomai', 25.00, 2),
  ('2684fe87-3b27-4ed0-bdd8-fa507c04cc8d', 2, 'Chicken Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('23aadb88-c7c5-422c-beb9-9d8c36d13686', '51b4df1e-fedf-4ec8-97eb-8083c6f84012', 'Juan Gomez', '+63 9893300276', '473 C5 Road, Muntinlupa City', '', 430.00, 'delivered', now() - interval '21 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('23aadb88-c7c5-422c-beb9-9d8c36d13686', 9, 'Choco Siopao', 45.00, 5),
  ('23aadb88-c7c5-422c-beb9-9d8c36d13686', 12, 'Custard Siopao', 45.00, 2),
  ('23aadb88-c7c5-422c-beb9-9d8c36d13686', 1, 'Pork Siomai', 25.00, 1),
  ('23aadb88-c7c5-422c-beb9-9d8c36d13686', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b7c9128f-a095-431a-a2e1-284f830ae803', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '451 EDSA, Muntinlupa City', '', 475.00, 'delivered', now() - interval '12 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b7c9128f-a095-431a-a2e1-284f830ae803', 3, 'Beef Siomai', 25.00, 3),
  ('b7c9128f-a095-431a-a2e1-284f830ae803', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('b7c9128f-a095-431a-a2e1-284f830ae803', 6, 'Japanese Siomai', 25.00, 2),
  ('b7c9128f-a095-431a-a2e1-284f830ae803', 2, 'Chicken Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ce1c1333-c726-4efe-9139-0644d6f5792b', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '25 Espana Blvd, Taguig City', 'Extra chili oil please.', 185.00, 'delivered', now() - interval '51 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ce1c1333-c726-4efe-9139-0644d6f5792b', 3, 'Beef Siomai', 25.00, 2),
  ('ce1c1333-c726-4efe-9139-0644d6f5792b', 9, 'Choco Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f9780e37-4012-45c7-8508-a795409cb4fc', '2ff4f21c-36cd-4cfe-94aa-ffd3cbfc859d', 'Ricardo Ramirez', '+63 9482882790', '737 Espana Blvd, Mandaluyong City', 'Please leave at the lobby.', 75.00, 'cancelled', now() - interval '29 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f9780e37-4012-45c7-8508-a795409cb4fc', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('06d494fb-1fc6-4f26-a21e-ef49c440dc76', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '292 Espana Blvd, Makati City', '', 395.00, 'delivered', now() - interval '1 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('06d494fb-1fc6-4f26-a21e-ef49c440dc76', 3, 'Beef Siomai', 25.00, 3),
  ('06d494fb-1fc6-4f26-a21e-ef49c440dc76', 4, 'Tuna Siomai', 25.00, 2),
  ('06d494fb-1fc6-4f26-a21e-ef49c440dc76', 7, 'Asado Siopao', 45.00, 2),
  ('06d494fb-1fc6-4f26-a21e-ef49c440dc76', 9, 'Choco Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('460ebc98-cf48-4890-943d-441f7a51f035', '4645611f-1d66-4780-899a-929d39d9a150', 'Antonio Gonzales', '+63 9669353021', '473 Ortigas Ave, San Juan City', '', 170.00, 'delivered', now() - interval '54 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('460ebc98-cf48-4890-943d-441f7a51f035', 6, 'Japanese Siomai', 25.00, 5),
  ('460ebc98-cf48-4890-943d-441f7a51f035', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('029bb38b-ecb6-4857-8adf-4534c08d68ab', '0a8fd3f2-bc60-4ed7-8c38-168c93c15641', 'Ricardo Garcia', '+63 9377602496', '76 Aurora Blvd, Paranaque City', '', 405.00, 'delivered', now() - interval '53 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('029bb38b-ecb6-4857-8adf-4534c08d68ab', 7, 'Asado Siopao', 45.00, 5),
  ('029bb38b-ecb6-4857-8adf-4534c08d68ab', 11, 'Red Bean Siopao', 45.00, 2),
  ('029bb38b-ecb6-4857-8adf-4534c08d68ab', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('3483c99c-9b74-4e51-bfdb-1c42eb2bc85c', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '561 C5 Road, Paranaque City', '', 225.00, 'delivered', now() - interval '24 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('3483c99c-9b74-4e51-bfdb-1c42eb2bc85c', 7, 'Asado Siopao', 45.00, 2),
  ('3483c99c-9b74-4e51-bfdb-1c42eb2bc85c', 10, 'Ube Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('92915f33-37a4-469e-a6ab-e15d24deba62', '4645611f-1d66-4780-899a-929d39d9a150', 'Antonio Gonzales', '+63 9669353021', '40 Taft Ave, Pasig City', '', 300.00, 'delivered', now() - interval '44 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('92915f33-37a4-469e-a6ab-e15d24deba62', 1, 'Pork Siomai', 25.00, 3),
  ('92915f33-37a4-469e-a6ab-e15d24deba62', 4, 'Tuna Siomai', 25.00, 1),
  ('92915f33-37a4-469e-a6ab-e15d24deba62', 6, 'Japanese Siomai', 25.00, 5),
  ('92915f33-37a4-469e-a6ab-e15d24deba62', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6dbcdb5e-91a7-42c2-b1d6-a0f9d4e21f90', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '111 EDSA, Pasig City', 'Leave at the gate.', 180.00, 'delivered', now() - interval '56 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6dbcdb5e-91a7-42c2-b1d6-a0f9d4e21f90', 9, 'Choco Siopao', 45.00, 3),
  ('6dbcdb5e-91a7-42c2-b1d6-a0f9d4e21f90', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8b7ab35e-c0c4-4949-9047-d1993962a406', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '930 C5 Road, Pasig City', 'Extra chili oil please.', 225.00, 'delivered', now() - interval '28 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8b7ab35e-c0c4-4949-9047-d1993962a406', 11, 'Red Bean Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ea0d36d8-6d4c-4399-bf92-6aa426925a3b', '2f65aaca-7f5d-4616-bf8d-728a2fc56101', 'Carmen Ocampo', '+63 9737662908', '241 EDSA, Muntinlupa City', '', 100.00, 'delivered', now() - interval '48 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ea0d36d8-6d4c-4399-bf92-6aa426925a3b', 5, 'Shark''s Fin Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ed534cad-f225-4632-b5df-ebf78bb07fc4', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '996 Roxas Blvd, San Juan City', '', 375.00, 'delivered', now() - interval '40 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ed534cad-f225-4632-b5df-ebf78bb07fc4', 5, 'Shark''s Fin Siomai', 25.00, 5),
  ('ed534cad-f225-4632-b5df-ebf78bb07fc4', 4, 'Tuna Siomai', 25.00, 4),
  ('ed534cad-f225-4632-b5df-ebf78bb07fc4', 6, 'Japanese Siomai', 25.00, 5),
  ('ed534cad-f225-4632-b5df-ebf78bb07fc4', 3, 'Beef Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ed34e67c-a83d-4f9d-911f-df9c1cf250b7', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '889 Aurora Blvd, Pasig City', 'Call upon arrival.', 190.00, 'delivered', now() - interval '38 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ed34e67c-a83d-4f9d-911f-df9c1cf250b7', 10, 'Ube Siopao', 45.00, 2),
  ('ed34e67c-a83d-4f9d-911f-df9c1cf250b7', 3, 'Beef Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('657d84e3-9a16-4fa9-8427-f5f25a29934c', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '719 Aurora Blvd, Taguig City', 'I need this by 12PM.', 300.00, 'delivered', now() - interval '27 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('657d84e3-9a16-4fa9-8427-f5f25a29934c', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('657d84e3-9a16-4fa9-8427-f5f25a29934c', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('22f1b8d1-aa26-4af2-ade3-146d98892b45', '301e3595-c9e6-4712-9bc5-c986d353a751', 'Mark Dela Cruz', '+63 9523535959', '289 Aurora Blvd, Mandaluyong City', 'Call upon arrival.', 50.00, 'delivered', now() - interval '46 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('22f1b8d1-aa26-4af2-ade3-146d98892b45', 6, 'Japanese Siomai', 25.00, 1),
  ('22f1b8d1-aa26-4af2-ade3-146d98892b45', 5, 'Shark''s Fin Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('db1c86b1-43ce-49ac-8445-11dc8b9b57a1', '83cf7a6a-878d-4c5a-806b-b9f60f5493c5', 'Paul Dela Cruz', '+63 9364284175', '556 Aurora Blvd, Mandaluyong City', '', 95.00, 'preparing', now() - interval '31 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('db1c86b1-43ce-49ac-8445-11dc8b9b57a1', 2, 'Chicken Siomai', 25.00, 2),
  ('db1c86b1-43ce-49ac-8445-11dc8b9b57a1', 7, 'Asado Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('21f87fef-46e7-4346-ade2-0bcb4e596661', '9a246f71-53f2-4663-9e16-c0ef3da8fda3', 'Miguel Torres', '+63 9796155100', '11 Taft Ave, Manila City', '', 440.00, 'delivered', now() - interval '12 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('21f87fef-46e7-4346-ade2-0bcb4e596661', 7, 'Asado Siopao', 45.00, 3),
  ('21f87fef-46e7-4346-ade2-0bcb4e596661', 11, 'Red Bean Siopao', 45.00, 3),
  ('21f87fef-46e7-4346-ade2-0bcb4e596661', 12, 'Custard Siopao', 45.00, 1),
  ('21f87fef-46e7-4346-ade2-0bcb4e596661', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('44365f71-0df1-4056-8ddf-0a24cfbd354d', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '515 C5 Road, Muntinlupa City', 'Ring the doorbell.', 25.00, 'delivered', now() - interval '58 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('44365f71-0df1-4056-8ddf-0a24cfbd354d', 4, 'Tuna Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d9498358-d6f6-445f-87e1-9347ce5c7555', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '995 Aurora Blvd, Paranaque City', '', 125.00, 'cancelled', now() - interval '37 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d9498358-d6f6-445f-87e1-9347ce5c7555', 1, 'Pork Siomai', 25.00, 3),
  ('d9498358-d6f6-445f-87e1-9347ce5c7555', 2, 'Chicken Siomai', 25.00, 1),
  ('d9498358-d6f6-445f-87e1-9347ce5c7555', 3, 'Beef Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('fb977924-0d9d-427b-9513-e2af52eac316', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '477 Shaw Blvd, Mandaluyong City', 'Please leave at the lobby.', 430.00, 'preparing', now() - interval '0 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('fb977924-0d9d-427b-9513-e2af52eac316', 12, 'Custard Siopao', 45.00, 5),
  ('fb977924-0d9d-427b-9513-e2af52eac316', 11, 'Red Bean Siopao', 45.00, 4),
  ('fb977924-0d9d-427b-9513-e2af52eac316', 5, 'Shark''s Fin Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b18371dd-d00c-40ae-b39c-91f34bc883d9', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '69 Roxas Blvd, Makati City', 'Call upon arrival.', 225.00, 'preparing', now() - interval '6 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b18371dd-d00c-40ae-b39c-91f34bc883d9', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('10b5ac7b-f394-4f1d-8c9b-9219eee4b3be', 'c315d8cd-0c4b-46b9-b31e-be08e1bc69e0', 'Pedro Rivera', '+63 9780746951', '179 EDSA, Makati City', 'Extra chili oil please.', 420.00, 'delivered', now() - interval '31 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('10b5ac7b-f394-4f1d-8c9b-9219eee4b3be', 2, 'Chicken Siomai', 25.00, 1),
  ('10b5ac7b-f394-4f1d-8c9b-9219eee4b3be', 12, 'Custard Siopao', 45.00, 2),
  ('10b5ac7b-f394-4f1d-8c9b-9219eee4b3be', 7, 'Asado Siopao', 45.00, 4),
  ('10b5ac7b-f394-4f1d-8c9b-9219eee4b3be', 1, 'Pork Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('399ef52b-dd4b-4858-b1a9-dbd8eaf9d48d', '2f65aaca-7f5d-4616-bf8d-728a2fc56101', 'Carmen Ocampo', '+63 9737662908', '841 Taft Ave, Paranaque City', '', 135.00, 'pending', now() - interval '7 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('399ef52b-dd4b-4858-b1a9-dbd8eaf9d48d', 7, 'Asado Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('75e285d1-831a-479e-87c7-f9efa1796101', 'd0252b69-daa2-4aca-9cdc-e816cdbe8a0f', 'Miguel Ocampo', '+63 9340617649', '301 Quezon Ave, Pasig City', 'Call upon arrival.', 260.00, 'cancelled', now() - interval '1 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('75e285d1-831a-479e-87c7-f9efa1796101', 5, 'Shark''s Fin Siomai', 25.00, 5),
  ('75e285d1-831a-479e-87c7-f9efa1796101', 10, 'Ube Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d3c41491-1cf6-47df-97e5-7f736f83548e', '3beb0cee-2839-445b-9bb1-a4d4d5c9bab9', 'Carmen Perez', '+63 9846533716', '6 Espana Blvd, Mandaluyong City', '', 420.00, 'delivered', now() - interval '20 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d3c41491-1cf6-47df-97e5-7f736f83548e', 9, 'Choco Siopao', 45.00, 5),
  ('d3c41491-1cf6-47df-97e5-7f736f83548e', 7, 'Asado Siopao', 45.00, 1),
  ('d3c41491-1cf6-47df-97e5-7f736f83548e', 1, 'Pork Siomai', 25.00, 2),
  ('d3c41491-1cf6-47df-97e5-7f736f83548e', 2, 'Chicken Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('33188c98-ba43-41eb-8f3b-a1411ffa7c4e', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '638 Roxas Blvd, Manila City', 'Call upon arrival.', 180.00, 'delivered', now() - interval '18 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('33188c98-ba43-41eb-8f3b-a1411ffa7c4e', 12, 'Custard Siopao', 45.00, 3),
  ('33188c98-ba43-41eb-8f3b-a1411ffa7c4e', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f291c437-facc-4333-abd6-1c81629d240d', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '197 Shaw Blvd, Taguig City', '', 340.00, 'delivered', now() - interval '2 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f291c437-facc-4333-abd6-1c81629d240d', 4, 'Tuna Siomai', 25.00, 4),
  ('f291c437-facc-4333-abd6-1c81629d240d', 1, 'Pork Siomai', 25.00, 1),
  ('f291c437-facc-4333-abd6-1c81629d240d', 12, 'Custard Siopao', 45.00, 2),
  ('f291c437-facc-4333-abd6-1c81629d240d', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d13a9e00-2ecb-4d33-a539-31d20afe3e0b', '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7', 'Pedro Rivera', '+63 9418752740', '272 Aurora Blvd, Paranaque City', 'No soy sauce.', 75.00, 'delivered', now() - interval '36 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d13a9e00-2ecb-4d33-a539-31d20afe3e0b', 4, 'Tuna Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a20e4666-45b1-4eba-8167-2911a54f4331', '301e3595-c9e6-4712-9bc5-c986d353a751', 'Mark Dela Cruz', '+63 9523535959', '243 Roxas Blvd, San Juan City', 'Leave at the gate.', 140.00, 'delivering', now() - interval '12 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a20e4666-45b1-4eba-8167-2911a54f4331', 11, 'Red Bean Siopao', 45.00, 2),
  ('a20e4666-45b1-4eba-8167-2911a54f4331', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('61a7a8e2-c951-4675-8a8b-30039cb91dd3', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '490 Quezon Ave, Taguig City', '', 310.00, 'delivered', now() - interval '45 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('61a7a8e2-c951-4675-8a8b-30039cb91dd3', 11, 'Red Bean Siopao', 45.00, 3),
  ('61a7a8e2-c951-4675-8a8b-30039cb91dd3', 1, 'Pork Siomai', 25.00, 2),
  ('61a7a8e2-c951-4675-8a8b-30039cb91dd3', 2, 'Chicken Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('36f87841-b937-4aa1-acc4-47ea34d3cde0', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '934 Taft Ave, San Juan City', 'Ring the doorbell.', 360.00, 'cancelled', now() - interval '10 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('36f87841-b937-4aa1-acc4-47ea34d3cde0', 3, 'Beef Siomai', 25.00, 4),
  ('36f87841-b937-4aa1-acc4-47ea34d3cde0', 9, 'Choco Siopao', 45.00, 3),
  ('36f87841-b937-4aa1-acc4-47ea34d3cde0', 1, 'Pork Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('69a1bde3-79ab-42f1-b88b-4d87b72ee7db', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '107 EDSA, Pasig City', '', 25.00, 'delivered', now() - interval '52 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('69a1bde3-79ab-42f1-b88b-4d87b72ee7db', 4, 'Tuna Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c5cae01d-e726-4e52-86f2-82701afa4c7e', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '126 Quezon Ave, Paranaque City', 'Ring the doorbell.', 180.00, 'preparing', now() - interval '6 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c5cae01d-e726-4e52-86f2-82701afa4c7e', 10, 'Ube Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('adefd95e-bc94-4d92-8fc1-be2381859e46', '530e0d5d-f37a-4d28-bf10-6acbbf2cd989', 'Carlos Ocampo', '+63 9436801555', '49 Roxas Blvd, Manila City', 'Call upon arrival.', 125.00, 'delivered', now() - interval '57 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('adefd95e-bc94-4d92-8fc1-be2381859e46', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8cb23e69-095d-4ba2-855b-10793675c35d', '9a246f71-53f2-4663-9e16-c0ef3da8fda3', 'Miguel Torres', '+63 9796155100', '827 Roxas Blvd, Manila City', '', 165.00, 'delivered', now() - interval '24 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8cb23e69-095d-4ba2-855b-10793675c35d', 2, 'Chicken Siomai', 25.00, 3),
  ('8cb23e69-095d-4ba2-855b-10793675c35d', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('32c716a1-40fe-4893-8f9d-79215f51b370', '83cf7a6a-878d-4c5a-806b-b9f60f5493c5', 'Paul Dela Cruz', '+63 9364284175', '646 Aurora Blvd, Muntinlupa City', 'Leave at the gate.', 270.00, 'delivered', now() - interval '7 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('32c716a1-40fe-4893-8f9d-79215f51b370', 3, 'Beef Siomai', 25.00, 4),
  ('32c716a1-40fe-4893-8f9d-79215f51b370', 4, 'Tuna Siomai', 25.00, 2),
  ('32c716a1-40fe-4893-8f9d-79215f51b370', 6, 'Japanese Siomai', 25.00, 3),
  ('32c716a1-40fe-4893-8f9d-79215f51b370', 8, 'Bola-Bola Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f778304a-b432-4dbc-8e52-69d1640ebd7c', '2f65aaca-7f5d-4616-bf8d-728a2fc56101', 'Carmen Ocampo', '+63 9737662908', '931 Ortigas Ave, Taguig City', '', 50.00, 'delivered', now() - interval '50 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f778304a-b432-4dbc-8e52-69d1640ebd7c', 2, 'Chicken Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('83d517ce-2ee5-4016-beb7-03f08195f04e', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '758 Ayala Ave, Quezon City', '', 400.00, 'delivered', now() - interval '32 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('83d517ce-2ee5-4016-beb7-03f08195f04e', 1, 'Pork Siomai', 25.00, 3),
  ('83d517ce-2ee5-4016-beb7-03f08195f04e', 6, 'Japanese Siomai', 25.00, 5),
  ('83d517ce-2ee5-4016-beb7-03f08195f04e', 2, 'Chicken Siomai', 25.00, 4),
  ('83d517ce-2ee5-4016-beb7-03f08195f04e', 3, 'Beef Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('698f5afb-36c3-4cd8-8493-24ef0b423c96', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '209 C5 Road, San Juan City', 'I need this by 12PM.', 235.00, 'cancelled', now() - interval '44 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('698f5afb-36c3-4cd8-8493-24ef0b423c96', 11, 'Red Bean Siopao', 45.00, 1),
  ('698f5afb-36c3-4cd8-8493-24ef0b423c96', 6, 'Japanese Siomai', 25.00, 4),
  ('698f5afb-36c3-4cd8-8493-24ef0b423c96', 12, 'Custard Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6e7b979e-31df-4b86-9eaf-b06813257d08', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '22 Taft Ave, Manila City', 'No soy sauce.', 305.00, 'delivered', now() - interval '9 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6e7b979e-31df-4b86-9eaf-b06813257d08', 12, 'Custard Siopao', 45.00, 4),
  ('6e7b979e-31df-4b86-9eaf-b06813257d08', 2, 'Chicken Siomai', 25.00, 2),
  ('6e7b979e-31df-4b86-9eaf-b06813257d08', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('359bdfa1-fb40-4898-9ecc-e38b109ea4a0', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '903 Shaw Blvd, Muntinlupa City', 'Please leave at the lobby.', 175.00, 'delivered', now() - interval '6 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('359bdfa1-fb40-4898-9ecc-e38b109ea4a0', 1, 'Pork Siomai', 25.00, 2),
  ('359bdfa1-fb40-4898-9ecc-e38b109ea4a0', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('97cb9af7-a7d6-4c14-bc7c-102b5470ebdf', '7e6123c7-d5cc-453d-bd2e-f973966e77bb', 'Javier Cruz', '+63 9632767691', '676 Roxas Blvd, Muntinlupa City', '', 295.00, 'cancelled', now() - interval '8 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('97cb9af7-a7d6-4c14-bc7c-102b5470ebdf', 9, 'Choco Siopao', 45.00, 1),
  ('97cb9af7-a7d6-4c14-bc7c-102b5470ebdf', 7, 'Asado Siopao', 45.00, 3),
  ('97cb9af7-a7d6-4c14-bc7c-102b5470ebdf', 12, 'Custard Siopao', 45.00, 2),
  ('97cb9af7-a7d6-4c14-bc7c-102b5470ebdf', 1, 'Pork Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b4a133a7-e92a-4673-bfe5-b1b86213ab8f', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '205 Taft Ave, Paranaque City', '', 320.00, 'delivered', now() - interval '6 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b4a133a7-e92a-4673-bfe5-b1b86213ab8f', 12, 'Custard Siopao', 45.00, 1),
  ('b4a133a7-e92a-4673-bfe5-b1b86213ab8f', 5, 'Shark''s Fin Siomai', 25.00, 2),
  ('b4a133a7-e92a-4673-bfe5-b1b86213ab8f', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b49bb92b-92f7-4de4-83b6-985eab4bcdf4', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '474 Taft Ave, Manila City', 'I need this by 12PM.', 165.00, 'delivered', now() - interval '36 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b49bb92b-92f7-4de4-83b6-985eab4bcdf4', 6, 'Japanese Siomai', 25.00, 3),
  ('b49bb92b-92f7-4de4-83b6-985eab4bcdf4', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6813f64f-099c-4875-b8a2-06a09f011386', '280fb370-eac8-4cba-8e95-a8fdd61aeb40', 'Vicente Ramirez', '+63 9276218903', '505 Quezon Ave, Makati City', '', 385.00, 'delivered', now() - interval '32 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6813f64f-099c-4875-b8a2-06a09f011386', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('6813f64f-099c-4875-b8a2-06a09f011386', 9, 'Choco Siopao', 45.00, 3),
  ('6813f64f-099c-4875-b8a2-06a09f011386', 1, 'Pork Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('04977724-3604-41b3-9e25-223016e016c0', '63f3d871-11f2-4720-8edb-821f8276fa6f', 'Rosa Cruz', '+63 9710023969', '964 EDSA, San Juan City', 'No soy sauce.', 285.00, 'delivered', now() - interval '3 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('04977724-3604-41b3-9e25-223016e016c0', 3, 'Beef Siomai', 25.00, 1),
  ('04977724-3604-41b3-9e25-223016e016c0', 1, 'Pork Siomai', 25.00, 5),
  ('04977724-3604-41b3-9e25-223016e016c0', 12, 'Custard Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c9db6301-3fcd-463e-b959-276ac5179335', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '462 C5 Road, San Juan City', '', 565.00, 'delivering', now() - interval '47 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c9db6301-3fcd-463e-b959-276ac5179335', 4, 'Tuna Siomai', 25.00, 5),
  ('c9db6301-3fcd-463e-b959-276ac5179335', 3, 'Beef Siomai', 25.00, 5),
  ('c9db6301-3fcd-463e-b959-276ac5179335', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('c9db6301-3fcd-463e-b959-276ac5179335', 7, 'Asado Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('49d27dbf-7f18-42ba-a6d1-42a3cb755528', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '18 C5 Road, San Juan City', '', 150.00, 'delivered', now() - interval '5 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('49d27dbf-7f18-42ba-a6d1-42a3cb755528', 6, 'Japanese Siomai', 25.00, 1),
  ('49d27dbf-7f18-42ba-a6d1-42a3cb755528', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('af636357-d78a-4626-9a4f-f60bd62835c6', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '412 Shaw Blvd, Muntinlupa City', 'Ring the doorbell.', 100.00, 'cancelled', now() - interval '55 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('af636357-d78a-4626-9a4f-f60bd62835c6', 1, 'Pork Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('dcbc8af8-60b2-4845-9a89-831f6d0d81b4', '3887a8d3-aaa2-429d-9481-1cd3d91a6b77', 'Francisco Rizal', '+63 9121526062', '713 Espana Blvd, Pasig City', '', 125.00, 'delivered', now() - interval '39 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('dcbc8af8-60b2-4845-9a89-831f6d0d81b4', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('41187c06-b6c1-429f-833f-20901694afe5', '1e40f517-3427-4059-afe9-44e84e4257f5', 'Paul Gomez', '+63 9238955036', '939 Ayala Ave, Quezon City', 'Please leave at the lobby.', 475.00, 'delivered', now() - interval '0 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('41187c06-b6c1-429f-833f-20901694afe5', 1, 'Pork Siomai', 25.00, 5),
  ('41187c06-b6c1-429f-833f-20901694afe5', 2, 'Chicken Siomai', 25.00, 5),
  ('41187c06-b6c1-429f-833f-20901694afe5', 11, 'Red Bean Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('daa61ed8-b6a4-442e-a769-4d0a8ac7e53f', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '125 Taft Ave, Paranaque City', 'Call upon arrival.', 100.00, 'delivered', now() - interval '19 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('daa61ed8-b6a4-442e-a769-4d0a8ac7e53f', 1, 'Pork Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c16fe588-34b6-4833-a06c-651518a45b33', '3887a8d3-aaa2-429d-9481-1cd3d91a6b77', 'Francisco Rizal', '+63 9121526062', '137 Quezon Ave, Quezon City', '', 45.00, 'delivered', now() - interval '58 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c16fe588-34b6-4833-a06c-651518a45b33', 7, 'Asado Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d12edade-4a8b-4643-89fc-94cf704b4589', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '523 EDSA, Manila City', 'I need this by 12PM.', 445.00, 'delivered', now() - interval '5 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d12edade-4a8b-4643-89fc-94cf704b4589', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('d12edade-4a8b-4643-89fc-94cf704b4589', 6, 'Japanese Siomai', 25.00, 5),
  ('d12edade-4a8b-4643-89fc-94cf704b4589', 2, 'Chicken Siomai', 25.00, 2),
  ('d12edade-4a8b-4643-89fc-94cf704b4589', 7, 'Asado Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('90effda4-d50d-4e46-b70a-e7666737643a', '530e0d5d-f37a-4d28-bf10-6acbbf2cd989', 'Carlos Ocampo', '+63 9436801555', '252 Ortigas Ave, Quezon City', '', 330.00, 'delivered', now() - interval '10 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('90effda4-d50d-4e46-b70a-e7666737643a', 6, 'Japanese Siomai', 25.00, 2),
  ('90effda4-d50d-4e46-b70a-e7666737643a', 9, 'Choco Siopao', 45.00, 4),
  ('90effda4-d50d-4e46-b70a-e7666737643a', 1, 'Pork Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('96af51f8-6fdb-4ca6-8c35-52e636fca629', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '489 Ayala Ave, Mandaluyong City', 'No soy sauce.', 270.00, 'delivered', now() - interval '42 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('96af51f8-6fdb-4ca6-8c35-52e636fca629', 4, 'Tuna Siomai', 25.00, 2),
  ('96af51f8-6fdb-4ca6-8c35-52e636fca629', 3, 'Beef Siomai', 25.00, 5),
  ('96af51f8-6fdb-4ca6-8c35-52e636fca629', 2, 'Chicken Siomai', 25.00, 2),
  ('96af51f8-6fdb-4ca6-8c35-52e636fca629', 10, 'Ube Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('12a64d54-a2e4-4896-98f5-1825099c939e', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '775 Shaw Blvd, Quezon City', 'I need this by 12PM.', 405.00, 'delivered', now() - interval '16 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('12a64d54-a2e4-4896-98f5-1825099c939e', 1, 'Pork Siomai', 25.00, 4),
  ('12a64d54-a2e4-4896-98f5-1825099c939e', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('12a64d54-a2e4-4896-98f5-1825099c939e', 2, 'Chicken Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('980de4c7-819a-447c-a7f2-ab49ef6ba4be', '274ce8da-c7fe-4ca8-9c0a-f4d5d524d0f1', 'Roberto Fernandez', '+63 9531683663', '989 Roxas Blvd, Mandaluyong City', 'I need this by 12PM.', 420.00, 'delivered', now() - interval '12 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('980de4c7-819a-447c-a7f2-ab49ef6ba4be', 7, 'Asado Siopao', 45.00, 5),
  ('980de4c7-819a-447c-a7f2-ab49ef6ba4be', 2, 'Chicken Siomai', 25.00, 4),
  ('980de4c7-819a-447c-a7f2-ab49ef6ba4be', 4, 'Tuna Siomai', 25.00, 2),
  ('980de4c7-819a-447c-a7f2-ab49ef6ba4be', 10, 'Ube Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('9f687db1-5521-4a59-9633-b2acbcee6bae', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '800 Quezon Ave, San Juan City', '', 255.00, 'pending', now() - interval '38 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('9f687db1-5521-4a59-9633-b2acbcee6bae', 5, 'Shark''s Fin Siomai', 25.00, 3),
  ('9f687db1-5521-4a59-9633-b2acbcee6bae', 7, 'Asado Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('292dfafe-a1c2-4f2f-89b9-40a9e86ef5d7', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '772 Taft Ave, Pasig City', 'No soy sauce.', 380.00, 'pending', now() - interval '38 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('292dfafe-a1c2-4f2f-89b9-40a9e86ef5d7', 7, 'Asado Siopao', 45.00, 4),
  ('292dfafe-a1c2-4f2f-89b9-40a9e86ef5d7', 3, 'Beef Siomai', 25.00, 5),
  ('292dfafe-a1c2-4f2f-89b9-40a9e86ef5d7', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6a9740fd-dcad-4348-b73f-ddcd528bca5f', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '466 Ayala Ave, Manila City', 'Leave at the gate.', 210.00, 'delivered', now() - interval '6 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6a9740fd-dcad-4348-b73f-ddcd528bca5f', 1, 'Pork Siomai', 25.00, 3),
  ('6a9740fd-dcad-4348-b73f-ddcd528bca5f', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('6a9740fd-dcad-4348-b73f-ddcd528bca5f', 12, 'Custard Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('495c2853-8200-4611-a1b3-247b80f69bb3', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'Juan Rivera', '+63 9634614196', '644 Aurora Blvd, Manila City', 'Extra chili oil please.', 395.00, 'delivered', now() - interval '37 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('495c2853-8200-4611-a1b3-247b80f69bb3', 7, 'Asado Siopao', 45.00, 1),
  ('495c2853-8200-4611-a1b3-247b80f69bb3', 11, 'Red Bean Siopao', 45.00, 4),
  ('495c2853-8200-4611-a1b3-247b80f69bb3', 1, 'Pork Siomai', 25.00, 5),
  ('495c2853-8200-4611-a1b3-247b80f69bb3', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('70798429-a0c2-4a73-9e02-702339cd0dbc', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '156 Ayala Ave, Muntinlupa City', '', 325.00, 'delivered', now() - interval '13 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('70798429-a0c2-4a73-9e02-702339cd0dbc', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('70798429-a0c2-4a73-9e02-702339cd0dbc', 4, 'Tuna Siomai', 25.00, 3),
  ('70798429-a0c2-4a73-9e02-702339cd0dbc', 10, 'Ube Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('aec82f5a-d514-4aa9-ba3c-065ffbabbfea', '1e40f517-3427-4059-afe9-44e84e4257f5', 'Paul Gomez', '+63 9238955036', '355 EDSA, Taguig City', 'Please leave at the lobby.', 540.00, 'delivered', now() - interval '5 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('aec82f5a-d514-4aa9-ba3c-065ffbabbfea', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('aec82f5a-d514-4aa9-ba3c-065ffbabbfea', 7, 'Asado Siopao', 45.00, 4),
  ('aec82f5a-d514-4aa9-ba3c-065ffbabbfea', 11, 'Red Bean Siopao', 45.00, 2),
  ('aec82f5a-d514-4aa9-ba3c-065ffbabbfea', 12, 'Custard Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('859baa04-cd4e-43dd-8e7a-6c84f2b3971c', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '611 Taft Ave, San Juan City', 'Call upon arrival.', 125.00, 'delivered', now() - interval '50 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('859baa04-cd4e-43dd-8e7a-6c84f2b3971c', 1, 'Pork Siomai', 25.00, 4),
  ('859baa04-cd4e-43dd-8e7a-6c84f2b3971c', 2, 'Chicken Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('9391f073-473b-459b-a2fd-dee0f3c365d9', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '796 Ayala Ave, San Juan City', 'Ring the doorbell.', 675.00, 'delivered', now() - interval '44 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('9391f073-473b-459b-a2fd-dee0f3c365d9', 9, 'Choco Siopao', 45.00, 3),
  ('9391f073-473b-459b-a2fd-dee0f3c365d9', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('9391f073-473b-459b-a2fd-dee0f3c365d9', 12, 'Custard Siopao', 45.00, 5),
  ('9391f073-473b-459b-a2fd-dee0f3c365d9', 11, 'Red Bean Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6f4e5bbb-8b7e-4d8e-9cda-a4476269464b', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '291 C5 Road, San Juan City', 'I need this by 12PM.', 180.00, 'delivered', now() - interval '42 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6f4e5bbb-8b7e-4d8e-9cda-a4476269464b', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a8c8e3f3-3dd0-4dda-8351-ffe3a8d28b53', '83cf7a6a-878d-4c5a-806b-b9f60f5493c5', 'Paul Dela Cruz', '+63 9364284175', '457 Roxas Blvd, Muntinlupa City', 'No soy sauce.', 95.00, 'preparing', now() - interval '56 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a8c8e3f3-3dd0-4dda-8351-ffe3a8d28b53', 1, 'Pork Siomai', 25.00, 2),
  ('a8c8e3f3-3dd0-4dda-8351-ffe3a8d28b53', 12, 'Custard Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('301d756e-5ea4-4a2c-b0e8-a9d75ef5c971', '3beb0cee-2839-445b-9bb1-a4d4d5c9bab9', 'Carmen Perez', '+63 9846533716', '460 Shaw Blvd, San Juan City', 'I need this by 12PM.', 545.00, 'delivered', now() - interval '45 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('301d756e-5ea4-4a2c-b0e8-a9d75ef5c971', 6, 'Japanese Siomai', 25.00, 2),
  ('301d756e-5ea4-4a2c-b0e8-a9d75ef5c971', 7, 'Asado Siopao', 45.00, 4),
  ('301d756e-5ea4-4a2c-b0e8-a9d75ef5c971', 10, 'Ube Siopao', 45.00, 4),
  ('301d756e-5ea4-4a2c-b0e8-a9d75ef5c971', 12, 'Custard Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('50c8c098-fd94-4efd-bae7-14ccf4d8f6f4', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '663 Ayala Ave, Paranaque City', '', 90.00, 'pending', now() - interval '47 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('50c8c098-fd94-4efd-bae7-14ccf4d8f6f4', 12, 'Custard Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('efe9b0b7-4345-426d-ac23-a5f23bbf21ca', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '86 Shaw Blvd, Makati City', '', 255.00, 'delivered', now() - interval '17 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('efe9b0b7-4345-426d-ac23-a5f23bbf21ca', 7, 'Asado Siopao', 45.00, 1),
  ('efe9b0b7-4345-426d-ac23-a5f23bbf21ca', 10, 'Ube Siopao', 45.00, 3),
  ('efe9b0b7-4345-426d-ac23-a5f23bbf21ca', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b389d557-c399-4eec-a6c7-8a3f81aa9b6b', 'b64da884-fcfd-4117-baaf-eea831514404', 'Mark Fernandez', '+63 9348587293', '745 Espana Blvd, Quezon City', '', 450.00, 'delivered', now() - interval '3 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b389d557-c399-4eec-a6c7-8a3f81aa9b6b', 12, 'Custard Siopao', 45.00, 4),
  ('b389d557-c399-4eec-a6c7-8a3f81aa9b6b', 11, 'Red Bean Siopao', 45.00, 3),
  ('b389d557-c399-4eec-a6c7-8a3f81aa9b6b', 7, 'Asado Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5d6b959d-f399-476a-9371-0655eb3f7d2f', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '459 Ortigas Ave, Muntinlupa City', 'No soy sauce.', 200.00, 'delivered', now() - interval '42 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5d6b959d-f399-476a-9371-0655eb3f7d2f', 6, 'Japanese Siomai', 25.00, 3),
  ('5d6b959d-f399-476a-9371-0655eb3f7d2f', 2, 'Chicken Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('07c0ec05-7c68-4134-8f2f-58eee5b584b3', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '110 Taft Ave, Paranaque City', 'Please leave at the lobby.', 50.00, 'delivering', now() - interval '20 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('07c0ec05-7c68-4134-8f2f-58eee5b584b3', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('724c15bf-0ff6-4838-848c-3c86c36a980d', '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7', 'Pedro Rivera', '+63 9418752740', '23 EDSA, Mandaluyong City', '', 75.00, 'preparing', now() - interval '17 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('724c15bf-0ff6-4838-848c-3c86c36a980d', 4, 'Tuna Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5ad3df7b-5fb3-43b1-ab8e-9e4b99b33bbb', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '660 Aurora Blvd, Quezon City', 'No soy sauce.', 230.00, 'delivered', now() - interval '21 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5ad3df7b-5fb3-43b1-ab8e-9e4b99b33bbb', 1, 'Pork Siomai', 25.00, 2),
  ('5ad3df7b-5fb3-43b1-ab8e-9e4b99b33bbb', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f610a106-7189-4797-b209-3df4508a2d7e', 'fa07c9b4-4aaf-4d45-9ac6-019e9df01c54', 'Roberto Garcia', '+63 9998114458', '114 C5 Road, Taguig City', '', 330.00, 'pending', now() - interval '35 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f610a106-7189-4797-b209-3df4508a2d7e', 1, 'Pork Siomai', 25.00, 1),
  ('f610a106-7189-4797-b209-3df4508a2d7e', 5, 'Shark''s Fin Siomai', 25.00, 5),
  ('f610a106-7189-4797-b209-3df4508a2d7e', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('14c81590-4531-45aa-85e6-fe7d4c451793', '7e6123c7-d5cc-453d-bd2e-f973966e77bb', 'Javier Cruz', '+63 9632767691', '583 Shaw Blvd, Muntinlupa City', '', 280.00, 'preparing', now() - interval '2 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('14c81590-4531-45aa-85e6-fe7d4c451793', 4, 'Tuna Siomai', 25.00, 1),
  ('14c81590-4531-45aa-85e6-fe7d4c451793', 5, 'Shark''s Fin Siomai', 25.00, 2),
  ('14c81590-4531-45aa-85e6-fe7d4c451793', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('14c81590-4531-45aa-85e6-fe7d4c451793', 6, 'Japanese Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8b58065f-75ee-45fc-8ed6-536510fce754', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'Juan Rivera', '+63 9634614196', '535 C5 Road, Taguig City', '', 135.00, 'delivered', now() - interval '54 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8b58065f-75ee-45fc-8ed6-536510fce754', 7, 'Asado Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a58265ed-111d-4cbf-bf80-0eaec4915da3', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '451 Shaw Blvd, Pasig City', 'Please leave at the lobby.', 90.00, 'delivered', now() - interval '57 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a58265ed-111d-4cbf-bf80-0eaec4915da3', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c371a6fd-c011-4691-bc75-46e424f6ac88', 'b64da884-fcfd-4117-baaf-eea831514404', 'Mark Fernandez', '+63 9348587293', '903 Shaw Blvd, Paranaque City', 'Call upon arrival.', 135.00, 'delivered', now() - interval '18 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c371a6fd-c011-4691-bc75-46e424f6ac88', 11, 'Red Bean Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('640681d8-29cf-4d52-8369-71d8dd899341', '28e041df-ed58-4f58-8423-fff80af4d5eb', 'Carmen Cruz', '+63 9642792171', '649 Espana Blvd, Manila City', '', 260.00, 'cancelled', now() - interval '18 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('640681d8-29cf-4d52-8369-71d8dd899341', 1, 'Pork Siomai', 25.00, 3),
  ('640681d8-29cf-4d52-8369-71d8dd899341', 8, 'Bola-Bola Siopao', 45.00, 3),
  ('640681d8-29cf-4d52-8369-71d8dd899341', 2, 'Chicken Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('9b3da198-d524-44ac-8903-e6dea1c7e2fc', '274ce8da-c7fe-4ca8-9c0a-f4d5d524d0f1', 'Roberto Fernandez', '+63 9531683663', '693 Ortigas Ave, Paranaque City', 'Extra chili oil please.', 75.00, 'delivered', now() - interval '24 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('9b3da198-d524-44ac-8903-e6dea1c7e2fc', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('9b3da198-d524-44ac-8903-e6dea1c7e2fc', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e0b70a36-360c-4637-b026-876d5cf8ee9c', '905e182d-e96d-4ca8-9991-3a94f6d83373', 'Ana Mendoza', '+63 9568517643', '941 Taft Ave, Muntinlupa City', 'Please leave at the lobby.', 290.00, 'delivered', now() - interval '14 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e0b70a36-360c-4637-b026-876d5cf8ee9c', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('e0b70a36-360c-4637-b026-876d5cf8ee9c', 4, 'Tuna Siomai', 25.00, 2),
  ('e0b70a36-360c-4637-b026-876d5cf8ee9c', 2, 'Chicken Siomai', 25.00, 4),
  ('e0b70a36-360c-4637-b026-876d5cf8ee9c', 6, 'Japanese Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('397108fc-d709-4d3f-bd6d-2e2e8f3cfc5e', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '475 Aurora Blvd, Taguig City', 'Ring the doorbell.', 350.00, 'delivered', now() - interval '52 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('397108fc-d709-4d3f-bd6d-2e2e8f3cfc5e', 4, 'Tuna Siomai', 25.00, 3),
  ('397108fc-d709-4d3f-bd6d-2e2e8f3cfc5e', 11, 'Red Bean Siopao', 45.00, 3),
  ('397108fc-d709-4d3f-bd6d-2e2e8f3cfc5e', 3, 'Beef Siomai', 25.00, 2),
  ('397108fc-d709-4d3f-bd6d-2e2e8f3cfc5e', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e4989c70-6cd3-4657-9384-ca4b07a920a6', '2f65aaca-7f5d-4616-bf8d-728a2fc56101', 'Carmen Ocampo', '+63 9737662908', '554 EDSA, Paranaque City', 'I need this by 12PM.', 305.00, 'delivered', now() - interval '25 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e4989c70-6cd3-4657-9384-ca4b07a920a6', 2, 'Chicken Siomai', 25.00, 5),
  ('e4989c70-6cd3-4657-9384-ca4b07a920a6', 12, 'Custard Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('24fe9355-d720-419f-8508-f0d5e97efcca', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '625 Aurora Blvd, Quezon City', 'Ring the doorbell.', 465.00, 'cancelled', now() - interval '19 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('24fe9355-d720-419f-8508-f0d5e97efcca', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('24fe9355-d720-419f-8508-f0d5e97efcca', 1, 'Pork Siomai', 25.00, 3),
  ('24fe9355-d720-419f-8508-f0d5e97efcca', 2, 'Chicken Siomai', 25.00, 3),
  ('24fe9355-d720-419f-8508-f0d5e97efcca', 7, 'Asado Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1cef8560-312f-46ba-810f-aca825dee73a', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '479 Aurora Blvd, Mandaluyong City', '', 100.00, 'delivered', now() - interval '27 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1cef8560-312f-46ba-810f-aca825dee73a', 3, 'Beef Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0d90182e-9de2-422c-a7f1-84c2754be90a', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '937 Ortigas Ave, Muntinlupa City', 'Call upon arrival.', 180.00, 'cancelled', now() - interval '8 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0d90182e-9de2-422c-a7f1-84c2754be90a', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7609f621-9940-49d1-9402-adf70cf30841', '0a8fd3f2-bc60-4ed7-8c38-168c93c15641', 'Ricardo Garcia', '+63 9377602496', '369 Quezon Ave, Quezon City', '', 365.00, 'delivered', now() - interval '52 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7609f621-9940-49d1-9402-adf70cf30841', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('7609f621-9940-49d1-9402-adf70cf30841', 1, 'Pork Siomai', 25.00, 2),
  ('7609f621-9940-49d1-9402-adf70cf30841', 11, 'Red Bean Siopao', 45.00, 2),
  ('7609f621-9940-49d1-9402-adf70cf30841', 12, 'Custard Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('914fdeaa-dfa9-4a67-bbb4-be99f87a2122', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '484 Aurora Blvd, Pasig City', 'Call upon arrival.', 235.00, 'delivering', now() - interval '43 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('914fdeaa-dfa9-4a67-bbb4-be99f87a2122', 2, 'Chicken Siomai', 25.00, 2),
  ('914fdeaa-dfa9-4a67-bbb4-be99f87a2122', 4, 'Tuna Siomai', 25.00, 2),
  ('914fdeaa-dfa9-4a67-bbb4-be99f87a2122', 12, 'Custard Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c13478ca-0e78-4a36-8d2a-e7ac6831a359', 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135', 'Francisco Rizal', '+63 9826155165', '106 Ortigas Ave, Mandaluyong City', '', 45.00, 'delivered', now() - interval '21 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c13478ca-0e78-4a36-8d2a-e7ac6831a359', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c1282b8c-a4de-48f7-809b-2e12a386bf36', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '311 Ayala Ave, Manila City', 'Extra chili oil please.', 175.00, 'cancelled', now() - interval '49 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c1282b8c-a4de-48f7-809b-2e12a386bf36', 3, 'Beef Siomai', 25.00, 5),
  ('c1282b8c-a4de-48f7-809b-2e12a386bf36', 2, 'Chicken Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1902f520-e8c9-4cd9-be14-22b44dc64ea0', '7e41b395-c8aa-4900-ad00-094d3b72abcc', 'Antonio Dela Cruz', '+63 9127433821', '123 Ortigas Ave, Pasig City', '', 430.00, 'delivered', now() - interval '4 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1902f520-e8c9-4cd9-be14-22b44dc64ea0', 4, 'Tuna Siomai', 25.00, 5),
  ('1902f520-e8c9-4cd9-be14-22b44dc64ea0', 3, 'Beef Siomai', 25.00, 5),
  ('1902f520-e8c9-4cd9-be14-22b44dc64ea0', 10, 'Ube Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('819a9c35-29b5-4319-88b2-0b944b55e626', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '369 Ayala Ave, San Juan City', 'Leave at the gate.', 200.00, 'delivered', now() - interval '37 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('819a9c35-29b5-4319-88b2-0b944b55e626', 6, 'Japanese Siomai', 25.00, 5),
  ('819a9c35-29b5-4319-88b2-0b944b55e626', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a9a667bf-84e5-48e7-858b-e6d338a78808', 'ab7ba6a4-a4d3-449c-9f56-94969f427eae', 'Ana Dela Cruz', '+63 9403416038', '548 Espana Blvd, Quezon City', '', 50.00, 'delivered', now() - interval '49 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a9a667bf-84e5-48e7-858b-e6d338a78808', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5d6078ec-4090-4505-b994-99af1f8d7e9b', '83cf7a6a-878d-4c5a-806b-b9f60f5493c5', 'Paul Dela Cruz', '+63 9364284175', '573 Taft Ave, Mandaluyong City', 'Ring the doorbell.', 475.00, 'cancelled', now() - interval '29 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5d6078ec-4090-4505-b994-99af1f8d7e9b', 1, 'Pork Siomai', 25.00, 2),
  ('5d6078ec-4090-4505-b994-99af1f8d7e9b', 10, 'Ube Siopao', 45.00, 5),
  ('5d6078ec-4090-4505-b994-99af1f8d7e9b', 2, 'Chicken Siomai', 25.00, 5),
  ('5d6078ec-4090-4505-b994-99af1f8d7e9b', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f3b8e6f7-0e6d-4b37-adf1-3f8296b67e86', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '620 Quezon Ave, Quezon City', 'Call upon arrival.', 325.00, 'delivered', now() - interval '0 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f3b8e6f7-0e6d-4b37-adf1-3f8296b67e86', 4, 'Tuna Siomai', 25.00, 4),
  ('f3b8e6f7-0e6d-4b37-adf1-3f8296b67e86', 5, 'Shark''s Fin Siomai', 25.00, 2),
  ('f3b8e6f7-0e6d-4b37-adf1-3f8296b67e86', 6, 'Japanese Siomai', 25.00, 4),
  ('f3b8e6f7-0e6d-4b37-adf1-3f8296b67e86', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ace45933-1322-40df-ac87-cc08308d549d', '4ee87f43-0284-4d16-869a-6996b969cf28', 'Jose Cruz', '+63 9319292746', '860 Ayala Ave, Muntinlupa City', '', 225.00, 'cancelled', now() - interval '57 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ace45933-1322-40df-ac87-cc08308d549d', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('84a52c1e-b408-4a07-a7a5-cd57d1c1d000', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '618 Roxas Blvd, Quezon City', '', 335.00, 'delivered', now() - interval '29 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('84a52c1e-b408-4a07-a7a5-cd57d1c1d000', 3, 'Beef Siomai', 25.00, 4),
  ('84a52c1e-b408-4a07-a7a5-cd57d1c1d000', 1, 'Pork Siomai', 25.00, 4),
  ('84a52c1e-b408-4a07-a7a5-cd57d1c1d000', 8, 'Bola-Bola Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5076cd77-09d2-4bce-98f9-3a64ea280010', '301e3595-c9e6-4712-9bc5-c986d353a751', 'Mark Dela Cruz', '+63 9523535959', '140 Shaw Blvd, Makati City', 'Extra chili oil please.', 200.00, 'delivered', now() - interval '31 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5076cd77-09d2-4bce-98f9-3a64ea280010', 6, 'Japanese Siomai', 25.00, 5),
  ('5076cd77-09d2-4bce-98f9-3a64ea280010', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('cf1f14eb-8510-46a6-bb97-74855b3526e6', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '707 Aurora Blvd, Quezon City', 'Ring the doorbell.', 255.00, 'delivered', now() - interval '20 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('cf1f14eb-8510-46a6-bb97-74855b3526e6', 5, 'Shark''s Fin Siomai', 25.00, 3),
  ('cf1f14eb-8510-46a6-bb97-74855b3526e6', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('236f709e-3aa2-49c0-be42-5671e22fb562', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '301 EDSA, Manila City', 'I need this by 12PM.', 140.00, 'delivered', now() - interval '33 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('236f709e-3aa2-49c0-be42-5671e22fb562', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('236f709e-3aa2-49c0-be42-5671e22fb562', 5, 'Shark''s Fin Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0a78ec47-aa52-48ea-a5f0-43767336ad79', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '264 Espana Blvd, Mandaluyong City', '', 180.00, 'delivered', now() - interval '51 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0a78ec47-aa52-48ea-a5f0-43767336ad79', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4d94ba8e-c99f-4797-be86-b7271b593ba4', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '190 Ayala Ave, Taguig City', '', 405.00, 'pending', now() - interval '7 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4d94ba8e-c99f-4797-be86-b7271b593ba4', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('4d94ba8e-c99f-4797-be86-b7271b593ba4', 9, 'Choco Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c80263a1-577a-4d99-a54d-9be5ff97f5a0', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '996 Shaw Blvd, Makati City', '', 100.00, 'pending', now() - interval '52 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c80263a1-577a-4d99-a54d-9be5ff97f5a0', 5, 'Shark''s Fin Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('268eb73e-b31c-4d9e-a74d-2c6b76a7ed85', '530e0d5d-f37a-4d28-bf10-6acbbf2cd989', 'Carlos Ocampo', '+63 9436801555', '838 Aurora Blvd, Muntinlupa City', '', 75.00, 'delivered', now() - interval '29 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('268eb73e-b31c-4d9e-a74d-2c6b76a7ed85', 4, 'Tuna Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8940f101-bf5d-4242-bbd3-1b8394cf6ca0', 'ab7ba6a4-a4d3-449c-9f56-94969f427eae', 'Ana Dela Cruz', '+63 9403416038', '643 Quezon Ave, Pasig City', 'No soy sauce.', 50.00, 'preparing', now() - interval '52 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8940f101-bf5d-4242-bbd3-1b8394cf6ca0', 4, 'Tuna Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('3d40f99a-48a1-4b43-bd5a-ff2b0bfd6304', '51b4df1e-fedf-4ec8-97eb-8083c6f84012', 'Juan Gomez', '+63 9893300276', '600 Taft Ave, Paranaque City', '', 300.00, 'cancelled', now() - interval '19 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('3d40f99a-48a1-4b43-bd5a-ff2b0bfd6304', 12, 'Custard Siopao', 45.00, 2),
  ('3d40f99a-48a1-4b43-bd5a-ff2b0bfd6304', 10, 'Ube Siopao', 45.00, 2),
  ('3d40f99a-48a1-4b43-bd5a-ff2b0bfd6304', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('3d40f99a-48a1-4b43-bd5a-ff2b0bfd6304', 6, 'Japanese Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('df8e3049-b890-4ec4-a9f7-e0de577b3d80', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '911 Shaw Blvd, Mandaluyong City', '', 45.00, 'delivered', now() - interval '34 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('df8e3049-b890-4ec4-a9f7-e0de577b3d80', 7, 'Asado Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a009f2e6-0fbd-4b95-900c-e6b297e858c6', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '54 Aurora Blvd, Quezon City', 'Leave at the gate.', 400.00, 'delivered', now() - interval '0 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a009f2e6-0fbd-4b95-900c-e6b297e858c6', 3, 'Beef Siomai', 25.00, 4),
  ('a009f2e6-0fbd-4b95-900c-e6b297e858c6', 6, 'Japanese Siomai', 25.00, 3),
  ('a009f2e6-0fbd-4b95-900c-e6b297e858c6', 12, 'Custard Siopao', 45.00, 3),
  ('a009f2e6-0fbd-4b95-900c-e6b297e858c6', 11, 'Red Bean Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('86edd3a1-43b5-4921-ac9c-b69435573ea7', '2ff4f21c-36cd-4cfe-94aa-ffd3cbfc859d', 'Ricardo Ramirez', '+63 9482882790', '899 Taft Ave, Paranaque City', 'I need this by 12PM.', 125.00, 'delivered', now() - interval '26 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('86edd3a1-43b5-4921-ac9c-b69435573ea7', 2, 'Chicken Siomai', 25.00, 1),
  ('86edd3a1-43b5-4921-ac9c-b69435573ea7', 5, 'Shark''s Fin Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('95584914-a181-45ab-a1d9-b16d67e82bcf', 'b64da884-fcfd-4117-baaf-eea831514404', 'Mark Fernandez', '+63 9348587293', '687 Quezon Ave, Manila City', 'I need this by 12PM.', 270.00, 'delivered', now() - interval '47 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('95584914-a181-45ab-a1d9-b16d67e82bcf', 9, 'Choco Siopao', 45.00, 1),
  ('95584914-a181-45ab-a1d9-b16d67e82bcf', 4, 'Tuna Siomai', 25.00, 5),
  ('95584914-a181-45ab-a1d9-b16d67e82bcf', 6, 'Japanese Siomai', 25.00, 1),
  ('95584914-a181-45ab-a1d9-b16d67e82bcf', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7234d9f0-fad4-4f0e-8208-66b3579f7f68', '1e40f517-3427-4059-afe9-44e84e4257f5', 'Paul Gomez', '+63 9238955036', '420 Ayala Ave, Paranaque City', 'Please leave at the lobby.', 100.00, 'delivered', now() - interval '13 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7234d9f0-fad4-4f0e-8208-66b3579f7f68', 5, 'Shark''s Fin Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('19672f3e-2cb8-4806-9bf0-45b8e89350f8', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '823 Espana Blvd, Manila City', 'Leave at the gate.', 410.00, 'delivered', now() - interval '45 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('19672f3e-2cb8-4806-9bf0-45b8e89350f8', 1, 'Pork Siomai', 25.00, 2),
  ('19672f3e-2cb8-4806-9bf0-45b8e89350f8', 12, 'Custard Siopao', 45.00, 3),
  ('19672f3e-2cb8-4806-9bf0-45b8e89350f8', 9, 'Choco Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('331298ab-96fa-48cd-95e3-a193fe2f25da', '2b16a83a-d3aa-43cd-9e4e-308f4f0b48fe', 'Paul Bautista', '+63 9688720824', '95 Ortigas Ave, Makati City', '', 75.00, 'delivered', now() - interval '40 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('331298ab-96fa-48cd-95e3-a193fe2f25da', 4, 'Tuna Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('46c67238-5b77-4fda-9361-4d2f163033aa', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '260 C5 Road, Makati City', 'No soy sauce.', 100.00, 'delivering', now() - interval '34 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('46c67238-5b77-4fda-9361-4d2f163033aa', 1, 'Pork Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('9fed0e8f-e04e-48ed-b59d-6bbb5fd5cd1c', '3beb0cee-2839-445b-9bb1-a4d4d5c9bab9', 'Carmen Perez', '+63 9846533716', '383 Ayala Ave, Quezon City', 'Ring the doorbell.', 385.00, 'delivered', now() - interval '18 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('9fed0e8f-e04e-48ed-b59d-6bbb5fd5cd1c', 1, 'Pork Siomai', 25.00, 5),
  ('9fed0e8f-e04e-48ed-b59d-6bbb5fd5cd1c', 11, 'Red Bean Siopao', 45.00, 3),
  ('9fed0e8f-e04e-48ed-b59d-6bbb5fd5cd1c', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('16fddf50-8952-4916-977f-299aff6c644a', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '145 Shaw Blvd, Paranaque City', 'Call upon arrival.', 125.00, 'delivered', now() - interval '21 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('16fddf50-8952-4916-977f-299aff6c644a', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('196666ed-4639-4a83-8898-351d6e94c51f', '92548978-1693-44bd-b7b9-49a92393d843', 'Manuel Garcia', '+63 9838305407', '860 C5 Road, San Juan City', 'No soy sauce.', 355.00, 'delivered', now() - interval '10 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('196666ed-4639-4a83-8898-351d6e94c51f', 3, 'Beef Siomai', 25.00, 3),
  ('196666ed-4639-4a83-8898-351d6e94c51f', 6, 'Japanese Siomai', 25.00, 4),
  ('196666ed-4639-4a83-8898-351d6e94c51f', 12, 'Custard Siopao', 45.00, 1),
  ('196666ed-4639-4a83-8898-351d6e94c51f', 11, 'Red Bean Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0516fc7c-9ea8-4122-aa8a-806db973eab8', '530e0d5d-f37a-4d28-bf10-6acbbf2cd989', 'Carlos Ocampo', '+63 9436801555', '946 Roxas Blvd, Makati City', '', 400.00, 'delivered', now() - interval '57 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0516fc7c-9ea8-4122-aa8a-806db973eab8', 4, 'Tuna Siomai', 25.00, 3),
  ('0516fc7c-9ea8-4122-aa8a-806db973eab8', 1, 'Pork Siomai', 25.00, 3),
  ('0516fc7c-9ea8-4122-aa8a-806db973eab8', 3, 'Beef Siomai', 25.00, 1),
  ('0516fc7c-9ea8-4122-aa8a-806db973eab8', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('cab57e4d-9480-469f-8bd0-deafee2eaafb', 'ca4cc8a1-6358-46ad-89d5-58530725185b', 'Luis Cruz', '+63 9601569482', '836 Ortigas Ave, San Juan City', '', 75.00, 'preparing', now() - interval '21 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('cab57e4d-9480-469f-8bd0-deafee2eaafb', 2, 'Chicken Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a82afafb-6921-4df8-95bb-2a51d97db08e', '92548978-1693-44bd-b7b9-49a92393d843', 'Manuel Garcia', '+63 9838305407', '822 Quezon Ave, Mandaluyong City', 'Extra chili oil please.', 405.00, 'delivered', now() - interval '19 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a82afafb-6921-4df8-95bb-2a51d97db08e', 4, 'Tuna Siomai', 25.00, 5),
  ('a82afafb-6921-4df8-95bb-2a51d97db08e', 2, 'Chicken Siomai', 25.00, 4),
  ('a82afafb-6921-4df8-95bb-2a51d97db08e', 12, 'Custard Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('049bd70a-39c0-4879-b91e-410bb8db10a1', 'ee0c57fd-3322-4728-b074-7dbbe85857ea', 'Teresa Fernandez', '+63 9152623912', '680 EDSA, Quezon City', '', 125.00, 'delivered', now() - interval '38 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('049bd70a-39c0-4879-b91e-410bb8db10a1', 4, 'Tuna Siomai', 25.00, 3),
  ('049bd70a-39c0-4879-b91e-410bb8db10a1', 3, 'Beef Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('521c600a-4e6b-44fb-9574-4b8bbdae1d77', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '903 C5 Road, Makati City', 'Extra chili oil please.', 250.00, 'pending', now() - interval '17 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('521c600a-4e6b-44fb-9574-4b8bbdae1d77', 5, 'Shark''s Fin Siomai', 25.00, 5),
  ('521c600a-4e6b-44fb-9574-4b8bbdae1d77', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('43a8044b-dfe0-4020-9122-1749e9647d24', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '981 EDSA, Taguig City', '', 135.00, 'delivered', now() - interval '40 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('43a8044b-dfe0-4020-9122-1749e9647d24', 12, 'Custard Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('dd73510d-3a63-4825-86cf-fe9b08620907', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '921 Espana Blvd, Taguig City', 'Leave at the gate.', 205.00, 'delivered', now() - interval '52 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('dd73510d-3a63-4825-86cf-fe9b08620907', 10, 'Ube Siopao', 45.00, 4),
  ('dd73510d-3a63-4825-86cf-fe9b08620907', 1, 'Pork Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4595da58-937a-4dad-9c20-c941926569cb', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '400 EDSA, Quezon City', 'Ring the doorbell.', 200.00, 'delivered', now() - interval '9 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4595da58-937a-4dad-9c20-c941926569cb', 1, 'Pork Siomai', 25.00, 4),
  ('4595da58-937a-4dad-9c20-c941926569cb', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('11309385-4387-4810-a0d4-fe2a0812e692', 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135', 'Francisco Rizal', '+63 9826155165', '920 Ayala Ave, Mandaluyong City', 'Leave at the gate.', 385.00, 'delivered', now() - interval '56 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('11309385-4387-4810-a0d4-fe2a0812e692', 10, 'Ube Siopao', 45.00, 5),
  ('11309385-4387-4810-a0d4-fe2a0812e692', 4, 'Tuna Siomai', 25.00, 1),
  ('11309385-4387-4810-a0d4-fe2a0812e692', 11, 'Red Bean Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('baaba485-1f59-402c-bb0b-dc094ee90c7e', '7e6123c7-d5cc-453d-bd2e-f973966e77bb', 'Javier Cruz', '+63 9632767691', '918 Ayala Ave, Makati City', 'I need this by 12PM.', 305.00, 'delivered', now() - interval '15 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('baaba485-1f59-402c-bb0b-dc094ee90c7e', 4, 'Tuna Siomai', 25.00, 2),
  ('baaba485-1f59-402c-bb0b-dc094ee90c7e', 10, 'Ube Siopao', 45.00, 4),
  ('baaba485-1f59-402c-bb0b-dc094ee90c7e', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('36268dff-c74d-45af-a131-a9edf3e1bb0e', 'fe0f525b-2606-48d8-be2c-a1248079118e', 'Juan Rivera', '+63 9634614196', '331 Quezon Ave, San Juan City', 'No soy sauce.', 355.00, 'delivered', now() - interval '0 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('36268dff-c74d-45af-a131-a9edf3e1bb0e', 7, 'Asado Siopao', 45.00, 4),
  ('36268dff-c74d-45af-a131-a9edf3e1bb0e', 4, 'Tuna Siomai', 25.00, 2),
  ('36268dff-c74d-45af-a131-a9edf3e1bb0e', 1, 'Pork Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1002e4a7-a318-4322-9f72-64f33e12321e', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '678 C5 Road, Manila City', '', 125.00, 'delivered', now() - interval '21 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1002e4a7-a318-4322-9f72-64f33e12321e', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('913579ad-3a5d-4568-92aa-acc6e07e68e2', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '169 Taft Ave, Quezon City', 'Call upon arrival.', 470.00, 'delivered', now() - interval '10 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('913579ad-3a5d-4568-92aa-acc6e07e68e2', 7, 'Asado Siopao', 45.00, 1),
  ('913579ad-3a5d-4568-92aa-acc6e07e68e2', 12, 'Custard Siopao', 45.00, 5),
  ('913579ad-3a5d-4568-92aa-acc6e07e68e2', 4, 'Tuna Siomai', 25.00, 4),
  ('913579ad-3a5d-4568-92aa-acc6e07e68e2', 3, 'Beef Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8433fe42-6b7c-402f-ae06-20b6319e8571', 'a7526055-3dfe-4aba-94fa-754491ac4cd3', 'Paul Bautista', '+63 9900749205', '662 Ortigas Ave, Muntinlupa City', 'Please leave at the lobby.', 275.00, 'cancelled', now() - interval '37 days 4 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8433fe42-6b7c-402f-ae06-20b6319e8571', 3, 'Beef Siomai', 25.00, 4),
  ('8433fe42-6b7c-402f-ae06-20b6319e8571', 2, 'Chicken Siomai', 25.00, 5),
  ('8433fe42-6b7c-402f-ae06-20b6319e8571', 6, 'Japanese Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4b370ff6-cbdb-45d2-b429-d4864045b697', '9a246f71-53f2-4663-9e16-c0ef3da8fda3', 'Miguel Torres', '+63 9796155100', '168 Taft Ave, Muntinlupa City', '', 455.00, 'delivered', now() - interval '4 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4b370ff6-cbdb-45d2-b429-d4864045b697', 3, 'Beef Siomai', 25.00, 2),
  ('4b370ff6-cbdb-45d2-b429-d4864045b697', 7, 'Asado Siopao', 45.00, 4),
  ('4b370ff6-cbdb-45d2-b429-d4864045b697', 10, 'Ube Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ac7773bf-0732-457e-a942-8639038b75db', 'a7526055-3dfe-4aba-94fa-754491ac4cd3', 'Paul Bautista', '+63 9900749205', '542 Espana Blvd, San Juan City', 'Extra chili oil please.', 90.00, 'delivered', now() - interval '24 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ac7773bf-0732-457e-a942-8639038b75db', 7, 'Asado Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('fc50cdb4-86b4-43ab-bff2-886e18eff7e2', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '620 EDSA, Mandaluyong City', 'Leave at the gate.', 340.00, 'delivered', now() - interval '23 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('fc50cdb4-86b4-43ab-bff2-886e18eff7e2', 2, 'Chicken Siomai', 25.00, 5),
  ('fc50cdb4-86b4-43ab-bff2-886e18eff7e2', 8, 'Bola-Bola Siopao', 45.00, 1),
  ('fc50cdb4-86b4-43ab-bff2-886e18eff7e2', 6, 'Japanese Siomai', 25.00, 5),
  ('fc50cdb4-86b4-43ab-bff2-886e18eff7e2', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('dd55c680-20bd-4cd0-ae0f-7ddd8e22b854', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '601 Ayala Ave, Quezon City', '', 75.00, 'cancelled', now() - interval '56 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('dd55c680-20bd-4cd0-ae0f-7ddd8e22b854', 4, 'Tuna Siomai', 25.00, 1),
  ('dd55c680-20bd-4cd0-ae0f-7ddd8e22b854', 3, 'Beef Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('53e494fc-a55b-4ed7-a3ca-d7477306027b', '530e0d5d-f37a-4d28-bf10-6acbbf2cd989', 'Carlos Ocampo', '+63 9436801555', '412 Aurora Blvd, Manila City', 'Extra chili oil please.', 250.00, 'cancelled', now() - interval '18 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('53e494fc-a55b-4ed7-a3ca-d7477306027b', 2, 'Chicken Siomai', 25.00, 1),
  ('53e494fc-a55b-4ed7-a3ca-d7477306027b', 9, 'Choco Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('eee1e5e0-5def-4fdf-be29-68a08a6acdc6', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '496 Espana Blvd, Paranaque City', '', 350.00, 'preparing', now() - interval '37 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('eee1e5e0-5def-4fdf-be29-68a08a6acdc6', 4, 'Tuna Siomai', 25.00, 3),
  ('eee1e5e0-5def-4fdf-be29-68a08a6acdc6', 3, 'Beef Siomai', 25.00, 3),
  ('eee1e5e0-5def-4fdf-be29-68a08a6acdc6', 1, 'Pork Siomai', 25.00, 3),
  ('eee1e5e0-5def-4fdf-be29-68a08a6acdc6', 2, 'Chicken Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1c17314b-638b-4832-9c20-cbafd6508790', 'ca4cc8a1-6358-46ad-89d5-58530725185b', 'Luis Cruz', '+63 9601569482', '224 Ayala Ave, San Juan City', '', 360.00, 'preparing', now() - interval '51 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1c17314b-638b-4832-9c20-cbafd6508790', 8, 'Bola-Bola Siopao', 45.00, 3),
  ('1c17314b-638b-4832-9c20-cbafd6508790', 7, 'Asado Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('cc2e9e5a-6a7e-4aeb-a200-f5d7240d58c1', '2ff4f21c-36cd-4cfe-94aa-ffd3cbfc859d', 'Ricardo Ramirez', '+63 9482882790', '620 Ortigas Ave, Muntinlupa City', 'Extra chili oil please.', 315.00, 'pending', now() - interval '8 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('cc2e9e5a-6a7e-4aeb-a200-f5d7240d58c1', 4, 'Tuna Siomai', 25.00, 1),
  ('cc2e9e5a-6a7e-4aeb-a200-f5d7240d58c1', 6, 'Japanese Siomai', 25.00, 5),
  ('cc2e9e5a-6a7e-4aeb-a200-f5d7240d58c1', 12, 'Custard Siopao', 45.00, 2),
  ('cc2e9e5a-6a7e-4aeb-a200-f5d7240d58c1', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f4e3dff9-c234-46e6-bde9-9b23f5088647', '7e41b395-c8aa-4900-ad00-094d3b72abcc', 'Antonio Dela Cruz', '+63 9127433821', '352 Shaw Blvd, Manila City', 'Leave at the gate.', 125.00, 'cancelled', now() - interval '40 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f4e3dff9-c234-46e6-bde9-9b23f5088647', 1, 'Pork Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('3d7a046e-a5b1-4818-9a0f-53d01994db7e', '28e041df-ed58-4f58-8423-fff80af4d5eb', 'Carmen Cruz', '+63 9642792171', '495 Espana Blvd, Taguig City', '', 250.00, 'delivered', now() - interval '21 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('3d7a046e-a5b1-4818-9a0f-53d01994db7e', 1, 'Pork Siomai', 25.00, 5),
  ('3d7a046e-a5b1-4818-9a0f-53d01994db7e', 3, 'Beef Siomai', 25.00, 2),
  ('3d7a046e-a5b1-4818-9a0f-53d01994db7e', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7b0b3b0b-28c8-4a69-922f-023a1c2df6eb', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '185 Espana Blvd, San Juan City', 'Please leave at the lobby.', 100.00, 'delivered', now() - interval '31 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7b0b3b0b-28c8-4a69-922f-023a1c2df6eb', 6, 'Japanese Siomai', 25.00, 1),
  ('7b0b3b0b-28c8-4a69-922f-023a1c2df6eb', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ec0c0660-fb5b-4e32-a06a-909b6f622a78', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '957 Taft Ave, Pasig City', 'Leave at the gate.', 235.00, 'delivered', now() - interval '42 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ec0c0660-fb5b-4e32-a06a-909b6f622a78', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('ec0c0660-fb5b-4e32-a06a-909b6f622a78', 3, 'Beef Siomai', 25.00, 3),
  ('ec0c0660-fb5b-4e32-a06a-909b6f622a78', 9, 'Choco Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('06adfd4b-2119-4655-8011-3b0a1d37f994', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '134 C5 Road, Muntinlupa City', '', 225.00, 'delivered', now() - interval '45 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('06adfd4b-2119-4655-8011-3b0a1d37f994', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7cd5af40-685e-4f6c-9c3e-e025779a6997', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '108 Roxas Blvd, Makati City', 'Ring the doorbell.', 180.00, 'delivered', now() - interval '36 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7cd5af40-685e-4f6c-9c3e-e025779a6997', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('7cd5af40-685e-4f6c-9c3e-e025779a6997', 7, 'Asado Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('edebbb17-d870-4905-b47a-ca8c8a200377', '4ee87f43-0284-4d16-869a-6996b969cf28', 'Jose Cruz', '+63 9319292746', '177 Ayala Ave, Pasig City', '', 395.00, 'delivered', now() - interval '55 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('edebbb17-d870-4905-b47a-ca8c8a200377', 10, 'Ube Siopao', 45.00, 2),
  ('edebbb17-d870-4905-b47a-ca8c8a200377', 4, 'Tuna Siomai', 25.00, 5),
  ('edebbb17-d870-4905-b47a-ca8c8a200377', 11, 'Red Bean Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8012f771-979b-4126-84d7-c11a0d9a23f9', 'ca4cc8a1-6358-46ad-89d5-58530725185b', 'Luis Cruz', '+63 9601569482', '53 Ortigas Ave, Taguig City', 'Please leave at the lobby.', 350.00, 'delivered', now() - interval '33 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8012f771-979b-4126-84d7-c11a0d9a23f9', 9, 'Choco Siopao', 45.00, 5),
  ('8012f771-979b-4126-84d7-c11a0d9a23f9', 6, 'Japanese Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('bf623e60-4e9c-42ef-a3d0-449bfd16ee4c', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '284 Espana Blvd, Makati City', 'Call upon arrival.', 125.00, 'delivered', now() - interval '52 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('bf623e60-4e9c-42ef-a3d0-449bfd16ee4c', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('3e44410a-aba9-451c-986c-2ee2854d8630', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '965 Taft Ave, Taguig City', 'Please leave at the lobby.', 300.00, 'delivered', now() - interval '54 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('3e44410a-aba9-451c-986c-2ee2854d8630', 10, 'Ube Siopao', 45.00, 5),
  ('3e44410a-aba9-451c-986c-2ee2854d8630', 6, 'Japanese Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('edfdfbfc-ffa5-4dc6-81c6-bb0506b64d6b', '7e41b395-c8aa-4900-ad00-094d3b72abcc', 'Antonio Dela Cruz', '+63 9127433821', '198 Shaw Blvd, Manila City', '', 315.00, 'pending', now() - interval '58 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('edfdfbfc-ffa5-4dc6-81c6-bb0506b64d6b', 7, 'Asado Siopao', 45.00, 2),
  ('edfdfbfc-ffa5-4dc6-81c6-bb0506b64d6b', 12, 'Custard Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('fa0d5068-3755-478e-8cb4-698ac5363dbd', '9f0bb3ce-3233-44cd-a2d5-ac99a1f71538', 'Miguel Rizal', '+63 9731784710', '430 Roxas Blvd, San Juan City', 'Please leave at the lobby.', 205.00, 'delivered', now() - interval '37 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('fa0d5068-3755-478e-8cb4-698ac5363dbd', 1, 'Pork Siomai', 25.00, 1),
  ('fa0d5068-3755-478e-8cb4-698ac5363dbd', 9, 'Choco Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b004aae1-5ccd-4a5f-8430-19057467d154', '7c958610-38b2-465a-909e-dce129cac5b3', 'Luis Rivera', '+63 9272802896', '880 Espana Blvd, Quezon City', '', 260.00, 'delivered', now() - interval '46 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b004aae1-5ccd-4a5f-8430-19057467d154', 7, 'Asado Siopao', 45.00, 3),
  ('b004aae1-5ccd-4a5f-8430-19057467d154', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('64f9c42a-8b71-4303-9422-8497616db078', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '851 Aurora Blvd, Taguig City', '', 455.00, 'delivered', now() - interval '42 days 23 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('64f9c42a-8b71-4303-9422-8497616db078', 8, 'Bola-Bola Siopao', 45.00, 4),
  ('64f9c42a-8b71-4303-9422-8497616db078', 10, 'Ube Siopao', 45.00, 5),
  ('64f9c42a-8b71-4303-9422-8497616db078', 3, 'Beef Siomai', 25.00, 1),
  ('64f9c42a-8b71-4303-9422-8497616db078', 2, 'Chicken Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7951885a-f075-4031-88b3-d98bec8ddc33', '530e0d5d-f37a-4d28-bf10-6acbbf2cd989', 'Carlos Ocampo', '+63 9436801555', '653 Ortigas Ave, Taguig City', '', 270.00, 'delivered', now() - interval '18 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7951885a-f075-4031-88b3-d98bec8ddc33', 7, 'Asado Siopao', 45.00, 1),
  ('7951885a-f075-4031-88b3-d98bec8ddc33', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('31085f70-b992-479c-bf30-e730315741c0', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '914 Espana Blvd, Makati City', 'No soy sauce.', 385.00, 'pending', now() - interval '32 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('31085f70-b992-479c-bf30-e730315741c0', 4, 'Tuna Siomai', 25.00, 1),
  ('31085f70-b992-479c-bf30-e730315741c0', 11, 'Red Bean Siopao', 45.00, 4),
  ('31085f70-b992-479c-bf30-e730315741c0', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('9f374b2a-050a-405d-b522-a6ff1c2c79e5', '905e182d-e96d-4ca8-9991-3a94f6d83373', 'Ana Mendoza', '+63 9568517643', '42 Roxas Blvd, Taguig City', '', 225.00, 'delivered', now() - interval '15 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('9f374b2a-050a-405d-b522-a6ff1c2c79e5', 4, 'Tuna Siomai', 25.00, 4),
  ('9f374b2a-050a-405d-b522-a6ff1c2c79e5', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2008a2ca-bf09-4b10-bfdf-038e5dcfa041', 'ca4cc8a1-6358-46ad-89d5-58530725185b', 'Luis Cruz', '+63 9601569482', '496 Shaw Blvd, Pasig City', '', 175.00, 'delivered', now() - interval '23 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2008a2ca-bf09-4b10-bfdf-038e5dcfa041', 2, 'Chicken Siomai', 25.00, 3),
  ('2008a2ca-bf09-4b10-bfdf-038e5dcfa041', 6, 'Japanese Siomai', 25.00, 1),
  ('2008a2ca-bf09-4b10-bfdf-038e5dcfa041', 4, 'Tuna Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('619fe3e2-f7fe-4eb6-a7dc-d04c721c9184', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '561 Shaw Blvd, Makati City', 'No soy sauce.', 475.00, 'preparing', now() - interval '56 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('619fe3e2-f7fe-4eb6-a7dc-d04c721c9184', 5, 'Shark''s Fin Siomai', 25.00, 5),
  ('619fe3e2-f7fe-4eb6-a7dc-d04c721c9184', 3, 'Beef Siomai', 25.00, 2),
  ('619fe3e2-f7fe-4eb6-a7dc-d04c721c9184', 4, 'Tuna Siomai', 25.00, 3),
  ('619fe3e2-f7fe-4eb6-a7dc-d04c721c9184', 10, 'Ube Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6688c2ea-5549-4fd8-bbd9-6f0d8adebbb0', '4645611f-1d66-4780-899a-929d39d9a150', 'Antonio Gonzales', '+63 9669353021', '32 Ayala Ave, Pasig City', '', 50.00, 'delivered', now() - interval '0 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6688c2ea-5549-4fd8-bbd9-6f0d8adebbb0', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f26e03b4-c554-4dcb-89a5-49019c952f82', '63f3d871-11f2-4720-8edb-821f8276fa6f', 'Rosa Cruz', '+63 9710023969', '971 Quezon Ave, San Juan City', '', 415.00, 'delivered', now() - interval '31 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f26e03b4-c554-4dcb-89a5-49019c952f82', 10, 'Ube Siopao', 45.00, 3),
  ('f26e03b4-c554-4dcb-89a5-49019c952f82', 6, 'Japanese Siomai', 25.00, 4),
  ('f26e03b4-c554-4dcb-89a5-49019c952f82', 9, 'Choco Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a70244cc-43f3-4583-96b6-a8ac56048b2a', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '43 Aurora Blvd, Manila City', 'Ring the doorbell.', 315.00, 'cancelled', now() - interval '1 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a70244cc-43f3-4583-96b6-a8ac56048b2a', 12, 'Custard Siopao', 45.00, 4),
  ('a70244cc-43f3-4583-96b6-a8ac56048b2a', 8, 'Bola-Bola Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8a7566a4-f67b-41e9-ab5d-77a307643444', '3887a8d3-aaa2-429d-9481-1cd3d91a6b77', 'Francisco Rizal', '+63 9121526062', '620 Espana Blvd, Muntinlupa City', '', 285.00, 'delivered', now() - interval '12 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8a7566a4-f67b-41e9-ab5d-77a307643444', 2, 'Chicken Siomai', 25.00, 2),
  ('8a7566a4-f67b-41e9-ab5d-77a307643444', 6, 'Japanese Siomai', 25.00, 4),
  ('8a7566a4-f67b-41e9-ab5d-77a307643444', 10, 'Ube Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('24c5ce4c-4699-4b9d-af6e-7348514cb76d', 'ab7ba6a4-a4d3-449c-9f56-94969f427eae', 'Ana Dela Cruz', '+63 9403416038', '781 Aurora Blvd, San Juan City', 'Please leave at the lobby.', 310.00, 'delivered', now() - interval '10 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('24c5ce4c-4699-4b9d-af6e-7348514cb76d', 12, 'Custard Siopao', 45.00, 3),
  ('24c5ce4c-4699-4b9d-af6e-7348514cb76d', 2, 'Chicken Siomai', 25.00, 3),
  ('24c5ce4c-4699-4b9d-af6e-7348514cb76d', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a65cd4e7-ac9d-4c9d-9f6a-08b8e1752c29', '7e41b395-c8aa-4900-ad00-094d3b72abcc', 'Antonio Dela Cruz', '+63 9127433821', '822 Ayala Ave, Makati City', 'Please leave at the lobby.', 210.00, 'delivering', now() - interval '23 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a65cd4e7-ac9d-4c9d-9f6a-08b8e1752c29', 12, 'Custard Siopao', 45.00, 3),
  ('a65cd4e7-ac9d-4c9d-9f6a-08b8e1752c29', 1, 'Pork Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('6820affa-abd5-4d4d-a890-9b8694176a6b', 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135', 'Francisco Rizal', '+63 9826155165', '89 C5 Road, Quezon City', '', 300.00, 'delivered', now() - interval '21 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('6820affa-abd5-4d4d-a890-9b8694176a6b', 6, 'Japanese Siomai', 25.00, 4),
  ('6820affa-abd5-4d4d-a890-9b8694176a6b', 1, 'Pork Siomai', 25.00, 3),
  ('6820affa-abd5-4d4d-a890-9b8694176a6b', 4, 'Tuna Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('896a8922-a2b9-47c9-9a47-3aebbba3e717', 'c315d8cd-0c4b-46b9-b31e-be08e1bc69e0', 'Pedro Rivera', '+63 9780746951', '719 Aurora Blvd, Pasig City', '', 530.00, 'delivered', now() - interval '57 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('896a8922-a2b9-47c9-9a47-3aebbba3e717', 4, 'Tuna Siomai', 25.00, 5),
  ('896a8922-a2b9-47c9-9a47-3aebbba3e717', 9, 'Choco Siopao', 45.00, 4),
  ('896a8922-a2b9-47c9-9a47-3aebbba3e717', 8, 'Bola-Bola Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('511b1f7d-3d80-4b91-a967-a822339fa95a', '0d6615af-8634-4914-9dae-7b94d6a97a35', 'Maria Torres', '+63 9369039106', '886 Shaw Blvd, Muntinlupa City', '', 100.00, 'preparing', now() - interval '22 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('511b1f7d-3d80-4b91-a967-a822339fa95a', 4, 'Tuna Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('12cc2954-b851-4e18-a295-90bc4b920b07', '51b4df1e-fedf-4ec8-97eb-8083c6f84012', 'Juan Gomez', '+63 9893300276', '334 Taft Ave, Pasig City', '', 300.00, 'delivered', now() - interval '11 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('12cc2954-b851-4e18-a295-90bc4b920b07', 12, 'Custard Siopao', 45.00, 5),
  ('12cc2954-b851-4e18-a295-90bc4b920b07', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('e48fac70-4057-48c5-b2c9-afb5beaa5108', '274ce8da-c7fe-4ca8-9c0a-f4d5d524d0f1', 'Roberto Fernandez', '+63 9531683663', '664 Aurora Blvd, Makati City', '', 90.00, 'delivered', now() - interval '3 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('e48fac70-4057-48c5-b2c9-afb5beaa5108', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b5261c6d-79a6-417b-a814-8a6e6f0cdd44', '2607997f-cb84-447f-89e3-8a3c3bc0e9f5', 'Antonio Garcia', '+63 9575138458', '432 Quezon Ave, San Juan City', '', 75.00, 'delivered', now() - interval '51 days 3 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b5261c6d-79a6-417b-a814-8a6e6f0cdd44', 3, 'Beef Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('8f1c57b4-43f1-4577-9df8-8e232b48c2c3', '7e6123c7-d5cc-453d-bd2e-f973966e77bb', 'Javier Cruz', '+63 9632767691', '482 Shaw Blvd, Quezon City', '', 190.00, 'delivered', now() - interval '48 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('8f1c57b4-43f1-4577-9df8-8e232b48c2c3', 4, 'Tuna Siomai', 25.00, 4),
  ('8f1c57b4-43f1-4577-9df8-8e232b48c2c3', 9, 'Choco Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5cda7298-2914-4c9b-821e-c9bc6c86ce06', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '988 Taft Ave, Manila City', 'No soy sauce.', 125.00, 'delivering', now() - interval '43 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5cda7298-2914-4c9b-821e-c9bc6c86ce06', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f4104b5b-a586-48a8-a91f-794752459906', 'c315d8cd-0c4b-46b9-b31e-be08e1bc69e0', 'Pedro Rivera', '+63 9780746951', '338 Aurora Blvd, San Juan City', 'Leave at the gate.', 90.00, 'delivered', now() - interval '23 days 18 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f4104b5b-a586-48a8-a91f-794752459906', 7, 'Asado Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1bf869fc-d7c5-4ee3-aee8-3a9e44c17905', 'bede30ac-c75c-4413-8d1b-43e8b9c3e583', 'Juan Cruz', '+63 9106150165', '249 Roxas Blvd, Mandaluyong City', 'No soy sauce.', 320.00, 'delivered', now() - interval '57 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1bf869fc-d7c5-4ee3-aee8-3a9e44c17905', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('1bf869fc-d7c5-4ee3-aee8-3a9e44c17905', 4, 'Tuna Siomai', 25.00, 2),
  ('1bf869fc-d7c5-4ee3-aee8-3a9e44c17905', 12, 'Custard Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('25fb8e2e-b091-4625-9006-dadff884f230', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '704 Shaw Blvd, San Juan City', '', 395.00, 'delivered', now() - interval '14 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('25fb8e2e-b091-4625-9006-dadff884f230', 7, 'Asado Siopao', 45.00, 5),
  ('25fb8e2e-b091-4625-9006-dadff884f230', 2, 'Chicken Siomai', 25.00, 5),
  ('25fb8e2e-b091-4625-9006-dadff884f230', 11, 'Red Bean Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('29a0131f-f014-41a2-8a24-dd09ddbf928d', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '136 EDSA, Mandaluyong City', '', 25.00, 'delivered', now() - interval '48 days 12 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('29a0131f-f014-41a2-8a24-dd09ddbf928d', 3, 'Beef Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c463a43c-e042-424c-aa4e-257f4223b3a0', '301e3595-c9e6-4712-9bc5-c986d353a751', 'Mark Dela Cruz', '+63 9523535959', '616 Taft Ave, Mandaluyong City', '', 395.00, 'delivered', now() - interval '7 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c463a43c-e042-424c-aa4e-257f4223b3a0', 1, 'Pork Siomai', 25.00, 5),
  ('c463a43c-e042-424c-aa4e-257f4223b3a0', 7, 'Asado Siopao', 45.00, 1),
  ('c463a43c-e042-424c-aa4e-257f4223b3a0', 9, 'Choco Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('12fac6a7-d052-4c01-8fb0-31ab712d4a5c', 'ab7ba6a4-a4d3-449c-9f56-94969f427eae', 'Ana Dela Cruz', '+63 9403416038', '732 Roxas Blvd, Makati City', 'Extra chili oil please.', 350.00, 'preparing', now() - interval '9 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('12fac6a7-d052-4c01-8fb0-31ab712d4a5c', 1, 'Pork Siomai', 25.00, 5),
  ('12fac6a7-d052-4c01-8fb0-31ab712d4a5c', 2, 'Chicken Siomai', 25.00, 5),
  ('12fac6a7-d052-4c01-8fb0-31ab712d4a5c', 3, 'Beef Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('cc5f2e7d-b9c7-452e-b1bb-0d6a3c076baf', '28e041df-ed58-4f58-8423-fff80af4d5eb', 'Carmen Cruz', '+63 9642792171', '225 Quezon Ave, Quezon City', '', 45.00, 'delivered', now() - interval '10 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('cc5f2e7d-b9c7-452e-b1bb-0d6a3c076baf', 10, 'Ube Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4cee76ef-ce69-4148-a631-bd2585ee5b1a', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '107 Ortigas Ave, Paranaque City', '', 370.00, 'pending', now() - interval '29 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4cee76ef-ce69-4148-a631-bd2585ee5b1a', 5, 'Shark''s Fin Siomai', 25.00, 4),
  ('4cee76ef-ce69-4148-a631-bd2585ee5b1a', 7, 'Asado Siopao', 45.00, 4),
  ('4cee76ef-ce69-4148-a631-bd2585ee5b1a', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5250f294-4fc6-4bdb-8ade-09b0590280e7', '3d892d0d-a69f-43fb-a90d-aff4d8cd11e7', 'Pedro Rivera', '+63 9418752740', '21 Ortigas Ave, Taguig City', 'No soy sauce.', 100.00, 'delivered', now() - interval '36 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5250f294-4fc6-4bdb-8ade-09b0590280e7', 5, 'Shark''s Fin Siomai', 25.00, 3),
  ('5250f294-4fc6-4bdb-8ade-09b0590280e7', 3, 'Beef Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4f76d5b4-313b-4640-a355-c2f73dec1416', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '507 Ortigas Ave, Manila City', 'Ring the doorbell.', 385.00, 'delivered', now() - interval '52 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4f76d5b4-313b-4640-a355-c2f73dec1416', 4, 'Tuna Siomai', 25.00, 5),
  ('4f76d5b4-313b-4640-a355-c2f73dec1416', 2, 'Chicken Siomai', 25.00, 5),
  ('4f76d5b4-313b-4640-a355-c2f73dec1416', 8, 'Bola-Bola Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('69ca7869-0ab4-419c-9c8b-44c1e65c60e8', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '2 Roxas Blvd, San Juan City', 'Call upon arrival.', 300.00, 'delivered', now() - interval '45 days 19 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('69ca7869-0ab4-419c-9c8b-44c1e65c60e8', 9, 'Choco Siopao', 45.00, 5),
  ('69ca7869-0ab4-419c-9c8b-44c1e65c60e8', 2, 'Chicken Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('624af3dd-acb4-4d9e-ab1b-7721a63cb544', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '235 Ayala Ave, Makati City', 'Call upon arrival.', 280.00, 'pending', now() - interval '20 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('624af3dd-acb4-4d9e-ab1b-7721a63cb544', 1, 'Pork Siomai', 25.00, 1),
  ('624af3dd-acb4-4d9e-ab1b-7721a63cb544', 2, 'Chicken Siomai', 25.00, 3),
  ('624af3dd-acb4-4d9e-ab1b-7721a63cb544', 10, 'Ube Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7ec3b9c9-8430-4f0b-b4bc-f18788a98981', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '195 Ortigas Ave, Taguig City', 'I need this by 12PM.', 50.00, 'delivered', now() - interval '52 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7ec3b9c9-8430-4f0b-b4bc-f18788a98981', 1, 'Pork Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('aae8423d-772f-4381-94d8-3fc030e172e9', '2f65aaca-7f5d-4616-bf8d-728a2fc56101', 'Carmen Ocampo', '+63 9737662908', '657 Roxas Blvd, Quezon City', '', 385.00, 'delivered', now() - interval '25 days 22 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('aae8423d-772f-4381-94d8-3fc030e172e9', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('aae8423d-772f-4381-94d8-3fc030e172e9', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('aae8423d-772f-4381-94d8-3fc030e172e9', 7, 'Asado Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('07ba9843-4954-470e-819f-d8ecc51bc119', 'd597afa7-9acc-474d-b7b3-45f242e446a2', 'Maria Gonzales', '+63 9216042660', '443 EDSA, Mandaluyong City', 'Please leave at the lobby.', 225.00, 'delivered', now() - interval '32 days 9 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('07ba9843-4954-470e-819f-d8ecc51bc119', 11, 'Red Bean Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1ec1d2ac-93a7-413c-ad1f-966672e9a009', '59bfd1b6-7146-4e29-8c22-c0e06b21cfa4', 'Rosa Lopez', '+63 9420586142', '358 Shaw Blvd, Mandaluyong City', 'Please leave at the lobby.', 360.00, 'delivered', now() - interval '27 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1ec1d2ac-93a7-413c-ad1f-966672e9a009', 11, 'Red Bean Siopao', 45.00, 4),
  ('1ec1d2ac-93a7-413c-ad1f-966672e9a009', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7e76c320-6568-4dae-92b1-69792873eb8a', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '327 Ortigas Ave, Manila City', 'I need this by 12PM.', 555.00, 'delivered', now() - interval '43 days 11 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7e76c320-6568-4dae-92b1-69792873eb8a', 7, 'Asado Siopao', 45.00, 4),
  ('7e76c320-6568-4dae-92b1-69792873eb8a', 3, 'Beef Siomai', 25.00, 2),
  ('7e76c320-6568-4dae-92b1-69792873eb8a', 11, 'Red Bean Siopao', 45.00, 5),
  ('7e76c320-6568-4dae-92b1-69792873eb8a', 2, 'Chicken Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('85dff34d-cef1-4d83-b57f-07c38603c1f6', '10a680e3-e4af-40ec-ac2e-116499b3c8d2', 'Pedro Ocampo', '+63 9570358698', '313 Ayala Ave, Mandaluyong City', 'I need this by 12PM.', 365.00, 'delivered', now() - interval '13 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('85dff34d-cef1-4d83-b57f-07c38603c1f6', 1, 'Pork Siomai', 25.00, 1),
  ('85dff34d-cef1-4d83-b57f-07c38603c1f6', 4, 'Tuna Siomai', 25.00, 1),
  ('85dff34d-cef1-4d83-b57f-07c38603c1f6', 7, 'Asado Siopao', 45.00, 3),
  ('85dff34d-cef1-4d83-b57f-07c38603c1f6', 12, 'Custard Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('48c6c75b-c958-4a58-92a6-62055dfdec81', '905e182d-e96d-4ca8-9991-3a94f6d83373', 'Ana Mendoza', '+63 9568517643', '211 Taft Ave, Makati City', 'Leave at the gate.', 450.00, 'delivered', now() - interval '42 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('48c6c75b-c958-4a58-92a6-62055dfdec81', 2, 'Chicken Siomai', 25.00, 1),
  ('48c6c75b-c958-4a58-92a6-62055dfdec81', 10, 'Ube Siopao', 45.00, 5),
  ('48c6c75b-c958-4a58-92a6-62055dfdec81', 4, 'Tuna Siomai', 25.00, 3),
  ('48c6c75b-c958-4a58-92a6-62055dfdec81', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('205bc4ae-d7c4-4a3f-8402-51d36ca332c5', 'fd2dc8e1-33d1-45d6-be16-bf8ceef47135', 'Francisco Rizal', '+63 9826155165', '512 Roxas Blvd, Makati City', '', 25.00, 'preparing', now() - interval '46 days 8 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('205bc4ae-d7c4-4a3f-8402-51d36ca332c5', 6, 'Japanese Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('f87d7130-3d37-4ce3-b90d-e90afb31046b', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '232 Espana Blvd, Paranaque City', '', 375.00, 'pending', now() - interval '40 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('f87d7130-3d37-4ce3-b90d-e90afb31046b', 5, 'Shark''s Fin Siomai', 25.00, 1),
  ('f87d7130-3d37-4ce3-b90d-e90afb31046b', 3, 'Beef Siomai', 25.00, 5),
  ('f87d7130-3d37-4ce3-b90d-e90afb31046b', 10, 'Ube Siopao', 45.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a3f46226-20fc-43b2-90cc-d790047eccec', 'd344d880-ec8e-4c74-87ed-1d4537717675', 'Luis Tomas', '+63 9922623614', '78 Quezon Ave, Quezon City', 'Ring the doorbell.', 405.00, 'cancelled', now() - interval '11 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a3f46226-20fc-43b2-90cc-d790047eccec', 8, 'Bola-Bola Siopao', 45.00, 5),
  ('a3f46226-20fc-43b2-90cc-d790047eccec', 10, 'Ube Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5a3af4bc-6eae-49ab-a49d-38c527187a64', '83cf7a6a-878d-4c5a-806b-b9f60f5493c5', 'Paul Dela Cruz', '+63 9364284175', '361 Espana Blvd, Quezon City', '', 100.00, 'delivered', now() - interval '34 days 13 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5a3af4bc-6eae-49ab-a49d-38c527187a64', 3, 'Beef Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('1f69b417-79e4-4d00-9902-959d330053dd', 'ab7ba6a4-a4d3-449c-9f56-94969f427eae', 'Ana Dela Cruz', '+63 9403416038', '976 EDSA, Makati City', 'No soy sauce.', 295.00, 'delivering', now() - interval '3 days 5 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('1f69b417-79e4-4d00-9902-959d330053dd', 4, 'Tuna Siomai', 25.00, 5),
  ('1f69b417-79e4-4d00-9902-959d330053dd', 9, 'Choco Siopao', 45.00, 1),
  ('1f69b417-79e4-4d00-9902-959d330053dd', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5222334f-81f9-482b-85fa-0a4e9d213463', '3887a8d3-aaa2-429d-9481-1cd3d91a6b77', 'Francisco Rizal', '+63 9121526062', '841 Aurora Blvd, Mandaluyong City', '', 180.00, 'delivered', now() - interval '4 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5222334f-81f9-482b-85fa-0a4e9d213463', 8, 'Bola-Bola Siopao', 45.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('87681a0f-fd98-4346-9b90-be2f90322bc2', '0d09ee55-9600-4ca3-a84d-6ff749b6a66b', 'Juan Ocampo', '+63 9143183588', '752 Roxas Blvd, Paranaque City', 'I need this by 12PM.', 285.00, 'delivered', now() - interval '50 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('87681a0f-fd98-4346-9b90-be2f90322bc2', 4, 'Tuna Siomai', 25.00, 5),
  ('87681a0f-fd98-4346-9b90-be2f90322bc2', 3, 'Beef Siomai', 25.00, 1),
  ('87681a0f-fd98-4346-9b90-be2f90322bc2', 12, 'Custard Siopao', 45.00, 1),
  ('87681a0f-fd98-4346-9b90-be2f90322bc2', 9, 'Choco Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('904cc3ad-c847-41f9-a38f-f22c90a31168', '92548978-1693-44bd-b7b9-49a92393d843', 'Manuel Garcia', '+63 9838305407', '869 C5 Road, Makati City', 'Call upon arrival.', 150.00, 'pending', now() - interval '1 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('904cc3ad-c847-41f9-a38f-f22c90a31168', 1, 'Pork Siomai', 25.00, 4),
  ('904cc3ad-c847-41f9-a38f-f22c90a31168', 2, 'Chicken Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('0dc29763-c7e3-4ea5-915e-041b0b9641a5', 'f79b2197-2084-402d-a7ee-efed796ec87c', 'Antonio Torres', '+63 9413365341', '502 Ortigas Ave, Paranaque City', 'Call upon arrival.', 260.00, 'delivered', now() - interval '57 days 7 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('0dc29763-c7e3-4ea5-915e-041b0b9641a5', 1, 'Pork Siomai', 25.00, 3),
  ('0dc29763-c7e3-4ea5-915e-041b0b9641a5', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('0dc29763-c7e3-4ea5-915e-041b0b9641a5', 9, 'Choco Siopao', 45.00, 1),
  ('0dc29763-c7e3-4ea5-915e-041b0b9641a5', 3, 'Beef Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d6891775-603c-414b-8539-911b181519d0', '4645611f-1d66-4780-899a-929d39d9a150', 'Antonio Gonzales', '+63 9669353021', '115 EDSA, San Juan City', 'I need this by 12PM.', 375.00, 'delivered', now() - interval '41 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d6891775-603c-414b-8539-911b181519d0', 7, 'Asado Siopao', 45.00, 5),
  ('d6891775-603c-414b-8539-911b181519d0', 1, 'Pork Siomai', 25.00, 3),
  ('d6891775-603c-414b-8539-911b181519d0', 5, 'Shark''s Fin Siomai', 25.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2c076c98-b308-4c90-a54b-feeb2e8326da', 'ab7d16b5-e02d-49a3-b22f-32a658f303b6', 'Carmen Luna', '+63 9750824469', '670 Quezon Ave, Mandaluyong City', 'No soy sauce.', 100.00, 'delivered', now() - interval '27 days 20 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2c076c98-b308-4c90-a54b-feeb2e8326da', 6, 'Japanese Siomai', 25.00, 2),
  ('2c076c98-b308-4c90-a54b-feeb2e8326da', 5, 'Shark''s Fin Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('34a9a2a0-0fb7-487b-b570-9a33a94e0374', '274ce8da-c7fe-4ca8-9c0a-f4d5d524d0f1', 'Roberto Fernandez', '+63 9531683663', '129 Quezon Ave, Muntinlupa City', 'Ring the doorbell.', 480.00, 'delivering', now() - interval '15 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('34a9a2a0-0fb7-487b-b570-9a33a94e0374', 7, 'Asado Siopao', 45.00, 4),
  ('34a9a2a0-0fb7-487b-b570-9a33a94e0374', 10, 'Ube Siopao', 45.00, 4),
  ('34a9a2a0-0fb7-487b-b570-9a33a94e0374', 5, 'Shark''s Fin Siomai', 25.00, 3),
  ('34a9a2a0-0fb7-487b-b570-9a33a94e0374', 9, 'Choco Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('4d211c51-c5e5-4da8-9b58-6010a96d1ff2', '0a8fd3f2-bc60-4ed7-8c38-168c93c15641', 'Ricardo Garcia', '+63 9377602496', '88 Taft Ave, Makati City', '', 135.00, 'delivering', now() - interval '25 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('4d211c51-c5e5-4da8-9b58-6010a96d1ff2', 10, 'Ube Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a8fbaead-0710-4e7b-95d9-35c7c64959a4', '1e40f517-3427-4059-afe9-44e84e4257f5', 'Paul Gomez', '+63 9238955036', '1 Ayala Ave, Pasig City', 'Call upon arrival.', 350.00, 'delivered', now() - interval '31 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a8fbaead-0710-4e7b-95d9-35c7c64959a4', 3, 'Beef Siomai', 25.00, 4),
  ('a8fbaead-0710-4e7b-95d9-35c7c64959a4', 9, 'Choco Siopao', 45.00, 2),
  ('a8fbaead-0710-4e7b-95d9-35c7c64959a4', 12, 'Custard Siopao', 45.00, 3),
  ('a8fbaead-0710-4e7b-95d9-35c7c64959a4', 2, 'Chicken Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('5d186bc3-4195-4af9-95a1-b4926e50f0b1', 'cd8f562b-9229-462a-b233-1b6eb2ec2ad2', 'Pedro Luna', '+63 9590300969', '353 Ortigas Ave, Manila City', 'Leave at the gate.', 215.00, 'delivered', now() - interval '17 days 6 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('5d186bc3-4195-4af9-95a1-b4926e50f0b1', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('5d186bc3-4195-4af9-95a1-b4926e50f0b1', 3, 'Beef Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('7c749a11-75f2-40ff-a146-d58fad033107', 'b64da884-fcfd-4117-baaf-eea831514404', 'Mark Fernandez', '+63 9348587293', '34 Quezon Ave, Paranaque City', 'Call upon arrival.', 395.00, 'delivered', now() - interval '45 days 16 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('7c749a11-75f2-40ff-a146-d58fad033107', 9, 'Choco Siopao', 45.00, 1),
  ('7c749a11-75f2-40ff-a146-d58fad033107', 7, 'Asado Siopao', 45.00, 5),
  ('7c749a11-75f2-40ff-a146-d58fad033107', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('c4265782-d344-4861-bb94-21f3bf671bb8', '51b4df1e-fedf-4ec8-97eb-8083c6f84012', 'Juan Gomez', '+63 9893300276', '487 Aurora Blvd, Muntinlupa City', '', 395.00, 'delivered', now() - interval '30 days 1 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('c4265782-d344-4861-bb94-21f3bf671bb8', 7, 'Asado Siopao', 45.00, 4),
  ('c4265782-d344-4861-bb94-21f3bf671bb8', 6, 'Japanese Siomai', 25.00, 3),
  ('c4265782-d344-4861-bb94-21f3bf671bb8', 10, 'Ube Siopao', 45.00, 2),
  ('c4265782-d344-4861-bb94-21f3bf671bb8', 5, 'Shark''s Fin Siomai', 25.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('2fac7d0f-51b1-4c5e-b8be-b5c444e79122', 'c9e22c91-486e-40c5-99ac-5ae2c172c198', 'Paul Dela Cruz', '+63 9686108904', '888 Roxas Blvd, Quezon City', '', 240.00, 'delivered', now() - interval '15 days 2 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('2fac7d0f-51b1-4c5e-b8be-b5c444e79122', 4, 'Tuna Siomai', 25.00, 5),
  ('2fac7d0f-51b1-4c5e-b8be-b5c444e79122', 1, 'Pork Siomai', 25.00, 1),
  ('2fac7d0f-51b1-4c5e-b8be-b5c444e79122', 11, 'Red Bean Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b51a7c8b-c8a0-4bf6-8ac4-e65200d3237d', 'f97ceeca-d58a-4d8e-8547-b601cfa6bef1', 'Vicente Luna', '+63 9992893171', '875 Shaw Blvd, Pasig City', '', 395.00, 'delivered', now() - interval '36 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b51a7c8b-c8a0-4bf6-8ac4-e65200d3237d', 3, 'Beef Siomai', 25.00, 5),
  ('b51a7c8b-c8a0-4bf6-8ac4-e65200d3237d', 12, 'Custard Siopao', 45.00, 2),
  ('b51a7c8b-c8a0-4bf6-8ac4-e65200d3237d', 7, 'Asado Siopao', 45.00, 3),
  ('b51a7c8b-c8a0-4bf6-8ac4-e65200d3237d', 8, 'Bola-Bola Siopao', 45.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('a4767a48-8a74-477d-94cd-8267df70186e', '46052fea-47c0-44ae-8e84-4182007d073a', 'Rosa Gomez', '+63 9528725187', '990 Aurora Blvd, Pasig City', 'Call upon arrival.', 100.00, 'delivered', now() - interval '23 days 21 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('a4767a48-8a74-477d-94cd-8267df70186e', 5, 'Shark''s Fin Siomai', 25.00, 3),
  ('a4767a48-8a74-477d-94cd-8267df70186e', 4, 'Tuna Siomai', 25.00, 1)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('82ab0d72-073a-42cc-92b5-304cbe186fc0', '274ce8da-c7fe-4ca8-9c0a-f4d5d524d0f1', 'Roberto Fernandez', '+63 9531683663', '944 Roxas Blvd, San Juan City', 'Ring the doorbell.', 135.00, 'delivered', now() - interval '23 days 15 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('82ab0d72-073a-42cc-92b5-304cbe186fc0', 8, 'Bola-Bola Siopao', 45.00, 3)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('ee8a6cbf-da43-4488-a4cd-03b095f07409', '9a246f71-53f2-4663-9e16-c0ef3da8fda3', 'Miguel Torres', '+63 9796155100', '435 Espana Blvd, San Juan City', 'Extra chili oil please.', 90.00, 'delivered', now() - interval '42 days 17 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('ee8a6cbf-da43-4488-a4cd-03b095f07409', 8, 'Bola-Bola Siopao', 45.00, 2)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('d59d7675-0713-4027-bf92-70c7b258e5f3', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '279 Espana Blvd, Quezon City', '', 250.00, 'pending', now() - interval '23 days 0 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('d59d7675-0713-4027-bf92-70c7b258e5f3', 1, 'Pork Siomai', 25.00, 5),
  ('d59d7675-0713-4027-bf92-70c7b258e5f3', 2, 'Chicken Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('000c7ece-f60c-4268-a96e-5d8f9c489994', 'b1803290-9d3a-4f57-b8ac-6f7c0e7f0866', 'Miguel Luna', '+63 9375312731', '374 Ortigas Ave, Paranaque City', '', 235.00, 'delivered', now() - interval '34 days 14 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('000c7ece-f60c-4268-a96e-5d8f9c489994', 8, 'Bola-Bola Siopao', 45.00, 3),
  ('000c7ece-f60c-4268-a96e-5d8f9c489994', 2, 'Chicken Siomai', 25.00, 4)
  ON CONFLICT DO NOTHING;

  INSERT INTO public.orders (id, user_id, full_name, phone, address, notes, total_amount, status, created_at)
  VALUES ('b35e4b06-f6c7-4ab2-b58a-bccb60e0bdb1', '7e41b395-c8aa-4900-ad00-094d3b72abcc', 'Antonio Dela Cruz', '+63 9127433821', '991 Taft Ave, Quezon City', 'Please leave at the lobby.', 335.00, 'delivered', now() - interval '14 days 10 hours') ON CONFLICT (id) DO NOTHING;
  INSERT INTO public.order_items (order_id, product_id, product_name, price, quantity) VALUES 
  ('b35e4b06-f6c7-4ab2-b58a-bccb60e0bdb1', 9, 'Choco Siopao', 45.00, 1),
  ('b35e4b06-f6c7-4ab2-b58a-bccb60e0bdb1', 1, 'Pork Siomai', 25.00, 3),
  ('b35e4b06-f6c7-4ab2-b58a-bccb60e0bdb1', 8, 'Bola-Bola Siopao', 45.00, 2),
  ('b35e4b06-f6c7-4ab2-b58a-bccb60e0bdb1', 5, 'Shark''s Fin Siomai', 25.00, 5)
  ON CONFLICT DO NOTHING;

END $$;
