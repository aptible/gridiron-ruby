module Aptible
  module Gridiron
    class PolicyManual < Resource
      belongs_to :organization_profile

      field :id
    end
  end
end
