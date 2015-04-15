require 'chef/provisioning'

machine 'web-node' do
    recipe 'apache2'
    chef_environment 'test'
end