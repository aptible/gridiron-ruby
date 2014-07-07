module Aptible
  module Gridiron
    class Requirement < Resource
      belongs_to :protocol
      has_many :procedures

      field :id
      field :description
      field :section
      field :subsection
      field :rule
      field :relevant_provision
      field :provision_type
      field :specification_type
      field :standard_title
      field :performance_criteria
    end
  end
end
