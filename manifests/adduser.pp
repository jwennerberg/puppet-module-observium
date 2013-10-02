define observium::adduser(
  $password,
  $level
) {
  $username = $name

  exec { "adduser-${username}":
    path    => $observium::base_path,
    command => "adduser.php ${username} ${password} ${level}",
    cwd     => $observium::base_path,
  }

}
