class helpers::bash_fragments_chorus {
  require helpers::bash_fragments
  require stdlib

  file { "${helpers::bash_fragments::frag_dir}/chorus-env.bash":
    content => template('helpers/chorus-env.bash.erb')
  }

  file_line { 'local-greeplum host':
  	ensure => 'present',
  	line   => '192.168.33.10 local-greenplum',
  	path   => '/etc/hosts'
  }

  file_line { 'local-hdfs host':
    ensure => 'present',
    line   => '192.168.33.10 local-hdfs',
    path   => '/etc/hosts'
  }

  file_line { 'jenkins-chorus host':
    ensure => 'present',
    line   => '10.0.0.215 jenkins-chorus',
    path   => '/etc/hosts'
  }

  file_line { 'chorus-staging host':
    ensure => 'present',
    line   => '10.0.0.216 chorus-staging',
    path   => '/etc/hosts'
  }
}
