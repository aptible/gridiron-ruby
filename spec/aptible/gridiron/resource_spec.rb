require 'spec_helper'

describe Aptible::Gridiron::Resource do
  its(:namespace) { should eq 'Aptible::Gridiron' }
  its(:root_url) { should eq 'https://gridiron.aptible.com' }
end
