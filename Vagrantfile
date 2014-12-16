Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-server-12042-x64-vbox4210-nocm"
  config.vm.provision "shell", :inline => <<-SHELL
    apt-get update
    apt-get install -y puppet
  SHELL
  config.vm.provision "puppet" do |puppet|
    puppet.module_path = "modules"
  end
end
