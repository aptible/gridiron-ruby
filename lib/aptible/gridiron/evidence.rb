module Aptible
  module Gridiron
    class Evidence < Resource
      belongs_to :criterion

      field :id
      field :data

      def organization
        auth = Aptible::Auth::Organization.new(token: token, headers: headers)
        auth.find_by_url(links['organization'].href)
      end

      def user
        auth = Aptible::Auth::User.new(token: token, headers: headers)
        auth.find_by_url(links['user'].href)
      end

      def app
        api = Aptible::Api::App.new(token: token, headers: headers)
        api.find_by_url(links['app'].href)
      end
    end
  end
end
