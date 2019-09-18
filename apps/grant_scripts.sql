grant select on apps.gl_period_statuses to ausbi;  

create or replace view cux_cdm2bi_product_cat_v as
select fv.FLEX_VALUE          cat_id,
       fvt.FLEX_VALUE_MEANING cat_code,
       fvt.DESCRIPTION        cat_name
  from fnd_flex_value_sets fvs,
       fnd_flex_values_tl  fvt,
       fnd_flex_values     fv
 where fvs.flex_value_set_name = 'CUX_ITEM_SERIES'
   and fvs.flex_value_set_id = fv.flex_value_set_id
   and fv.flex_value_id = fvt.flex_value_id
   and fvt.language = 'ZHS';
   
grant select on cux_cdm2bi_product_cat_v to ausbi;

create or replace view cux_cdm2bi_product_level_v as
select fv.FLEX_VALUE          level_id,
       fvt.FLEX_VALUE_MEANING level_code,
       fvt.DESCRIPTION        level_name
  from fnd_flex_value_sets fvs, fnd_flex_values_tl fvt, fnd_flex_values fv
 where fvs.flex_value_set_name = 'CUX_ITEM_LEVEL'
   and fvs.flex_value_set_id = fv.flex_value_set_id
   and fv.flex_value_id = fvt.flex_value_id
   and fvt.language = 'ZHS';

grant select on cux_cdm2bi_product_level_v to ausbi;

grant select on apps.cux_cdm2bi_product_v to ausbi;

create or replace view cux_brc2bi_codedata_v as
select bcd.code,
       bcd.code_type,
       bcd.score,
       bcd.box_code,
       bcd.tray_code,
       bcd.item_code,
       bcd.batch_id,
       bcd.coding_time,
       bcd.prd_time,
       bcd.task_id,
       bcd.org_id,
       bcd.inv_code,
       bcd.dealer_id,
       bcd.master_inv,
       bcd.status,
       bcd.score_syn_status,
       bcd.batch_code,
       bcd.sale_status,
       decode(bcd.org_id, 81, 1, 82, 2, 181, 6, 182, 5, 161, 161, 0) company_id
  from brc.brc_co_code_data bcd;
  
--grant select on cux_brc2bi_codedata_v to ausbi;
grant select on brc.brc_co_code_data to ausbi;
  

grant select on apps.cux_cdm2bi_dealer_subinv_v to ausbi;
grant select on apps.cux_cdm2bi_dealer_v to ausbi;
grant select on apps.cux_cdm2bi_store_subinv_v to ausbi;

grant select on hr.hr_all_organization_units to ausbi;
grant select on hr.per_all_people_f to ausbi;
grant select on hr.per_all_assignments_f to ausbi;

grant select on auportal.base_hr_position_assign_v to ausbi;  --–Ë…Í«Î
grant select on auportal.base_hr_position_hierarchy_v to ausbi;  --–Ë…Í«Î


grant select on apps.mtl_secondary_inventories  to ausbi;

grant select on apps.cux_cdm2bi_person_v to ausbi;

grant select on cux.cux_inventories_balance to ausbi;  --–Ë…Í«Î
grant select on cux.cux_inventories_transation to ausbi;  --–Ë…Í«Î

grant select on hr_organization_information to ausbi;
grant select on hr_operating_units to ausbi;
grant select on org_organization_definitions to ausbi;
grant select on mtl_secondary_inventories to ausbi;

grant select on apps.cux_organization_definitions to ausbi;





