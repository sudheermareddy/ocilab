# Network-family

This terraform project will create n number of users based on the user count. For each user it assign the following policy to acceess the resources in **OBMC**.

### **Policy that has been assignig to each user**

###### Syntax for Policy

Allow < subject > to < verb > < resource-type > in < location > where < conditions >

* Allow group < group-name > to manage virtual-network-family in compartment < compartment_id >

### Input values that has been passed to the variables.tf file


|	 Input value 	    | 	       Description  				        |  	Assigned Value  |
|-----------------  |---------------------------------------|-------------------|
|	tenancy_ocid	    | Tenency id of the oracle console      | 	 Default		    |
|	user_ocid    	    | User ocid of the oracle console	      |	 Default          |
|	fingerprint       | API key of the user from oracle console |	Default         |
|	private_key_path  | Private key path of the API key       |	Default           |
|	region			      | Ashburn/phenix					              |	Default           | 
|	compartment_ocid  | Compartment id of the oracle console that you are going to use |	Default
|	compartment_name  | Name of your comaprtment			        |	Default           |
|	user_count        | No.of users that you want to create   |	1 to many         |
|	group_name		    | Name of teh group that you want to create |  sample-group |
|	user_name_prefix  | The start name that you want to assign for a user|sample  |
|	role			        | The role that you are assigning 	    |	manage/use/inspect/read

### Provided outputs

After terraform apply it can generate list of users with passwords.

### The user can create following resources after login into the **OBMC** console

The following resources can come under virtual-network-family

* vcns
* subnets
* route-tables
* security-lists
* dhcp-options
* private-ips
* internet-gateways
* vnics
* vnic-attachments
