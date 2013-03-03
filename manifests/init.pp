# Public: Install grabbox.app into /Applications.
#
# Examples
#
#   include grabbox
class grabbox {
  package { 'Grabbox':
    source   => 'http://grabbox.devsoft.no/updates/GrabBox%201.1.7.zip',
    provider => 'compressed_app'
  }
}
