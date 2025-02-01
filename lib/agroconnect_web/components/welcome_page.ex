defmodule AgroconnectWeb.WelcomePage do
  use Phoenix.Component

  def welcome(assigns) do
    ~H"""
    <div class="min-h-screen bg-gradient-to-br from-[#12643c] via-[#1a724c] to-[#0c4429] flex flex-col items-center justify-center p-4 relative overflow-hidden">
      <!-- Decorative Background Elements -->
      <div class="absolute inset-0 overflow-hidden">
        <div class="absolute top-0 left-0 w-96 h-96 bg-[#98fab4]/10 rounded-full blur-3xl -translate-x-1/2 -translate-y-1/2">
        </div>
        <div class="absolute bottom-0 right-0 w-96 h-96 bg-[#98fab4]/10 rounded-full blur-3xl translate-x-1/2 translate-y-1/2">
        </div>
      </div>
      
    <!-- Main Welcome Text -->
      <div class="text-center mb-12 relative">
        <h1 class="text-4xl md:text-5xl lg:text-6xl font-bold text-white mb-4 drop-shadow-lg">
          Welcome to
          <span class="bg-clip-text text-transparent bg-gradient-to-r from-[#98fab4] to-white">
            AgroConnect
          </span>
        </h1>
        <p class="text-xl md:text-2xl text-[#98fab4] drop-shadow">
          Connecting You with Quality Veterinary Care
        </p>
      </div>
      
    <!-- Login Options Container -->
      <div class="w-full max-w-5xl bg-white/5 backdrop-blur rounded-2xl p-8 shadow-2xl border border-white/10 relative">
        <div class="flex flex-col md:flex-row items-center justify-center gap-8 md:gap-0">
          
    <!-- Farmer Section -->
          <div class="w-full md:w-1/2 text-center group">
            <div class="mb-6">
              <div class="inline-block p-3 rounded-full bg-[#98fab4]/10 mb-4">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-8 w-8 text-[#98fab4]"
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
              <h2 class="text-2xl md:text-3xl font-semibold text-[#98fab4] mb-4">Farmer Portal</h2>
              <p class="text-white/90 mb-4 px-4">
                Manage your livestock healthcare efficiently with expert veterinary support
              </p>
              <p class="text-sm text-[#98fab4] mb-6">Access professional veterinary services 24/7</p>
            </div>
            <button
              phx-click="navigate_to_farmer"
              class="relative bg-gradient-to-r from-[#98fab4] to-[#7ad499] text-[#12643c] px-8 py-3 rounded-lg font-semibold transition-all duration-300 shadow-lg hover:shadow-xl hover:scale-105 hover:from-[#7ad499] hover:to-[#98fab4]"
            >
              Continue as Farmer
            </button>
          </div>
          
    <!-- Vertical Separator -->
          <div class="w-full h-px md:w-px md:h-60 bg-gradient-to-b from-transparent via-[#98fab4]/30 to-transparent md:mx-8">
          </div>
          
    <!-- Pet Owner Section -->
          <div class="w-full md:w-1/2 text-center group">
            <div class="mb-6">
              <div class="inline-block p-3 rounded-full bg-[#98fab4]/10 mb-4">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-8 w-8 text-[#98fab4]"
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
              <h2 class="text-2xl md:text-3xl font-semibold text-[#98fab4] mb-4">Pet Owner Portal</h2>
              <p class="text-white/90 mb-4 px-4">
                Your one-stop solution for all your pet's healthcare needs
              </p>
              <p class="text-sm text-[#98fab4] mb-6">
                Book appointments and track pet health records
              </p>
            </div>
            <button
              phx-click="navigate_to_pet_owner"
              class="relative bg-gradient-to-r from-[#98fab4] to-[#7ad499] text-[#12643c] px-8 py-3 rounded-lg font-semibold transition-all duration-300 shadow-lg hover:shadow-xl hover:scale-105 hover:from-[#7ad499] hover:to-[#98fab4]"
            >
              Continue as Pet Owner
            </button>
          </div>
        </div>
      </div>
      
    <!-- Footer Text -->
      <div class="mt-8 text-center relative">
        <p class="text-[#98fab4] text-sm font-medium mb-3">
          Join thousands of satisfied users who trust AgroConnect
        </p>
        <div class="flex flex-wrap items-center justify-center gap-4 mt-4">
          <span class="px-4 py-1 rounded-full bg-[#98fab4]/10 text-[#98fab4]/90 text-xs">
            Available 24/7
          </span>
          <span class="px-4 py-1 rounded-full bg-[#98fab4]/10 text-[#98fab4]/90 text-xs">
            Trusted by Professionals
          </span>
          <span class="px-4 py-1 rounded-full bg-[#98fab4]/10 text-[#98fab4]/90 text-xs">
            Expert Support
          </span>
        </div>
      </div>
    </div>
    """
  end
end
