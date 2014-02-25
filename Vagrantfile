VAGRANTFILE_API_VERSION = '2'
SYNCED_FOLDER = "D:/workspace"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'precise64'
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
  config.vm.host_name = 'devenv'

  config.vm.network :private_network, ip: '10.10.10.10'

  config.vm.network :forwarded_port, guest: 5432, host: 5432    # postgresql

  config.vm.synced_folder SYNCED_FOLDER, "/workspace", :nfs => true

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', '1024']
  end

  # Chef-solo
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path = "roles"
    chef.add_role "base"
  end

end