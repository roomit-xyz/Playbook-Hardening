Vagrant.configure("2") do |config|
   
    config.vm.define "node1" do |node1|
      node1.vm.box = "centos/7"
      node1.vm.hostname = "freeipa.wajtamaka.com"
      node1.vm.network "private_network", ip: "192.168.56.11"
      node1.vm.provider "virtualbox" do |vb|
         vb.name = "node1"
         vb.memory = "2048"
      end
    end
    
    config.vm.define "node2" do |node2|
      node2.vm.box = "bento/ubuntu-22.04"
      node2.vm.hostname = "client.wajatmaka.com"
      node2.vm.network "private_network", ip: "192.168.56.12"
      node2.vm.provider "virtualbox" do |vb|
         vb.name = "node2"
         vb.memory = "512"
      end
    end
   

end
