class Blog < Padrino::Application
  register SassInitializer
  
  configure do
    layout :custom
    # Application-specific configuration options
    # set :sessions, false     # Enabled by default
    # set :log_to_file, true   # Log to file instead of stdout (default is stdout in development)
    # set :reload, false       # Reload application files (default in development)
    # set :locale, :it         # Set the current locale (default is :en)
    # disable :padrino_helpers # Disables padrino markup helpers (enabled by default)
    # disable :flash           # Disables rack-flash (enabled by default)
    enable :auto_locale        # Enable auto localization inspecting "/:locale/your/path" or browser languages
  end
end