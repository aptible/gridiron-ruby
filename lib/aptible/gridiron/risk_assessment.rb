module Aptible
  module Gridiron
    class RiskAssessment < Resource
      belongs_to :organization_profile

      field :id
    end
  end
end
