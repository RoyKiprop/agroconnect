defmodule AgroconnectWeb.Router do
  use AgroconnectWeb, :router

  import AgroconnectWeb.UserAuth

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {AgroconnectWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :fetch_current_user
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # scope "/", AgroconnectWeb do
  #   pipe_through :browser

  #   get "/", PageController, :home
  # end

  # Other scopes may use custom stacks.
  # scope "/api", AgroconnectWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:agroconnect, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: AgroconnectWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end

  ## Authentication routes

  scope "/", AgroconnectWeb do
    pipe_through [:browser, :redirect_if_user_is_authenticated]

    live_session :redirect_if_user_is_authenticated,
      on_mount: [{AgroconnectWeb.UserAuth, :redirect_if_user_is_authenticated}] do
      live "/users/register", UserRegistrationLive, :new
      live "/users/log_in", UserLoginLive, :new
      live "/users/reset_password", UserForgotPasswordLive, :new
      live "/users/reset_password/:token", UserResetPasswordLive, :edit
    end

    post "/users/log_in", UserSessionController, :create
  end

  scope "/", AgroconnectWeb do
    pipe_through [:browser, :require_authenticated_user]

    live_session :require_authenticated_user,
      on_mount: [{AgroconnectWeb.UserAuth, :ensure_authenticated}] do
      live "/users/settings", UserSettingsLive, :edit
      live "/users/settings/confirm_email/:token", UserSettingsLive, :confirm_email
    end
  end

  scope "/admin", AgroconnectWeb do
    pipe_through [:browser]

    live_session(:admin, on_mount: [{AgroconnectWeb.UserAuth, :mount_current_user}]) do
      live "/", Admin.Dashboard, :index
      live "/users", Admin.UsersLive, :index
      live "/vets", Admin.VetsLive, :index
      live "/roles", Admin.Roles, :index
      live "/profiles", Admin.Profiles, :index
      live "/agrovets", Admin.Agrovets.Index, :index
      live "/logs", Admin.Logs, :index
    end
  end

  scope "/vet", AgroconnectWeb do
    pipe_through [:browser]

    live_session(:vet_dashboard, on_mount: [{AgroconnectWeb.UserAuth, :mount_current_user}]) do
      live "/", VetDashboardLive.Index, :index
    end
  end

  scope "/user", AgroconnectWeb do
    pipe_through [:browser]

    live_session(:user_dashboard, on_mount: [{AgroconnectWeb.UserAuth, :mount_current_user}]) do
      live "/", UserDashboardLive.Index, :index
    end
  end

  scope "/", AgroconnectWeb do
    pipe_through [:browser]

    delete "/users/log_out", UserSessionController, :delete

    live_session :current_user,
      on_mount: [{AgroconnectWeb.UserAuth, :mount_current_user}] do
      live "/", WelcomeLive.Index, :index
      live "/pet-owners", PetLive.Index, :index
      live "/farmers", FarmerLive.Index, :index
      live "/users/confirm/:token", UserConfirmationLive, :edit
      live "/users/confirm", UserConfirmationInstructionsLive, :new
    end
  end
end
