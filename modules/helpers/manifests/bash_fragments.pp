class helpers::bash_fragments {

  $home = "/Users/${::boxen_user}"

  file { "${home}/.bash_profile":
    content => template('helpers/bash_profile.erb')
  }

  $frag_dir = "${home}/.bash_fragments"

  file { $frag_dir:
    ensure => 'directory',
    alias  => 'frag-dir'
  }

  file { "${frag_dir}/local.bash":
    ensure  => 'present',
    replace => false,
    content => '# Local/non-shared environment',
    require => File[$frag_dir]
  }

  file { "${frag_dir}/aliases.bash":
    content => template('helpers/aliases.bash.erb'),
    require => File[$frag_dir]
  }

  file { "${frag_dir}/environment.bash":
    content => template('helpers/environment.bash.erb'),
    require => File[$frag_dir]
  }

}
