class helpers::osx_style {

	boxen::osx_defaults { 'Real function keys':
	  key    => 'com.apple.keyboard.fnState',
	  domain => 'NSGloablDomain',
	  value  => 'true'
	}
}
