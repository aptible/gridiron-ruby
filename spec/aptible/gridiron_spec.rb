require 'spec_helper'

describe Aptible::Gridiron do
  subject { Aptible::Gridiron::Protocol.new }

  it 'should have a configurable root_url' do
    config = described_class.configuration
    expect(config).to be_a GemConfig::Configuration
    expect(config.root_url).to eq 'https://gridiron.aptible.com'
  end

  skip 'uses ENV["GRIDIRON_ROOT_URL"] if defined' do
    config = described_class.configuration
    with_env 'GRIDIRON_ROOT_URL', 'http://foobar.com' do
      config.reset
      expect(config.root_url).to eq 'http://foobar.com'
    end
  end
end
