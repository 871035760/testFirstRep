truncate table fnd_integration_regist_t

insert into fnd_integration_regist_t select * from fnd_integration_regist_t@old_ausbi.us.oracle.com

insert into fnd_provinces_t select * from fnd_provinces_t@old_ausbi.us.oracle.com

select * from fnd_provinces_t

insert into fnd_citys_t select * from fnd_citys_t@old_ausbi.us.oracle.com

insert into fnd_crm_user_info_t select * from fnd_crm_user_info_t@old_ausbi.us.oracle.com

insert into ftb_member_order_t select * from ftb_member_order_t@old_ausbi.us.oracle.com

