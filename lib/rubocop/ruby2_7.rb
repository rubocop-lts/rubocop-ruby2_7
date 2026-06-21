# frozen_string_literal: true

# external libs
require "version_gem"

# this gem
require_relative "ruby2_7/version"
# simplecov:disable
require_relative "ruby2_7/railtie" if defined?(Rails::Railtie)
# simplecov:enable

module Rubocop
  # Namespace of this library
  module Ruby27
    module_function def install_tasks
      load("rubocop/ruby2_7/tasks.rb")
    end
  end
end

Rubocop::Ruby27::Version.class_eval do
  extend VersionGem::Basic
end
