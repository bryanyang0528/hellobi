Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.define :master do |master|
    master.vm.hostname = "10.211.55.100"
    master.vm.provider :virtualbox do |v|
      v.name = "10.211.55.100"
      v.memory = 1024
      v.cpus = 2
    end
    master.vm.network :private_network, ip: "10.211.55.100"
    master.vm.provision :shell, path: "bootstrap_master.sh"
  end


  (1..2).each do |i|
    config.vm.define "node#{i}" do |node|
      node.vm.hostname = "10.211.55.10#{i}"
      node.vm.provider :virtualbox do |v|
        v.memory = 512
        v.cpus = 1
      end
      node.vm.network :private_network, ip: "10.211.55.10#{i}"
    end
  end

  config.vm.provision :shell, path: "bootstrap.sh"
end


