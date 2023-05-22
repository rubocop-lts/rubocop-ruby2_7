module Rubocop
  module Ruby27
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby2_7

      if Rails.env.test? || Rails.env.development?
        rake_tasks do
          Rubocop::Ruby27.install_tasks
        end
      end
    end
  end
end
