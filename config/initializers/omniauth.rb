Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['c0ca93001173a6903d62'], ENV['47d5da201e469b2e010bb139cbeee485c7aae84e']
end