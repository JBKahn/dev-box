require 'yaml'

VAGRANTFILE_API_VERSION = "2"

base_dir = File.expand_path(File.dirname(__FILE__))
conf = YAML.load_file "#{base_dir}/config.yml"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "vagrant.dev-local.com"
    config.vm.network :private_network, ip: "10.0.0.200"

    config.vm.synced_folder ".", "/vagrant", :nfs => conf['nfs'], :nfs_version => "3,nolock,udp"

  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", conf['memory'],
      "--cpus", conf['cpus'],
      "--rtcuseutc", "on",
    ]
  end

  config.ssh.forward_agent = true

  config.vm.provision "ansible" do |ansible|
    ansible.limit = 'all'
    ansible.playbook = "ansible/playbook.yml"
    ansible.inventory_path = "ansible/HOSTS"
    ansible.extra_vars = {}

    # Uncomment, and increase as needed (up to `vvvv`) for debugging purposes.
    # ansible.verbose = 'vvvv'

    # Uncomment, and add a list of tags to provision
    # ansible.tags = []

    # Uncomment, and a list of tags to skip during provisioning
    # ansible.skip_tags = []

    # Uncomment, and add a task name to start provisioning at that spot
    # ansible.start_at_task = 'copy jshint configuration file into src root'
  end

end
