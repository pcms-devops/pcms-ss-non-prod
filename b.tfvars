
software_host="pcmsssnonprod"
ip_cidr_range="10.4.6.0/24"
environment_name="b"
customer_ip_cidr_ranges = ["213.175.224.0/19","10.205.8.0/22","109.158.15.76/32"]
private_ip_address_allocation = "Dynamic"

lb_enabled=1
mq_enabled=0
bs_app_enabled=1
cdb_db_enabled=0
bo_app_enabled=0
bastion_enabled=1
mrep_db_enabled=0
mongo_db_enabled=0
dfm_messagestore_app_enabled=0

lb_server_image_regex = "^load-balancer-v\\d{14}" 
mq_server_image_regex = "^activemq-515-v\\d{14}" 
app_server_image_regex = "^tomcat-7-v\\d{14}" 
vcs_beanstore_image_regex = "^tomcat-7-v\\d{14}"

