require 'aptible/resource'

module Aptible
  module Gridiron
    class Resource < Aptible::Resource::Base
      def self.normalize_params(params = {})
        # TODO: Figure out a more natural solution than this monkey patch
        if (organization = Aptible::Gridiron.configuration.organization)
          params.merge!(organization: organization.href)
        end

        super(params)
      end

      def outgoing_uri_filter(params)
        if (organization = Aptible::Gridiron.configuration.organization)
          params.merge!(organization: organization.href)
        end

        params
      end

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
