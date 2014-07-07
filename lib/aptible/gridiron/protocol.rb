module Aptible
  module Gridiron
    class Protocol < Resource
      has_many :requirements
      has_many :procedures
      has_many :criteria

      field :id
      field :version
      field :published_at, type: DateTime
    end
  end
end
