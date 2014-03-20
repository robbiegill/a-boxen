class helpers::git_prompt {
  require helpers::bash_fragments

  file { "${helpers::bash_fragments::frag_dir}/git-prompt.bash":
    content => template('helpers/git-prompt.bash.erb')
  }

}
