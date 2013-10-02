define observium::add_device(
  $community,
  $snmp_version = $observium::snmp_version,
) {
  $hostname = $name

  exec { "add_device-${hostname}":
    path    => $observium::base_path,
    command => "add_device.php ${hostname} ${community} ${snmp_version}",
    cwd     => $observium::base_path,
  }

}
