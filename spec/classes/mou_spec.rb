require 'spec_helper'

describe 'mou' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_package('Mou').with({
      :source   => 'http://mouapp.com/download/Mou.zip',
      :provider => 'compressed_app'
    })
  end
end
