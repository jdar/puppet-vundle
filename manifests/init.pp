# Public: Install gpgtools.app into /Applications.
#
# Examples
#
#   include gpgtools
class gpgtools {
  package { 'gpgtools':
    source   => 'https://github.com/downloads/GPGTools/GPGTools/GPGTools-20120318.dmg',
    provider => 'appdmg'
  }
}
