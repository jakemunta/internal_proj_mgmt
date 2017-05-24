# Be sure to restart your server when you modify this file.

Rails.application.config.middleware.insert_before(
  ActionDispatch::Session::CookieStore,
  FlashSessionCookieMiddleware,
  Rails.application.config.session_options[:key]
)

InternalProjMgmt::Application.config.session_store :cookie_store, :key => '_internalprojmgmt_session'
