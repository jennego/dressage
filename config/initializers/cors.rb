Rails.application.config.middleware.insert_before 0, Rack::Cors, debug: true do
  allow do
    origins 'localhost:4000', 'https://dressage-tests.herokuapp.com'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end