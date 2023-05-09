module Rubocop
  module Ruby27
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby2_7

      rake_tasks do
        load "rubocop/ruby2_7/tasks.rake" if Rails.env.test? || Rails.env.development?
      end
    end
  end
end
