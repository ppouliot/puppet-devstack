class devstack(
   $stackroot,
   $admin_passwd
   
){

  $stacksrc       = "${stackroot}/devstack"
  $stackdest      = "${stackroot}/stack"
  $mysql_passwd   = $admin_passwd
  $rabbit_passwd  = $admin_passwd
  $service_passwd = $admin_passwd
  $path           = $::path

  $devstack_controller_ip = "10.21.7.51"
  $devstack_controller_netmask = "255.255.255.0"
  $devstack_controller_gateway = "10.21.7.254"
  $quantum_ip = "10.21.7.52"
  $quantum_netmask = $devstack_controller_netmask
  $quantum_gateway = $devstack_controller_gateway

class {prereqs: }
class {commands: }

  gitbuild{"devstack":
    githome => "http://github.com/openstack-dev",
  }

class {localrc: }
class {interfaces: }
class {bashrc: }


}
