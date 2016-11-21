module Aptible
  module Gridiron
    class MembershipNotification < Resource
      belongs_to :organization_profile

      field :id
      field :user_url
      field :role_url
    end
  end
end
