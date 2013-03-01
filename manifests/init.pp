# Public: Install Mou.app into /Applications.
#
# Examples
#
#   include mou
class mou {
  package { 'Mou':
    source   => 'http://mouapp.com/download/Mou.zip',
    provider => 'compressed_app'
  }
}
