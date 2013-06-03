# Public: Install vundle
#
# Examples
#
#   include vundle
class vundle {
  $vundle_dir = "${boxen::config::homedir}/.vimrc/bundle/vundle"
  file { $vundle_dir:
    ensure   => 'directory'
  }
  repository { $vundle_dir:
    source   => 'https://github.com/gmarik/vundle.git',
  }

  #Launch vim, run :BundleInstall (or vim +BundleInstall +qall for CLI lovers)
}
