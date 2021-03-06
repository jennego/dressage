Rails.application.config.middleware.insert_before 0, Rack::Cors, debug: true do
  allow do
    origins 'localhost:4000','https://dressage-tests.herokuapp.com','https://dressagetests.netlify.app','https://devdressage.netlify.app'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end