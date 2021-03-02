OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '234953018279032', '4bc7a8a455cc3ad0d100d0885e30455a'
  provider :github, 'f21eb2c29797b76b9530', 'cb0e2e84d1423c0b17b69985cef6fd3b76bb85d9',scope: "user,repo,gist"
  provider :google_oauth2, '722673668946-kksjthpktjt1hgog7merr5lkdpqdb03d.apps.googleusercontent.com', 'R_dQiztGjXwrZx_mAmSlLg1c'
end
