# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server
use Rack::Cors do
    allow do
      origins 'http://localhost:3001', 'https://jobtracker-app.netlify.app/'#change orgin to front-end during production
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
end
  