require 'chef/provisioning/fog_driver/driver'

with_driver('fog:AWS')
# If your aws-cli AWS credentials are not the default credentials you can specify a profile name like below:
#with_driver('fog:AWS:my_aws_profile')

with_machine_options({
  :bootstrap_options => {
    :flavor_id => 't2.medium',
    :image_id => 'ami-96a818fe',
   },
  :ssh_username => 'centos'
})