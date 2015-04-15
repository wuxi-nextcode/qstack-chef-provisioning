require 'chef/provisioning/vagrant_driver'

vagrant_box 'centos7' do
  url 'https://cdn.nextcode.com/contrib/nextcode_centos-7-x86_64_virtualbox.box'
end

with_machine_options :vagrant_options => {
  'vm.box' => 'centos7'
}
