module Aptible
  module Gridiron
    class Criterion < Resource
      has_many :documents
      has_many :events

      field :id
      field :handle
      field :name
      field :description
      field :evidence_type
      field :scope
      field :default_expiry

      def documents
        evidence_type == 'document' ? super : []
      end

      def events
        evidence_type == 'event' ? super : []
      end

      def status
        green? ? 'green' : 'red'
      end

      # TODO: Move to Gridiron, or fix logic
      def green?
        return true if evidence_type == 'event'

        return false unless documents.first
        documents.first.expires_at > Time.now
      end
    end
  end
end
