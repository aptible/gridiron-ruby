module Aptible
  module Gridiron
    class OrganizationProfile < Resource
      has_many :membership_notifications
      has_many :risk_assessments
      has_many :policy_manuals

      field :id
      field :organization_url
      field :has_completed_setup
      field :current_step
      field :about_organization
      field :about_architecture
      field :about_business_model
      field :about_team
      field :about_go_to_market
    end
  end
end
