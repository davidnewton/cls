require 'rubygems'
require 'rspec-puppet'
require 'mocha/api'

require 'puppetlabs_spec_helper/module_spec_helper'

fixture_path = File.expand_path(File.join(__FILE__, '..', 'fixtures'))

RSpec.configure do |c|
  c.module_path = File.join(fixture_path, 'modules')
  c.manifest_dir = File.join(fixture_path, 'manifests')
  c.mock_with :mocha
end

def centos_facts
  {
    :operatingsystem => 'CentOS',
    :osfamily        => 'RedHat',
  }
end

def debian_facts
  {
    :operatingsystem => 'Debian',
    :osfamily        => 'Debian',
  }
end
