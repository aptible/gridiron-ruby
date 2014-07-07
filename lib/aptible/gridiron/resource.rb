require 'aptible/resource'

module Aptible
  module Gridiron
    class Resource < Aptible::Resource::Base
      def namespace
        'Aptible::Gridiron'
      end

      def root_url
        Aptible::Gridiron.configuration.root_url
      end
    end
  end
end

require 'aptible/gridiron/protocol'
require 'aptible/gridiron/requirement'
require 'aptible/gridiron/procedure'
require 'aptible/gridiron/criterion'

require 'aptible/gridiron/evidence'
require 'aptible/gridiron/document'
require 'aptible/gridiron/event'
