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
    end
  end
end
