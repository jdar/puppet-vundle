# Public: Install vundle
#
# Examples
#
#   include vundle
class vundle {
  $vundle_dir = "${boxen::config::homedir}/.vim/bundle/vundle"
  #file { $vundle_dir:
  #  ensure   => 'directory'
  #}
  exec { 'mkdir_vundle_dir':
      path    => [ '/bin', '/usr/bin' ],
      command => "mkdir -p ${vundle_dir}"
  }
  repository { $vundle_dir:
    source   => 'https://github.com/gmarik/vundle.git',
  }


  #Launch vim, run :BundleInstall (or vim +BundleInstall +qall for CLI lovers)
 #vim -c ":BundleInstall"
  exec { "install via 'BundleInstall'":
    cwd      => $vundle_dir,
    #path    => [ '/bin', '/usr/bin' ],
    command  => "vim +BundleInstall +qall foo.txt",
    provider => shell
    #creates  => "${home}/.zshrc",
    #require  => Repository[$dotfiles_dir]
  }
}
