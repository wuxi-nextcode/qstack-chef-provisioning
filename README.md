# QStack chef-provisioning test project

## Prerequisites
### aws-cli and credentials
This project assumes that you have two profiles configured and they work in the aws-cli tools:
* The **default** credential should be a valid AWS credential
* The **qstack** credential should be a valid QStack credential

Please refer to the aws-cli instructions on how to set that up:
* Installation: http://docs.aws.amazon.com/cli/latest/userguide/installing.html
* Configuration: http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html

### Bundler and ruby
You need to have Bundler set up and we recommend having rbenv installed as well.

## Setting up
* Clone this repository and install all bundler gems:
```
git clone git@github.com:nextcode-health/qstack-chef-provisioning.git
cd qstack-chef-provisioning
bundle install
```
* Use Berkshelf to retrieve all dependant cookbooks
```
bundle exec berks vendor cookbooks
```

Now everything should be ready to perform the chef-provisioning tests.

## Running the various tests
There are two chef-provisioning scripts available (one sets up an empty machine and the other sets up a machine with Apache). There are three configurations available: vagrant, aws and qstack.

### Vagrant
To provision an empty machine:
```
bundle exec chef-client -z provision/vagrant-minimal.rb provision/empty-node.rb
```
To provision a web server machine:
```
bundle exec chef-client -z provision/vagrant-minimal.rb provision/web-node.rb
```

### AWS
This assumes that your default profile for aws-cli contains your AWS credentials. Otherwise you need to modify the provision/aws-minimal.rb (an example is provided in the file).

To provision an empty machine:
```
bundle exec chef-client -z provision/aws-minimal.rb provision/empty-node.rb
```
To provision a web server machine:
```
bundle exec chef-client -z provision/aws-minimal.rb provision/web-node.rb
```

### QStack
This assumes that your QStack credentials are specified in a profile called **qstack** in ~/.aws/credentials. Otherwise you need to modify the provision/qstack-minimal.rb.
That file also contains the ec2_endpoint, flavor_id, image_id and possibly more config options which needs to be modified based on what QStack installation you are working against. These changes should be self explanatory.

To provision an empty machine:
```
bundle exec chef-client -z provision/qstack-minimal.rb provision/empty-node.rb
```
To provision a web server machine:
```
bundle exec chef-client -z provision/qstack-minimal.rb provision/web-node.rb
```
