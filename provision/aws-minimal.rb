require 'chef/provisioning/fog_driver/driver'

with_driver('fog:AWS')

with_machine_options({
  :bootstrap_options => {
    :flavor_id => 't2.medium',
    :image_id => 'ami-96a818fe',
   },
  :ssh_username => 'centos'
})