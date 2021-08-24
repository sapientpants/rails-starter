# frozen_string_literal: true

# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec" command
  # watch(/^.+\.gemspec/)
end

guard 'bundler_audit', run_on_start: true do
  watch('Gemfile.lock')
end

guard 'brakeman', run_on_start: true do
  watch(%r{^app/.+\.(erb|haml|rhtml|rb)$})
  watch(%r{^config/.+\.rb$})
  watch(%r{^lib/.+\.rb$})
  watch('Gemfile')
end

guard 'migrate' do
  watch(%r{^db/migrate/(\d+).+\.rb})
  watch('db/seeds.rb')
end

guard 'rspec', cmd: 'bundle exec rspec --colour', all_on_start: true do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch("spec/rails_helper.rb") { "spec" }
  watch("spec/spec_helper.rb")  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml)$}) { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_controller\.rb$}) do |m|
    ["spec/routing/#{m[1]}_routing_spec.rb",
     "spec/controllers/#{m[1]}_controller_spec.rb"]
  end
  watch(%r{^app/controllers/api/(.+)_controller\.rb$}) do |m|
    ["spec/api/#{m[1]}_api_spec.rb"]
  end
  watch(%r{^app/serializers/(.+)_serializer\.rb$}) do |m|
    ["spec/controllers/api/#{m[1]}_controller_spec.rb",
     "spec/api/#{m[1]}_api_spec.rb"]
  end

  watch('config/routes.rb') { ['spec/routing'] }
  watch(%r{^config/initializers/(.+)\.rb$}) { |m| "spec/config/initilizers/#{m[1]}_spec.rb" }
  watch('app/controllers/application_controller.rb') do
    ['spec/controllers',
     'spec/api']
  end

  # Run mailer specs when mailer views or fixtures change
  watch(%r{^app/views/notifier})                      { 'spec/mailers' }
  watch(%r{^spec/fixtures/notifier})                  { 'spec/mailers' }

  #  # Capybara features specs
  #  watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/features/#{m[1]}_spec.rb" }
  #
  #  # Turnip features and steps
  #  watch(%r{^spec/acceptance/(.+)\.feature$})
  #  watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$})   { |m| Dir[File.join("**/#{m[1]}.feature")][0] || "spec/acceptance" }
end

guard 'process', name: 'Jest', command: 'yarn test' do
  watch(%r{^app/javascript/(.+)\.([jt]sx?)$}) { |m| "spec/javascript/#{m[1]}.#{m[2]}" }
  watch(%r{^spec/javascript/(.+)\.+spec.([jt]sx?)$})
end



