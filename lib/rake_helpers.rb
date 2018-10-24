# frozen_string_literal: true

require_relative 'rake_helpers/question'

## Module with helper methods for Rake
module RakeHelpers
	def alias_task(name, old_name)
		t = Rake::Task[old_name]
		desc t.full_comment if t.full_comment
		task name, *t.arg_names do |_, args|
			# values_at is broken on Rake::TaskArguments
			args = t.arg_names.map { |a| args[a] }
			t.invoke(*args)
		end
	end

	def env_true?(key)
		%(true yes 1 y).include?(ENV[key.to_s].to_s.downcase)
	end
end
