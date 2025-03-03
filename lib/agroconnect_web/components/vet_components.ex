defmodule AgroconnectWeb.VetComponents do
  use Phoenix.Component
  # Import the raw function
  import Phoenix.HTML, only: [raw: 1]

  def vet_sidebar(assigns) do
    # For now, hardcode the current path for development
    assigns = assign_new(assigns, :current_path, fn -> "/dashboard" end)

    ~H"""
    <aside class="flex flex-col h-screen bg-white shadow-lg border-r border-gray-200 w-64 fixed top-0 left-0 z-30">
      <!-- Top section with profile picture -->
      <div class="flex flex-col items-center py-8 border-b border-gray-200">
        <div class="relative">
          <div class="h-20 w-20 rounded-full overflow-hidden bg-gray-100 ring-4 ring-indigo-500 ring-offset-2">
            <div class="flex items-center justify-center h-full bg-indigo-100 text-indigo-600">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke-width="1.5"
                stroke="currentColor"
                class="w-10 h-10"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z"
                />
              </svg>
            </div>
          </div>
          <div class="absolute bottom-0 right-0 bg-green-500 h-4 w-4 rounded-full border-2 border-white">
          </div>
        </div>
        <div class="mt-4 text-center">
          <h3 class="font-semibold text-gray-900">Vet Name</h3>
          <p class="text-sm text-gray-500">vet@example.com</p>
        </div>
      </div>

      <nav class="flex-1 py-6 px-4 space-y-1 overflow-y-auto">
        <.menu_item current_path={@current_path} path="/profile" title="Profile" />
        <.menu_item current_path={@current_path} path="/bookings" title="Bookings" />
        <.menu_item current_path={@current_path} path="/dashboard" title="Dashboard" />
        <.menu_item current_path={@current_path} path="/opening-hours" title="Opening Hours" />
      </nav>

      <div class="p-4 border-t border-gray-200">
        <button class="flex items-center justify-between w-full px-4 py-3 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors">
          <div class="flex items-center">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke-width="1.5"
              stroke="currentColor"
              class="w-5 h-5 text-gray-600"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M8.625 12a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H8.25m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H12m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0h-.375M21 12c0 4.556-4.03 8.25-9 8.25a9.764 9.764 0 0 1-2.555-.337A5.972 5.972 0 0 1 5.41 20.97a5.969 5.969 0 0 1-.474-.065 4.48 4.48 0 0 0 .978-2.025c.09-.457-.133-.901-.467-1.226C3.93 16.178 3 14.189 3 12c0-4.556 4.03-8.25 9-8.25s9 3.694 9 8.25Z"
              />
            </svg>
            <span class="ml-3 text-sm font-medium text-gray-700">Messages</span>
          </div>
          <span class="inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-white bg-red-500 rounded-full">
            3
          </span>
        </button>
      </div>
    </aside>
    """
  end

  def menu_item(assigns) do
    assigns =
      assigns
      |> assign(:active, assigns.current_path == assigns.path)
      |> assign(
        :active_classes,
        if(assigns.current_path == assigns.path,
          do: "bg-indigo-50 text-indigo-600",
          else: "text-gray-700 hover:bg-gray-50"
        )
      )

    ~H"""
    <a
      href={@path}
      class={"flex items-center px-4 py-3 text-sm font-medium rounded-md transition-colors #{@active_classes}"}
    >
      {raw(get_icon(@path))}
      <span class="ml-3">{@title}</span>
      <%= if @active do %>
        <span class="ml-auto h-2 w-2 rounded-full bg-indigo-500"></span>
      <% end %>
    </a>
    """
  end

  defp get_icon("/profile") do
    """
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
      <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z" />
    </svg>
    """
  end

  defp get_icon("/bookings") do
    """
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
      <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 0 1 2.25-2.25h13.5A2.25 2.25 0 0 1 21 7.5v11.25m-18 0A2.25 2.25 0 0 0 5.25 21h13.5A2.25 2.25 0 0 0 21 18.75m-18 0v-7.5A2.25 2.25 0 0 1 5.25 9h13.5A2.25 2.25 0 0 1 21 11.25v7.5" />
    </svg>
    """
  end

  defp get_icon("/dashboard") do
    """
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
      <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 3v11.25A2.25 2.25 0 0 0 6 16.5h2.25M3.75 3h-1.5m1.5 0h16.5m0 0h1.5m-1.5 0v11.25A2.25 2.25 0 0 1 18 16.5h-2.25m-7.5 0h7.5m-7.5 0-1 3m8.5-3 1 3m0 0 .5 1.5m-.5-1.5h-9.5m0 0-.5 1.5m.75-9 3-3 2.148 2.148A12.061 12.061 0 0 1 16.5 7.605" />
    </svg>
    """
  end

  defp get_icon("/opening-hours") do
    """
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
      <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
    </svg>
    """
  end
end
