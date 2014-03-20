class projects::default {
  include bash
  include bash::completion
  include iterm2::stable
  include chrome
  include firefox
  include osx::no_network_dsstores
  include helpers::bash_fragments
  include helpers::ssh_copy_id

  git::config::global {
    'alias.st':          value => 'status';
    'alias.ci':          value => 'commit';
    'alias.co':          value => 'checkout';
    'alias.di':          value => 'diff';
    'alias.dc':          value => 'diff --cached';
    'alias.lp':          value => 'log -p --word-diff';
    'alias.dw':          value => 'diff --word-diff';
    'alias.squash':      value => 'commit --squash';
    'alias.unstage':     value => 'reset HEAD';
    'alias.standup':     value => "log --since '1 day ago' --oneline";
    'color.ui':          value => 'true';
    'color.branch':      value => 'auto';
    'color.interactive': value => 'auto';
    'color.status':      value => 'auto';
    'color.disf':        value => 'auto';
    'push.default':      value => 'simple';
    'core.pager':        value => 'less -FXRS -x2';
  }

  package { 'CCMenu':
    provider => 'appdmg',
    source   => 'http://hivelocity.dl.sourceforge.net/project/ccmenu/CCMenu/1.6.3/ccmenu-1.6.3-b.dmg'
  }
}