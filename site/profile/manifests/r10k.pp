class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/xabaweb/control_repo2',
  }
  class {'r10k::webhook::config':
    use_mcollective => false,
    enable_ssl      => false,
  }
  class {'r10k::webhook':
    user  => 'root',
    group => 'root',
  }
}
