require 'spec_helper'

describe 'gpgtools' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_package('gpgtools').with({
      :source   => 'https://github.com/downloads/GPGTools/GPGTools/GPGTools-20120318.dmg',
      :provider => 'appdmg'
    })
  end
end
