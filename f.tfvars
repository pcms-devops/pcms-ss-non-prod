environment_name="f"

software_host="pcmsssnonprod"
software_path="releases/product3.123.0-Lbuild.34"
software_version="3.123.0"

#git_branch="pcms_manual"  # Pre-Loadbalancer Branch
git_branch="pcms-manual-role-override"

ip_cidr_range="10.2.16.0/24"
customer_ip_cidr_ranges = ["213.175.224.0/19","10.205.8.0/22","109.158.15.76/32"]
private_ip_address_allocation = "Dynamic"

lb_enabled=1
mq_enabled=0
tm_app_enabled=0
bs_app_enabled=0
cdb_db_enabled=1
bo_app_enabled=0
cust_db_enabled=0
etl_app_enabled=0
dds_app_enabled=0
bastion_enabled=1
mrep_db_enabled=0
mongo_db_enabled=0
ddshelper_app_enabled=0

dfm_delivery_app_enabled=0
dfm_packaging_app_enabled=0
dfm_processor_app_enabled=0
dfm_targeting_app_enabled=0
dfm_messagestore_app_enabled=0
dfm_receive_validate_app_enabled=0

external_hht_app_enabled=0
external_audit_app_enabled=0
external_order_app_enabled=0
external_print_app_enabled=0
external_payment_app_enabled=0
external_address_app_enabled=0
external_customer_app_enabled=0
external_e_coupon_app_enabled=0
external_property_app_enabled=0
external_security_app_enabled=0
external_reference_app_enabled=0
external_self_scan_app_enabled=0
external_inventory_app_enabled=0
external_gift_card_app_enabled=0
external_transaction_app_enabled=0
external_basket_calc_app_enabled=0
external_bo_audit_msg_app_enabled=0
external_endless_aisle_app_enabled=0
external_hospitality_grazing_app_enabled=0

#cdb_db_machine_type = "Standard_B4ms"
#bo_app_machine_type = "Standard_A2_v2"
#mrep_db_machine_type = "Standard_A2_v2"
#etl_app_machine_type = "Standard_A2_v2"
bo_app_machine_type = "Standard_D2s_v3"
mrep_db_machine_type = "Standard_D2s_v3"
etl_app_machine_type = "Standard_D2s_v3"


default_external_app_machine_type = "Standard_B4ms"
#default_external_app_machine_type = "Standard_D2s_v3"
external_endless_aisle_app_machine_type = "Standard_D4s_v3"

lb_server_image_regex = "^load-balancer-v\\d{14}" 
db_server_image_regex = "^db2-105-wse-v\\d{14}"
mq_server_image_regex = "^activemq-515-v\\d{14}" 
app_server_image_regex = "^tomcat-7-v\\d{14}" 
mongo_server_image_regex = "^mongodb-32-v\\d{14}" 
vcs_beanstore_image_regex = "^tomcat-7-v\\d{14}"
app_dds_server_image_regex = "^tomcat-7-v\\d{14}"
etl_app_server_image_regex = "^tomcat-7-v\\d{14}"
app_ddshelper_server_image_regex = "^tomcat-7-v\\d{14}"
