class helpers::ssh_copy_id {
  file { '/usr/bin/ssh-copy-id':
    content => template('helpers/ssh_copy_id.erb'),
    mode => 755
  }    
}
