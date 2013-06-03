require 'spec_helper'

describe 'vundle' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_repository('vundle').with({
      :source => 'https://github.com/gmarik/vundle.git',
    })
  end
end
