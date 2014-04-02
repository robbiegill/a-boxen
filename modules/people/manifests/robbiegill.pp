class people::robbiegill {

  include wget
  include projects::default
  include projects::chorus

  include sublime_text_2
  sublime_text_2::package { 'Git':
    source => 'kemayo/sublime-text-2-git'
  }
  sublime_text_2::package { 'Puppet':
    source => 'eklein/sublime-text-puppet'
  }

  include chrome::canary
  include firefox::aurora

  include vlc

  class { 'osx::dock::position':
    position => 'left'
  }
  class { 'osx::global::natural_mouse_scrolling':
    enabled => false
  }
  include osx::global::key_repeat_rate
  class {'osx::global::key_repeat_delay':
    delay => 5
  }
  include osx::global::disable_key_press_and_hold
  include osx::dock::autohide
  include osx::finder::unhide_library

  include helpers::osx_style
  include helpers::git_prompt
  include font::source-code-pro
  include shiftit

  boxen::project { 'serve':
    source => 'robbiegill/serve',
    nginx  => true
  }

}
