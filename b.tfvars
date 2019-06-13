
software_host="pcmsssnonprod"
ip_cidr_range="10.4.6.0/24"
environment_name="z"
customer_ip_cidr_ranges = ["213.175.224.0/19","10.205.8.0/22","109.158.15.76/32"]
private_ip_address_allocation = "Dynamic"

bs_app_enabled=1
lb_enabled=1
mq_enabled=1
bastion_enabled=1

lb_server_image_regex = "^load-balancer-v\\d{14}" 
mq_server_image_regex = "^activemq-515-v\\d{14}" 
app_server_image_regex = "^tomcat-7-v\\d{14}" 
vcs_beanstore_image_regex = "^tomcat-7-v\\d{14}"

