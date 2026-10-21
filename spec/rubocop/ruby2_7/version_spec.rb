# frozen_string_literal: true

require "anonymous_loader"
require "rubocop/ruby2_7"
RSpec.describe Rubocop::Ruby27::Version do
  it_behaves_like "a Version module", described_class

  it "executes the version file for coverage without redefining constants" do
    dir = File.expand_path("../../../lib/rubocop/ruby2_7", __dir__)
    paths = %w[version.rb version_gem.rb].map { |file| File.join(dir, file) }.select { |path| File.file?(path) }
    anonymous_namespace = AnonymousLoader.load(files: paths)

    expect(anonymous_namespace::Rubocop::Ruby27::Version::VERSION).to eq(described_class::VERSION)
  end
end
