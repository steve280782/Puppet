class vim {
  package { 'vim-enhanced.x86_64':
    ensure => present,
    provider => 'yum',
  }

  file { '/root/.vimrc':
    ensure => file,
    source => '/etc/puppet/modules/vim/files/vimrc',
    require => Package['vim-enhanced.x86_64'],
  }

  file { '/home/vagrant/.vimrc':
    ensure => file,
    source => '/etc/puppet/modules/vim/files/vimrc',
    require => Package['vim-enhanced.x86_64'],
  }
}
