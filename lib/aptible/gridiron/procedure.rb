module Aptible
  module Gridiron
    class Procedure < Resource
      field :action

      belongs_to :requirement
      has_many :criteria
      has_many :documents
      has_many :events
    end
  end
end
