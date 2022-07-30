# terrafrom-simple-aws-instance

Created a Simple AWS Instance provision

export region_name=region_name
export instance_type=instance_type
export tags='{"Name":"Terrafrom Provision"}'

```
$ terrafrom init
$ terraform apply -var region_name=$region_name -var instance_type=instance_type -var tags="$tags"
$ terraform destroy -var region_name=$region_name -var instance_type=instance_type -var tags="$tags"
```