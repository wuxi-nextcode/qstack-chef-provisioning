require 'chef/provisioning/fog_driver/driver'

with_driver('fog:AWS:qstack', :compute_options => { 
    :ec2_endpoint => 'http://c.qstack.nextcode.local',
    :iam_endpoint => 'http://c.qstack.nextcode.local'
})

with_machine_options({
  :bootstrap_options => {
    :flavor_id => 't1.milli',
    :image_id => 'qmi-81267d5b',
   },
  :ssh_username => 'root'
})