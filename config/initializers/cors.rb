Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
             headers: :any,
             expose: %w[access-token expiry token],
             methods: %i[get post put delete options]
  end
end
