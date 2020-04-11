
Vagrant.configure("2") do |config|
  config.vm.guest = :windows
  config.vm.communicator = "winrm"

  config.winrm.password = "vagrant"
  config.winrm.username = "vagrant"
  
  config.vm.define "win10" do |win10|
    win10.vm.box = "h6n/win10ltsc"
    win10.vm.provision "shell", path: "guest/kdbg.bat"
    win10.vm.network :forwarded_port, guest: 3389, host: 53389
    win10.vm.network :forwarded_port, guest: 49152, host: 49152
  end
end
