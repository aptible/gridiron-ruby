require 'aptible/resource'

module Aptible
  module Gridiron
    class Resource < Aptible::Resource::Base
      def outgoing_uri_filter(params)
        params.merge!(organization: organization) if organization
      end

      def organization
        # TODO: Is there another way to persist organization across children
        headers['X-Aptible-Organization']
      end

      def initialize(options = {})
        if options.is_a?(Hash) && options[:organization]
          options[:headers] ||= {}
          organization_href = options[:organization].href
          options[:headers]['X-Aptible-Organization'] = organization_href
        end

        super(options)
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

require 'aptible/gridiron/organization_profile'
require 'aptible/gridiron/membership_notification'
require 'aptible/gridiron/policy_manual'
require 'aptible/gridiron/protocol'
require 'aptible/gridiron/requirement'
require 'aptible/gridiron/risk_assessment'
require 'aptible/gridiron/procedure'
require 'aptible/gridiron/criterion'
require 'aptible/gridiron/evidence'
require 'aptible/gridiron/document'
require 'aptible/gridiron/event'
