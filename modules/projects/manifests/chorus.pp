class projects::chorus {
  require wget

  include rubymine
  include virtualbox
  include vagrant
  include helpers::bash_fragments_chorus
  include maven
  include foreman

  boxen::project { 'chorus':
    source => 'Chorus/chorus'
  }

  boxen::project { 'chorushdfs':
    source => 'Chorus/chorushdfs'
  }

  boxen::project { 'rspec_api_documentation':
    source => 'Chorus/rspec_api_documentation'
  }

  file {"${boxen::config::srcdir}/chorus/.git/hooks/pre-commit":
    ensure  => 'file',
    source  => "${boxen::config::srcdir}/chorus/script/pre-commit",
    mode    => 755,
    require => Boxen::Project['chorus']
  }

}