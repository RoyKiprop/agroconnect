defmodule AgroconnectWeb.WelcomePage do
  use Phoenix.Component

  def welcome(assigns) do
    ~H"""
    <div class="min-h-screen bg-white flex flex-col items-center justify-center p-4 relative overflow-hidden">
      <!-- Decorative Background Elements -->
      <div class="absolute inset-0 overflow-hidden">
        <div class="absolute top-0 left-0 w-96 h-96 bg-[#11643C]/5 rounded-full blur-3xl -translate-x-1/2 -translate-y-1/2">
        </div>
        <div class="absolute bottom-0 right-0 w-96 h-96 bg-[#11643C]/5 rounded-full blur-3xl translate-x-1/2 translate-y-1/2">
        </div>
        <!-- Additional subtle decorative elements -->
        <div class="absolute top-1/3 right-1/3 w-72 h-72 bg-[#11643C]/5 rounded-full blur-2xl"></div>
        <div class="absolute bottom-1/3 left-1/3 w-64 h-64 bg-[#11643C]/5 rounded-full blur-2xl">
        </div>
      </div>
      
    <!-- Main Welcome Text -->
      <div class="text-center mb-12 relative">
        <div class="mb-3">
          <!-- Logo Icon -->
          <div class="inline-block p-4 rounded-full bg-[#11643C]/10 mb-3 shadow-lg">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-12 w-12 text-[#11643C]"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            >
              <path d="M12 2L2 7l10 5 10-5-10-5z"></path>
              <path d="M2 17l10 5 10-5"></path>
              <path d="M2 12l10 5 10-5"></path>
            </svg>
          </div>
        </div>
        <h1 class="text-4xl md:text-5xl lg:text-6xl font-bold text-gray-800 mb-4">
          Welcome to
          <span class="text-[#11643C]">
            AgroConnect
          </span>
        </h1>
        <p class="text-xl md:text-2xl text-gray-600 max-w-2xl mx-auto">
          Connecting You with Quality Veterinary Care
        </p>
      </div>
      
    <!-- Login Options Container -->
      <div class="w-full max-w-5xl bg-white rounded-2xl p-8 shadow-2xl border border-gray-100 relative">
        <div class="flex flex-col md:flex-row items-center justify-center gap-8 md:gap-4">
          
    <!-- Farmer Section -->
          <div class="w-full md:w-1/2 text-center group px-6 py-4 bg-gray-50 rounded-xl border border-gray-100 transition-all duration-300 hover:shadow-lg">
            <div class="mb-6 transform transition-transform duration-300 group-hover:scale-105">
              <div class="inline-block p-4 rounded-full bg-[#11643C]/10 mb-4 shadow-lg">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-10 w-10 text-[#11643C]"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3"
                  />
                </svg>
              </div>
              <h2 class="text-2xl md:text-3xl font-semibold text-[#11643C] mb-4">Farmer Portal</h2>
              <p class="text-gray-600 mb-4 px-4">
                Manage your livestock healthcare efficiently with expert veterinary support
              </p>
              <p class="text-sm text-gray-500 mb-6">Access professional veterinary services 24/7</p>
            </div>
            <.link
              navigate="/farmers"
              class="relative overflow-hidden bg-[#11643C] text-white px-8 py-3.5 rounded-lg font-semibold transition-all duration-300 shadow-md hover:shadow-lg hover:bg-[#0d5231]"
            >
              <span class="relative z-10">Continue as Farmer</span>
            </.link>
          </div>
          
    <!-- Vertical Separator -->
          <div class="hidden md:block w-px h-60 bg-gradient-to-b from-transparent via-gray-200 to-transparent mx-2">
          </div>
          
    <!-- Pet Owner Section -->
          <div class="w-full md:w-1/2 text-center group px-6 py-4 bg-gray-50 rounded-xl border border-gray-100 transition-all duration-300 hover:shadow-lg">
            <div class="mb-6 transform transition-transform duration-300 group-hover:scale-105">
              <div class="inline-block p-4 rounded-full bg-[#11643C]/10 mb-4 shadow-lg">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-10 w-10 text-[#11643C]"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M14 10h4.764a2 2 0 011.789 2.894l-3.5 7A2 2 0 0115.263 21h-4.017c-.163 0-.326-.02-.485-.06L7 20m7-10V5a2 2 0 00-2-2h-.095c-.5 0-.905.405-.905.905 0 .714-.211 1.412-.608 2.006L7 11v9m7-10h-2M7 20H5a2 2 0 01-2-2v-6a2 2 0 012-2h2.5"
                  />
                </svg>
              </div>
              <h2 class="text-2xl md:text-3xl font-semibold text-[#11643C] mb-4">Pet Owner Portal</h2>
              <p class="text-gray-600 mb-4 px-4">
                Your one-stop solution for all your pet's healthcare needs
              </p>
              <p class="text-sm text-gray-500 mb-6">
                Book appointments and track pet health records
              </p>
            </div>
            <.link
              navigate="/pet-owners"
              class="relative overflow-hidden bg-[#11643C] text-white px-8 py-3.5 rounded-lg font-semibold transition-all duration-300 shadow-md hover:shadow-lg hover:bg-[#0d5231]"
            >
              <span class="relative z-10">Continue as Pet Owner</span>
            </.link>
          </div>
        </div>
      </div>
      
    <!-- Footer Text -->
      <div class="mt-12 text-center relative">
        <p class="text-gray-600 text-base font-medium mb-5">
          Join thousands of satisfied users who trust AgroConnect
        </p>
        <div class="flex flex-wrap items-center justify-center gap-4 mt-4">
          <span class="px-4 py-2 rounded-full bg-[#11643C]/10 text-gray-700 text-sm font-medium border border-[#11643C]/20 shadow-sm">
            <svg
              class="w-4 h-4 inline mr-1.5 text-[#11643C]"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
              >
              </path>
            </svg>
            Available 24/7
          </span>
          <span class="px-4 py-2 rounded-full bg-[#11643C]/10 text-gray-700 text-sm font-medium border border-[#11643C]/20 shadow-sm">
            <svg
              class="w-4 h-4 inline mr-1.5 text-[#11643C]"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"
              >
              </path>
            </svg>
            Trusted by Professionals
          </span>
          <span class="px-4 py-2 rounded-full bg-[#11643C]/10 text-gray-700 text-sm font-medium border border-[#11643C]/20 shadow-sm">
            <svg
              class="w-4 h-4 inline mr-1.5 text-[#11643C]"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192l-3.536 3.536M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
              >
              </path>
            </svg>
            Expert Support
          </span>
        </div>
      </div>
      
    <!-- Version Info -->
      <div class="mt-8 text-gray-400 text-xs">
        AgroConnect v1.0 © 2025
      </div>
    </div>
    """
  end
end
