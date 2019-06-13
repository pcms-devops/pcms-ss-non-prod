
software_host="pcmsssnonprod"
ip_cidr_range="10.4.6.0/24"
environment_name="z"
customer_ip_cidr_ranges = ["213.175.224.0/19","10.205.8.0/22","109.158.15.76/32"]
private_ip_address_allocation = "Dynamic"

bs_app_enabled=1

cdb_db_machine_type ="Standard_D2s_v3"
bo_app_machine_type = "Standard_A2_v2"
etl_app_machine_type = "Standard_A2_v2"
mrep_db_machine_type = "Standard_A2_v2"

lb_server_image_regex = "^load-balancer-v\\d{14}" 
db_server_image_regex = "^db2-105-wse-v\\d{14}"
mq_server_image_regex = "^activemq-515-v\\d{14}" 
app_server_image_regex = "^tomcat-7-v\\d{14}" 
mongo_server_image_regex = "^mongodb-32-v\\d{14}" 
vcs_beanstore_image_regex = "^tomcat-7-v\\d{14}"
app_dds_server_image_regex = "^tomcat-7-v\\d{14}"
etl_app_server_image_regex = "^tomcat-7-v\\d{14}"
