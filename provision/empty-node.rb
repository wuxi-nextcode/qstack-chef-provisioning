require 'chef/provisioning'

machine 'empty-node' do
    chef_environment 'test'
end