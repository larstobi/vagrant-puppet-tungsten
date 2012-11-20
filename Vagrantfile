Vagrant::Config.run do |config|
  config.vm.box = "base"

  config.vm.define :master do |config|
    config.vm.box = "base"
    config.vm.network :hostonly, "192.168.33.11"
  end

  config.vm.define :slave do |config|
    config.vm.box = "base"
    config.vm.network :hostonly, "192.168.33.12"
  end

  config.vm.define :web do |config|
    config.vm.box = "base"
    config.vm.network :hostonly, "192.168.33.13"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "repo/manifests"
    puppet.manifest_file  = "base.pp"
    puppet.module_path    =  "repo/modules"
  end
end
