require 'spec_helper'

describe 'grabbox' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_package('grabbox').with({
      :source   => 'http://grabbox.devsoft.no/updates/GrabBox%201.1.7.zip',
      :provider => 'compressed_app'
    })
  end
end
