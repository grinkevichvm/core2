
INSERT INTO core_settings (lastupdate, system_name, value, code, visible, type, is_custom_sw, is_personal_sw, seq)
VALUES (NOW(), 'Email для уведомлений об успешной оплате', '', 'billing_mail_success_coming', 'Y', 'text', 'N', 'N', null);

INSERT INTO core_settings (lastupdate, system_name, value, code, visible, type, is_custom_sw, is_personal_sw, seq)
VALUES (NOW(), 'Email с которого происходят рассылки писем от биллинга', '', 'billing_mail_from', 'Y', 'text', 'N', 'N', null);


INSERT INTO mod_webservice_regapikeys (title, type_sw, transfer_sw, apikey, max_apikeys, is_active_sw, lastuser)
VALUES ('Для биллинга', 'api', 'header', SHA1(CONCAT_WS('', NOW(), RAND())), 0, 'Y', null);

INSERT INTO mod_webservice_apikeys (parent_id, apikey, name, is_active_sw, lastuser, date_add, number_requests)
VALUES (LAST_INSERT_ID(), SHA1(CONCAT_WS('', NOW(), RAND())), 'billing_key', 'Y', null, NOW(), 0);