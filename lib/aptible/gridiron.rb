require 'aptible/auth'
require 'gem_config'

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'criterion', 'criteria'
end

module Aptible
  module Gridiron
    include GemConfig::Base

    with_configuration do
      has :root_url,
          classes: [String],
          default: ENV['GRIDIRON_ROOT_URL'] || 'https://gridiron.aptible.com'
    end
  end
end

require 'aptible/gridiron/resource'
require 'aptible/gridiron/agent'
