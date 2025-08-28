Rails.application.configure do
  config.generators do |g|
    g.test_framework :rspec, views: true
    g.factory_bot :true
  end
end
