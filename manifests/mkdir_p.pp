#
# define pam::mkdir_p
#
define pam::mkdir_p {
  exec { "mkdir_p-${name}":
    command => "mkdir -p ${name}",
    unless  => "test -d ${name}",
    path    => '/bin:/usr/bin',
  }
}
