# frozen_string_literal: true

require_relative 'lib/rake_helpers/version'

Gem::Specification.new do |spec|
	spec.name = 'rake_helpers'

	spec.version = RakeHelpers::VERSION

	spec.summary = 'Helper methods for Rake'

	spec.authors = ['Alexander Popov']

	spec.required_ruby_version = '~> 2.3'

	spec.add_development_dependency 'rubocop', '~> 0.59.2'
end
