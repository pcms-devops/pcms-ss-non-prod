########################
# Project Level config #
########################

# Azure
key_vault_name = "pcms-ss-non-prod-kv"
location = "centralus"
image_resource_group_name = "pcms-image-builder"
vmsize = "Standard_B1s"
default_external_app_machine_type = "Standard_B1s"
accelerated_networking = "false"
project_resource_group_name = "pcms-ss-non-prod-mgmt"

# These are the most important settings

# Best to set environment_name and ip_cidr_range in common.tfvars
#environment_name="a"
#ip_cidr_range="10.2.2.0/24"

#primary_zone="f"
git_branch="master"
region="us-central1" #europe-west2 (london) / us-west1 / etc - us-central1 is cheapest! 
project_name="pcms-ss-non-prod" #$pcms-custxx-non-prod or pcms-custxx-prod - replace custxx with your customer
customer_name="john" #used as a prefix to vms etc
software_source="bucket" #only bucket currently supported
software_host="pcms-ss-non-prod"
software_path="releases/product3.119.0-Lbuild.113" ###DONT INCLUDE LEADING OR TRAILING / (SLASH)
software_version="3.119.0"
#default_disk_type="pd-standard" #default is pd-standard
 
#cdb_db_ant_target="my-special-ant-target" 
#mrep_db_ant_target="my-special-ant-target"
 
#Set the source IP ranges which are allowed to access your project - below is the default
#customer_ip_cidr_ranges=["213.175.224.0/19","10.205.8.0/22"]
 
###############################
# Project Level config for DR # 
###############################
# These are optional [DR is NOT WORKING]
 
#dr_region="europe-west1" #optional - same syntax as region but for DR
#dr_ip_cidr_range="" #optional - same syntax as ip_cidr_range but for DR
 
################
# Disable Apps #
################
# Uncomment lines to disable - by default these apps are enabled
#bs_app_enabled=0
#bo_app_enabled=0
etl_app_enabled=0
dds_app_enabled=0
ddshelper_app_enabled=0
tm_app_enabled=0
dfm_delivery_app_enabled=0
dfm_packaging_app_enabled=0
dfm_processor_app_enabled=0
dfm_receive_validate_app_enabled=0
dfm_targeting_app_enabled=0
 

#mq_enabled=0 # do you really want to disable this?
#lb_enabled=0 # do you really want to disable this?
#cdb_db_enabled=0 # do you really want to disable this?
#bastion_enabled=0 # do you really want to disable this?
#mrep_db_enabled=0
#mongo_db_enabled=0
 

#############################################################
# External apps - default all off, uncomment to enable them # 
#############################################################
 
#external_address_app_enabled=1
#external_audit_app_enabled=1
#external_basket_calc_app_enabled=1
#external_bo_audit_msg_app_enabled=1
#external_customer_app_enabled=1
#external_e_coupon_app_enabled=1
#external_endless_aisle_app_enabled=1
#external_gift_card_app_enabled=1
#external_hospitality_grazing_app_enabled=1
#external_inventory_app_enabled=1
#external_order_app_enabled=1
#external_payment_app_enabled=1
#external_print_app_enabled=1
#external_property_app_enabled=1
#external_reference_app_enabled=1
#external_security_app_enabled=1
#external_self_scan_app_enabled=1
#external_transaction_app_enabled=1
 
############################
# Global Image definitions # 
############################
# Override as appropriate - defaults shown below
 
#app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#db_server_image="projects/pcms-image-builder/global/images/family/db2-11-expressc"
#lb_server_image="projects/pcms-image-builder/global/images/family/load-balancer"
#mq_server_image="projects/pcms-image-builder/global/images/family/activemq-5"
#mongo_server_image="projects/pcms-image-builder/global/images/family/mongo-32"
 

################
# App Settings #
################
 
## BeanStore Server (bs)
# Optional override, if blank defaults to app_server_image 
#bs_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#bs_app_machine_type="n1-highcpu-2"
#bs_app_max_replicas = 2 
#bs_app_min_replicas = 1
#bs_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#bs_app_Xmx="1024"
#bs_app_Xms="512"
#bs_app_LogLevel="INFO"
 
## BackOffice / Maintenance / Reporting (bo)
# Optional override, if blank defaults to app_server_image 
#bo_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#bo_app_machine_type="custom-2-4096" 
#bo_app_max_replicas = 2  
#bo_app_min_replicas = 1
#bo_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#bo_app_Xmx="1024"
#bo_app_Xms="512"
#bo_app_LogLevel="INFO"
 
## DDS - data only (dds)
# Optional override, if blank defaults to app_server_image
#dds_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#dds_app_machine_type="n1-standard-2" 
#max/min instances NOT configurable - singleton
dds_app_data_disk_size_gb=30
#dds_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#dds_app_data_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#dds_app_Xmx="1024"
#dds_app_Xms="512"
#dds_app_LogLevel="INFO"
 
## DDS Helper (ddshelper) 
# Optional override, if blank defaults to app_server_image 
#ddshelper_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#ddshelper_app_machine_type="f1-micro"  
#ddshelper_app_max_replicas = 2   
#ddshelper_app_min_replicas = 1
#ddshelper_app_preemptible=1 # defaults to NO unless this variable is set
#ddshelper_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#ddshelper_app_Xmx="1024"
#ddshelper_app_Xms="512"
#ddshelper_app_LogLevel="INFO"
 
## ETL 
# Optional override, if blank defaults to app_server_image  
#etl_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#etl_app_machine_type="n1-standard-1"  
#etl_app_max_replicas = 2   
#etl_app_min_replicas = 1
#etl_app_preemptible=1 # defaults to NO unless this variable is set
#etl_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#etl_app_Xmx="1024"
#etl_app_Xms="512"
#etl_app_LogLevel="INFO"
 
## TM  (task manager)
# Optional override, if blank defaults to app_server_image  
#tm_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#tm_app_machine_type="f1-micro"
#tm_app_max_replicas = 1  
#tm_app_min_replicas = 1
#tm_app_preemptible=1 # defaults to NO unless this variable is set
#tm_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#tm_app_Xmx="1024"
#tm_app_Xms="512"
#tm_app_LogLevel="INFO"
 

## DFM Delivery (dfmdel)
# Optional override, if blank defaults to app_server_image
#dfmdel_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#dfmdel_app_machine_type="n1-highcpu-2"
#dfmdel_app_max_replicas = 1
#dfmdel_app_min_replicas = 1
#dfmdel_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#dfmdel_app_Xmx="1024"
#dfmdel_app_Xms="512"
#dfmdel_app_LogLevel="INFO"
 
## DFM Packagin (dfmpkg)
# Optional override, if blank defaults to app_server_image
#dfmpkg_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#dfmpkg_app_machine_type="n1-highcpu-2"
#dfmpkg_app_max_replicas = 1
#dfmpkg_app_min_replicas = 1
#dfmpkg_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#dfmpkg_app_Xmx="1024"
#dfmpkg_app_Xms="512"
#dfmpkg_app_LogLevel="INFO"
 
## DFM Processor (dfmproc)
# Optional override, if blank defaults to app_server_image
#dfmproc_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#dfmproc_app_machine_type="n1-highcpu-2"
#dfmproc_app_max_replicas = 1
#dfmproc_app_min_replicas = 1
#dfmproc_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#dfmproc_app_Xmx="1024"
#dfmproc_app_Xms="512"
#dfmproc_app_LogLevel="INFO"
 
## DFM Receive-Validate (dfmrv)
# Optional override, if blank defaults to app_server_image
#dfmrv_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#dfmrv_app_machine_type="n1-highcpu-2"
#dfmrv_app_max_replicas = 1
#dfmrv_app_min_replicas = 1
#dfmrv_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#dfmrv_app_Xmx="1024"
#dfmrv_app_Xms="512"
#dfmrv_app_LogLevel="INFO"
 
## DFM Targeting (dfmtrgt)
# Optional override, if blank defaults to app_server_image
#dfmtrgt_app_server_image="projects/pcms-image-builder/global/images/family/tomcat-7"
#dfmtrgt_app_machine_type="n1-highcpu-2"
#dfmtrgt_app_max_replicas = 1
#dfmtrgt_app_min_replicas = 1
#dfmtrgt_app_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#dfmtrgt_app_Xmx="1024"
#dfmtrgt_app_Xms="512"
#dfmtrgt_app_LogLevel="INFO"
 
##########################
# Load Balancer Settings #
##########################
 
#lb_machine_type="n1-standard-1"
#lb_max_replicas = 2 
#lb_min_replicas = 1
#lb_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
 

###############
# MQ Settings # 
############### 
 
#mq_machine_type="n1-standard-1" 
#mq_max_replicas = 1  
#mq_min_replicas = 1 
#mq_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#mq_data_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
mq_data_disk_size_gb="20"
 
###############
# DB Settings # 
############### 
 
#replica sizes not externalised for DB2 DB's and are forced to 1
 
cdb_db_data_disk_size_gb=60
cdb_db_data_disk_type="pd-ssd" # defaults to setting default_disk_type so this overrides that
#cdb_db_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#cdb_db_port = 50000
 
mrep_db_data_disk_size_gb=60
#mrep_db_data_disk_type="pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#mrep_db_os_disk_type = "pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#mrep_db_port = 50000
 
#mongo also currently forced to single node
 
mongo_db_data_disk_size_gb=60
#mongo_db_data_disk_type="pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#mongo_db_os_disk_type="pd-ssd" or "pd-standard" # defaults to setting default_disk_type
#mongo_db_port = 27017
 
#enable a VPN
 
#vpn_enabled=0  
#GCP docs how to create key - https://cloud.google.com/vpn/docs/how-to/generating-pre-shared-key
#vpn_shared_key="INSERT_KEY_HERE"  
#vpn_peer_ip="213.175.111.222"  
#vpn_peer_subnet="10.0.2.15/32"
