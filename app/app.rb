class Blog < Padrino::Application
  configure do
    layout :custom
    # Application-specific configuration options
    # set :sessions, false     # Enabled by default
    # set :log_to_file, true   # Log to file instead of stdout (default is stdout in development)
    # set :reload, false       # Reload application files (default in development)
    # disable :padrino_helpers # Disables padrino markup helpers (enabled by default)
    # disable :flash           # Disables rack-flash (enabled by default)
  end
end