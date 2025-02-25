defmodule AgroconnectWeb.FarmersLandingComponents do
  use Phoenix.Component

  def nav_bar(assigns) do
    ~H"""
    <div class="bg-white shadow-sm px-6 py-3 sticky top-0 z-50">
      <div class="max-w-[1500px] mx-auto flex items-center justify-between">
        <div class="flex-shrink-0">
          <img class="h-16 w-auto" src="/images/logo2.png" alt="Agroconnect Logo" />
        </div>

        <nav class="hidden md:flex space-x-10 flex-grow justify-center">
          <a
            class="text-[#666666] text-lg lexend font-medium hover:text-[#11643C] transition-colors duration-200"
            href="index.html"
          >
            Home
          </a>
          <a
            class="text-[#666666] text-lg lexend font-medium hover:text-[#11643C] transition-colors duration-200"
            href="services.html"
          >
            Services
          </a>
          <a
            class="text-[#666666] text-lg lexend font-medium hover:text-[#11643C] transition-colors duration-200"
            href="#"
          >
            About Us
          </a>
          <a
            class="text-[#666666] text-lg lexend font-medium hover:text-[#11643C] transition-colors duration-200"
            href="#"
          >
            Shop
          </a>
          <a
            class="text-[#666666] text-lg lexend font-medium hover:text-[#11643C] transition-colors duration-200"
            href="#"
          >
            Contact Us
          </a>
        </nav>

        <div class="flex space-x-4 flex-shrink-0">
          <a href="clinic-registration.html">
            <button class="bg-[#11643C] py-2.5 px-4 text-white font-semibold rounded-lg text-base hover:bg-[#0d5231] transition-colors duration-200">
              Register Clinic
            </button>
          </a>
          <a href="signup.html">
            <button class="bg-black py-2.5 px-4 text-white font-semibold rounded-lg text-base hover:bg-black/70 transition-colors duration-200">
              Sign Up
            </button>
          </a>
        </div>
      </div>
    </div>
    """
  end

  def hero(assigns) do
    ~H"""
    <div class="relative min-h-screen w-full bg-white" id="home">
      <div class="w-full absolute inset-0 bg-[#11643C] hero-curve"></div>

      <div class="relative z-10 max-w-[1500px] mx-auto pt-8 md:pt-28 px-6 ">
        <div class="flex flex-col md:flex-row items-center gap-8 md:gap-12">
          <div class="text-center md:text-left md:w-1/2 pt-16 md:pt-8">
            <h1 class="text-4xl md:text-5xl font-bold tracking-wide mb-6 leading-tight text-white">
              Connecting Farmers with Quality Veterinary Services
            </h1>
            <p class="text-sm md:text-base mb-8 text-[#EAEAEA] max-w-xl">
              Agroconnect bridges the gap between farmers and veterinary services,
              ensuring your livestock receive the best care possible.
              From routine check-ups to emergency interventions, we've got you covered.
            </p>

            <div class="flex flex-col sm:flex-row gap-4 mb-12 justify-center md:justify-start">
              <a href="clinic-registration.html">
                <button class="bg-white text-[#11643C] px-8 py-3 text-base font-semibold hover:bg-gray-100 rounded-md shadow-md">
                  Register Clinic
                </button>
              </a>
              <button
                class="bg-transparent text-white border-2 border-white px-8 py-3 text-base font-semibold hover:bg-white/10 rounded-md"
                phx-click="get_started"
              >
                Find Vet Services
              </button>
            </div>
          </div>

          <div class="relative w-full md:w-1/2 md:mt-0 mt-6">
            <div class="bg-white/10 p-3 ">
              <img
                src="#"
                alt="Farmer with veterinarian checking livestock"
                class="w-full h-auto rounded-lg object-cover shadow-md"
                style="aspect-ratio: 16/9; max-height: 380px;"
              />
            </div>
            <div class="absolute -bottom-4 -right-4 bg-[#FFC107] text-[#11643C] py-2 px-4 rounded-md font-bold shadow-md hidden md:block">
              24/7 Support
            </div>
          </div>
        </div>

        <div class="mt-16 md:mt-24 grid grid-cols-2 md:grid-cols-4 gap-4 pb-12">
          <div class="bg-white/10 p-4 rounded-lg text-center">
            <p class="text-white text-3xl font-bold">500+</p>
            <p class="text-[#EAEAEA] text-sm">Registered Vets</p>
          </div>
          <div class="bg-white/10 p-4 rounded-lg text-center">
            <p class="text-white text-3xl font-bold">10K+</p>
            <p class="text-[#EAEAEA] text-sm">Farmers Served</p>
          </div>
          <div class="bg-white/10 p-4 rounded-lg text-center">
            <p class="text-white text-3xl font-bold">95%</p>
            <p class="text-[#EAEAEA] text-sm">Satisfaction Rate</p>
          </div>
          <div class="bg-white/10 p-4 rounded-lg text-center">
            <p class="text-white text-3xl font-bold">2hr</p>
            <p class="text-[#EAEAEA] text-sm">Avg Response Time</p>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def about(assigns) do
    ~H"""
    <div class="px-6 md:px-8 mx-auto max-w-[1500px] py-16 md:py-24" id="about-us">
      <div class="flex flex-col md:flex-row gap-8 md:gap-16 items-center">
        <div class="w-full md:w-1/2">
          <div class="relative w-full h-auto rounded-lg overflow-hidden shadow-lg">
            <img
              src="/images/Services.svg"
              alt="Veterinarian caring for livestock"
              class="w-full h-full object-cover"
            />
            <div class="absolute top-0 left-0 w-full h-full bg-gradient-to-r from-[#11643C]/20 to-transparent">
            </div>
          </div>
        </div>

        <div class="w-full md:w-1/2 space-y-6">
          <div class="flex items-center gap-3">
            <div class="w-10 h-[3px] bg-[#11643C]"></div>
            <span class="text-[#11643C] font-medium text-lg">Who We Are</span>
          </div>

          <h2 class="text-3xl md:text-4xl font-bold ville text-[#11643C]">
            About Us
          </h2>

          <p class="text-[#4B4B4B] text-base md:text-lg leading-relaxed">
            At Agroconnect, we understand the critical role that healthy livestock plays in successful farming. Our platform connects farmers with qualified veterinarians, ensuring timely access to professional care whenever and wherever it's needed.
          </p>

          <p class="text-[#4B4B4B] text-base md:text-lg leading-relaxed">
            Founded by experts in agriculture and veterinary science, Agroconnect addresses the challenge many rural farmers face in accessing quality veterinary services. Through our network of registered clinics and mobile veterinarians, we provide comprehensive solutions for livestock health management.
          </p>

          <div class="grid grid-cols-2 gap-4 pt-4">
            <div class="flex items-center gap-3">
              <div class="bg-[#11643C]/10 p-2 rounded-full">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-6 w-6 text-[#11643C]"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
                  />
                </svg>
              </div>
              <span class="text-[#4B4B4B] font-medium">24/7 Emergency Care</span>
            </div>
            <div class="flex items-center gap-3">
              <div class="bg-[#11643C]/10 p-2 rounded-full">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-6 w-6 text-[#11643C]"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
                  />
                </svg>
              </div>
              <span class="text-[#4B4B4B] font-medium">Qualified Vets</span>
            </div>
            <div class="flex items-center gap-3">
              <div class="bg-[#11643C]/10 p-2 rounded-full">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-6 w-6 text-[#11643C]"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
                  />
                </svg>
              </div>
              <span class="text-[#4B4B4B] font-medium">Mobile Services</span>
            </div>
            <div class="flex items-center gap-3">
              <div class="bg-[#11643C]/10 p-2 rounded-full">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-6 w-6 text-[#11643C]"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
                  />
                </svg>
              </div>
              <span class="text-[#4B4B4B] font-medium">Preventive Care</span>
            </div>
          </div>

          <div class="flex flex-row gap-4 pt-6">
            <button
              class="px-6 py-3 bg-[#11643C] text-white font-medium rounded-md hover:bg-[#0d5231] transition-colors shadow-md"
              phx-click="register_farmer"
            >
              Register Clinic
            </button>
            <button class="px-6 py-3 border-2 border-[#11643C] text-[#11643C] font-medium rounded-md hover:bg-[#11643C]/10 transition-colors">
              Learn More
            </button>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def farmer_services(assigns) do
    ~H"""
    <section class="py-16 md:py-24 bg-gradient-to-br from-white to-gray-50">
      <div class="max-w-[1500px] mx-auto px-6 md:px-8">
        <div class="text-center mb-12">
          <div class="flex items-center justify-center mb-3">
            <div class="h-1 w-16 bg-[#11643C] rounded-full mr-4"></div>
            <span class="text-[#666666] lexend font-medium">Our Services</span>
            <div class="h-1 w-16 bg-[#11643C] rounded-full ml-4"></div>
          </div>
          <h2 class="text-3xl md:text-4xl lg:text-5xl lexend font-bold text-[#2c2524] mb-4">
            Comprehensive Livestock Care
          </h2>
          <p class="text-[#666666] max-w-2xl mx-auto lexend text-lg">
            Professional veterinary services designed to keep your livestock healthy and your farm productive
          </p>
        </div>

        <div class="grid gap-6 md:gap-8 grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
          <!-- Vet Consultation -->
          <div class="bg-white border border-gray-100 hover:border-[#11643C]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#11643C]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#11643C]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#11643C]"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"
                />
              </svg>
            </div>
            <h3 class="lexend text-[#2c2524] font-bold text-xl md:text-2xl">
              Livestock Consultation
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Connect with qualified veterinarians specializing in cattle, goats, sheep, and poultry for expert advice on health issues and management practices.
            </p>
          </div>
          
    <!-- AI Chatbot -->
          <div class="bg-white border border-gray-100 hover:border-[#11643C]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#11643C]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#11643C]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#11643C]"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z"
                />
              </svg>
            </div>
            <h3 class="lexend text-[#2c2524] font-bold text-xl md:text-2xl">
              Livestock Health Chatbot
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Describe your livestock's symptoms to our AI-powered chatbot for instant guidance on potential conditions and recommendations for appropriate veterinary care.
            </p>
          </div>
          
    <!-- Disease Diagnosis -->
          <div class="bg-white border border-gray-100 hover:border-[#11643C]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#11643C]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#11643C]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#11643C]"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2"
                />
              </svg>
            </div>
            <h3 class="lexend text-[#2c2524] font-bold text-xl md:text-2xl">
              Disease Identification
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Submit photos and symptoms through our app to receive preliminary diagnosis of common livestock diseases with recommendations for immediate action.
            </p>
          </div>
          
    <!-- Emergency Services -->
          <div class="bg-white border border-gray-100 hover:border-[#11643C]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#11643C]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#11643C]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#11643C]"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"
                />
              </svg>
            </div>
            <h3 class="lexend text-[#2c2524] font-bold text-xl md:text-2xl">
              24/7 Emergency Response
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Round-the-clock emergency veterinary services for critical situations with rapid dispatch of qualified professionals to your farm location.
            </p>
          </div>
          
    <!-- Preventive Care -->
          <div class="bg-white border border-gray-100 hover:border-[#11643C]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#11643C]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#11643C]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#11643C]"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"
                />
              </svg>
            </div>
            <h3 class="lexend text-[#2c2524] font-bold text-xl md:text-2xl">
              Preventive Health Programs
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Customized vaccination schedules, parasite control plans, and herd health management strategies to prevent disease outbreaks and optimize productivity.
            </p>
          </div>
          
    <!-- Farm Supplies -->
          <div class="bg-white border border-gray-100 hover:border-[#11643C]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#11643C]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#11643C]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#11643C]"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z"
                />
              </svg>
            </div>
            <h3 class="lexend text-[#2c2524] font-bold text-xl md:text-2xl">
              Livestock Supplies
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Access quality medications, supplements, feeds, and equipment for your livestock with expert recommendations and convenient delivery to your farm.
            </p>
          </div>
        </div>

        <div class="flex justify-center mt-12">
          <button class="bg-[#11643C] px-8 py-4 lexend text-white font-semibold rounded-lg text-lg shadow-lg hover:shadow-xl transition-all duration-300 hover:bg-[#0d5231] focus:bg-[#0d5231] focus:outline-none focus:ring-4 focus:ring-[#11643C]/50">
            Register Clinic
          </button>
        </div>
      </div>
    </section>
    """
  end

  def contact_hero(assigns) do
    ~H"""
    <section>
      <div class="bg-[#11643C] relative overflow-hidden">
        <div class="absolute top-0 left-0 w-64 h-64 bg-[#6A994E]/20 rounded-full transform -translate-x-1/2 -translate-y-1/2 blur-3xl">
        </div>
        <div class="absolute bottom-0 right-0 w-72 h-72 bg-[#386641]/20 rounded-full transform translate-x-1/4 translate-y-1/4 blur-3xl">
        </div>

        <div class="max-w-[1500px] mx-auto px-6 md:px-8 py-10 md:py-16 flex flex-col md:flex-row items-center justify-between gap-10 relative z-10">
          <div class="text-white md:max-w-3xl">
            <h2 class="text-3xl md:text-5xl text-[#fbffff] lexend font-bold mb-6 leading-tight">
              Connect with Expert Veterinarians
            </h2>
            <p class="text-[#E9F5DB] mb-8 text-lg">
              Ensure the health and productivity of your livestock with professional veterinary care. Our team is ready to visit your farm and provide the services you need.
            </p>
            <div class="flex flex-wrap gap-4">
              <button class="bg-white lexend px-8 py-4 text-[#11643C] font-semibold rounded-lg text-lg shadow-lg hover:shadow-xl transition-all duration-300 hover:bg-[#E9F5DB] focus:outline-none focus:ring-4 focus:ring-white/50">
                Register Clinic
              </button>
              <button class="bg-transparent border-2 border-white lexend px-8 py-4 text-white font-semibold rounded-lg text-lg shadow-lg hover:shadow-xl transition-all duration-300 hover:bg-white/10 focus:outline-none focus:ring-4 focus:ring-white/30">
                Contact Us
              </button>
            </div>
          </div>

          <div class="relative">
            <div class="absolute inset-0 bg-gradient-to-br from-[#6A994E]/20 to-[#386641]/20 rounded-3xl blur-xl transform translate-x-4 translate-y-4">
            </div>
            <div class="relative bg-white/10 p-3 rounded-3xl backdrop-blur-sm shadow-xl overflow-hidden">
              <img
                src="/images/vet-livestock.jpg"
                alt="Veterinarian examining livestock"
                class="w-full max-w-xs h-auto rounded-2xl object-cover"
              />
              <div class="absolute bottom-6 left-6 bg-white/90 backdrop-blur-sm p-3 rounded-lg shadow-lg">
                <div class="flex items-center gap-2">
                  <div class="bg-[#11643C] rounded-full p-1.5">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-4 w-4 text-white"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="currentColor"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M5 13l4 4L19 7"
                      />
                    </svg>
                  </div>
                  <span class="text-sm font-medium text-[#11643C]">Professional Service</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    """
  end

  def contacts(assigns) do
    ~H"""
    <section class="py-16 md:py-24 bg-white">
      <div class="max-w-[1500px] mx-auto px-6 md:px-8">
        <div class="flex flex-col md:flex-row items-center gap-12">
          <div class="w-full md:w-1/2 relative">
            <!-- Decorative elements -->
            <div class="absolute -z-10 inset-0 bg-gradient-to-br from-[#11643C]/10 to-[#6A994E]/10 rounded-3xl blur-lg transform translate-x-4 translate-y-4">
            </div>

            <div class="">
              <img
                src="/images/farmer-vet.jpg"
                alt="Veterinarian examining livestock"
                class="w-full h-[650px] object-cover transition-transform duration-700 hover:scale-105 rounded-lg"
              />
            </div>

            <div class="absolute -bottom-5 right-10 bg-white p-4 rounded-2xl shadow-lg hidden md:flex items-center gap-3">
              <div class="bg-[#11643C]/20 p-2 rounded-full">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-6 w-6 text-[#11643C]"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
                  />
                </svg>
              </div>
              <div>
                <p class="text-xs text-[#666666]">Emergency Response</p>
                <p class="text-sm font-bold text-[#2d2624]">Within 4 Hours</p>
              </div>
            </div>
          </div>

          <div class="w-full md:w-1/2 space-y-6">
            <div>
              <div class="flex items-center mb-3">
                <div class="h-1 w-16 bg-[#11643C] rounded-full mr-4"></div>
                <span class="text-[#666666] lexend font-medium">Contact Us</span>
              </div>
              <h2 class="text-3xl md:text-4xl lg:text-5xl poppins font-bold text-[#2c2524] leading-tight mb-4">
                Supporting Your Farming Success
              </h2>
              <p class="text-[#666666] lexend text-lg mb-8">
                Need veterinary assistance for your livestock? Whether it's disease prevention, emergency care, or general advice, our network of qualified veterinarians is ready to help.
              </p>
            </div>

            <form class="space-y-5">
              <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                <div>
                  <label for="name" class="block poppins text-gray-700 text-sm font-semibold mb-2">
                    Full Name <span class="text-[#11643C]">*</span>
                  </label>
                  <input
                    type="text"
                    id="name"
                    placeholder="Enter your name"
                    class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#11643C]/20 focus:border-[#11643C] transition-colors"
                    required
                  />
                </div>
                <div>
                  <label for="email" class="block poppins text-gray-700 text-sm font-semibold mb-2">
                    Email Address <span class="text-[#11643C]">*</span>
                  </label>
                  <input
                    type="email"
                    id="email"
                    placeholder="Enter your email"
                    class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#11643C]/20 focus:border-[#11643C] transition-colors"
                    required
                  />
                </div>
              </div>

              <div>
                <label for="phone" class="block poppins text-gray-700 text-sm font-semibold mb-2">
                  Phone Number <span class="text-[#11643C]">*</span>
                </label>
                <input
                  type="tel"
                  id="phone"
                  placeholder="Enter your phone number"
                  class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#11643C]/20 focus:border-[#11643C] transition-colors"
                  required
                />
              </div>

              <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                <div>
                  <label
                    for="farm_location"
                    class="block poppins text-gray-700 text-sm font-semibold mb-2"
                  >
                    Farm Location
                  </label>
                  <input
                    type="text"
                    id="farm_location"
                    placeholder="County, Town/Village"
                    class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#11643C]/20 focus:border-[#11643C] transition-colors"
                  />
                </div>
                <div>
                  <label
                    for="livestock_type"
                    class="block poppins text-gray-700 text-sm font-semibold mb-2"
                  >
                    Livestock Type
                  </label>
                  <select
                    id="livestock_type"
                    class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#11643C]/20 focus:border-[#11643C] transition-colors"
                  >
                    <option value="" disabled selected>Select livestock type</option>
                    <option value="cattle">Cattle</option>
                    <option value="goats">Goats</option>
                    <option value="sheep">Sheep</option>
                    <option value="poultry">Poultry</option>
                    <option value="pigs">Pigs</option>
                    <option value="other">Other</option>
                  </select>
                </div>
              </div>

              <div>
                <label
                  for="service_type"
                  class="block poppins text-gray-700 text-sm font-semibold mb-2"
                >
                  Service Needed
                </label>
                <select
                  id="service_type"
                  class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#11643C]/20 focus:border-[#11643C] transition-colors"
                >
                  <option value="" disabled selected>Select service type</option>
                  <option value="consultation">Livestock Consultation</option>
                  <option value="emergency">Emergency Care</option>
                  <option value="vaccination">Vaccination/Preventive Care</option>
                  <option value="treatment">Disease Treatment</option>
                  <option value="health_program">Herd Health Program</option>
                  <option value="nutrition">Nutrition Advice</option>
                </select>
              </div>

              <div>
                <label for="message" class="block poppins text-gray-700 text-sm font-semibold mb-2">
                  Describe Your Issue <span class="text-[#11643C]">*</span>
                </label>
                <textarea
                  id="message"
                  rows="4"
                  placeholder="Please describe the situation or symptoms your livestock is experiencing"
                  class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#11643C]/20 focus:border-[#11643C] transition-colors"
                  required
                ></textarea>
              </div>

              <div class="flex items-center">
                <input type="checkbox" id="consent" class="mr-2 h-4 w-4 text-[#11643C]" required />
                <label for="consent" class="text-gray-600 text-sm">
                  I agree to the <a href="#" class="text-[#11643C] hover:underline">Privacy Policy</a>
                  and consent to being contacted by a veterinarian.
                </label>
              </div>

              <div>
                <button class="group bg-[#11643C] px-8 py-4 text-white lexend font-semibold rounded-lg text-lg shadow-lg hover:shadow-xl transition-all duration-300 hover:bg-[#0d5231] focus:outline-none focus:ring-4 focus:ring-[#11643C]/50 w-full md:w-auto flex items-center justify-center">
                  Contact Us
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 ml-2 transition-transform duration-300 group-hover:translate-x-1"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M14 5l7 7m0 0l-7 7m7-7H3"
                    />
                  </svg>
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    """
  end

  defp faq_items do
    [
      {"How quickly can I get a vet to my farm?",
       "Our network of veterinarians aims to respond to urgent cases within 2-4 hours. For emergency situations, we prioritize dispatch to ensure your livestock receive care as quickly as possible. Rural areas may have slightly longer response times."},
      {"What livestock species do your veterinarians treat?",
       "Our veterinary network specializes in a wide range of livestock including cattle, goats, sheep, pigs, poultry, and camels. Each veterinarian has specific expertise, and we match you with the most appropriate specialist for your needs."},
      {"How does the Livestock Health Chatbot work?",
       "Our AI-powered chatbot allows you to describe symptoms and upload photos of your livestock. It provides preliminary guidance based on the information you provide. While not a replacement for professional care, it can help identify potential issues and suggest next steps while you wait for a veterinarian."},
      {"What are the costs for veterinary services?",
       "Service costs vary depending on the type of livestock, required treatment, distance to your farm, and urgency. Basic consultations start from KSh 1,500. You'll receive a clear quote before confirming any service, and we offer various payment options including mobile money and installment plans for larger treatments."},
      {"Can veterinarians provide health certificates and documentation?",
       "Yes, our certified veterinarians can provide official health certificates, vaccination records, and other documentation required for livestock sales, transport, or breeding. All documentation complies with regional and national regulatory standards."}
    ]
  end

  def faqs(assigns) do
    ~H"""
    <div class="w-full max-w-[1500px] mx-auto px-4 py-16 md:py-20">
      <h2 class="text-2xl md:text-4xl font-bold text-center tracking-wide text-[#11643C] ville mb-5">
        FAQ
      </h2>

      <div class="flex flex-col md:flex-row items-center space-y-5 md:space-x-4 ">
        <div class="w-full md:w-2/5 text-center md:text-left">
          <h2 class="text-3xl md:text-4xl font-bold text-[#11643C] mb-6 w-full md:w-[80%]">
            Frequently Asked Questions
          </h2>
          <p class="text-gray-600 mb-8 max-w-md mx-auto md:mx-0">
            Find quick answers to common questions about our veterinary services,
            livestock care, and how AgroConnect can help your farm.
          </p>
          <button
            phx-click="contact_support"
            class="bg-[#11643C] text-white px-6 py-3 mb-2 rounded-md
                   hover:bg-[#0d5231] transition duration-300
                   transform hover:scale-105 shadow-md"
          >
            Contact Our Team
          </button>
        </div>

        <div class="w-full md:w-3/5 space-y-4">
          <%= for {question, answer} <- faq_items() do %>
            <div
              class={[
                "bg-white rounded-lg shadow-md py-2 border
                transition-all duration-300 ease-in-out hover:border-[#11643C]/50 hover:shadow-lg",
                if(@open_faq == question, do: "border-[#11643C] bg-[#11643C]/5")
              ]}
              phx-click="toggle_faq"
              phx-value-question={question}
            >
              <div class="flex justify-between items-center p-6 cursor-pointer">
                <h3 class={[
                  "text-lg font-semibold",
                  if(@open_faq == question, do: "text-[#11643C]", else: "text-black")
                ]}>
                  {question}
                </h3>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class={[
                    "h-5 w-5 transition-transform duration-300",
                    if(@open_faq == question, do: "text-[#11643C] rotate-180", else: "text-gray-500")
                  ]}
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M19 9l-7 7-7-7"
                  />
                </svg>
              </div>

              <%= if @open_faq == question do %>
                <div class="px-6 pb-6 text-gray-600 animate-fade-in">
                  {answer}
                </div>
              <% end %>
            </div>
          <% end %>
        </div>
      </div>
    </div>
    """
  end

  def footer(assigns) do
    ~H"""
    <footer class="bg-white border-t border-gray-100 py-16 md:py-24">
      <div class="max-w-[1500px] mx-auto px-6 md:px-8">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 md:gap-12">
          <!-- Company Info -->
          <div class="space-y-6">
            <div>
              <h2 class="text-2xl font-bold text-gray-800 ml-2 lexend">
                AgroConnect
              </h2>
            </div>

            <p class="text-gray-600 lexend">
              Connecting farmers with quality veterinary services. We ensure your livestock receive the best healthcare for optimal farm productivity and animal welfare.
            </p>

            <div class="flex space-x-3">
              <a
                href="#"
                class="flex items-center justify-center h-10 w-10 bg-gray-100 rounded-full hover:bg-[#11643C] focus:bg-[#11643C] hover:text-white focus:text-white text-gray-600 transition-colors duration-300"
                aria-label="Facebook"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z" />
                </svg>
              </a>
              <a
                href="#"
                class="flex items-center justify-center h-10 w-10 bg-gray-100 rounded-full hover:bg-[#11643C] focus:bg-[#11643C] hover:text-white focus:text-white text-gray-600 transition-colors duration-300"
                aria-label="Twitter"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z" />
                </svg>
              </a>
              <a
                href="#"
                class="flex items-center justify-center h-10 w-10 bg-gray-100 rounded-full hover:bg-[#11643C] focus:bg-[#11643C] hover:text-white focus:text-white text-gray-600 transition-colors duration-300"
                aria-label="LinkedIn"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path d="M4.98 3.5c0 1.381-1.11 2.5-2.48 2.5s-2.48-1.119-2.48-2.5c0-1.38 1.11-2.5 2.48-2.5s2.48 1.12 2.48 2.5zm.02 4.5h-5v16h5v-16zm7.982 0h-4.968v16h4.969v-8.399c0-4.67 6.029-5.052 6.029 0v8.399h4.988v-10.131c0-7.88-8.922-7.593-11.018-3.714v-2.155z" />
                </svg>
              </a>
              <a
                href="#"
                class="flex items-center justify-center h-10 w-10 bg-gray-100 rounded-full hover:bg-[#11643C] focus:bg-[#11643C] hover:text-white focus:text-white text-gray-600 transition-colors duration-300"
                aria-label="Instagram"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z" />
                </svg>
              </a>
            </div>
          </div>
          
    <!-- Quick Links -->
          <div class="lexend">
            <h3 class="text-lg font-bold text-gray-800 mb-5">Quick Links</h3>
            <ul class="space-y-3 text-gray-600">
              <li>
                <a
                  href="index.html"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  Home
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  Find Vets
                </a>
              </li>
              <li>
                <a
                  href="services.html"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  Services
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  About
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  Resources
                </a>
              </li>
              <li>
                <a
                  href="contact.html"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  Contact
                </a>
              </li>
            </ul>
          </div>

          <div class="lexend">
            <h3 class="text-lg font-bold text-gray-800 mb-5">Our Services</h3>
            <ul class="space-y-3 text-gray-600">
              <li>
                <a
                  href="#"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  Livestock Consultations
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  Disease Identification
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  Preventive Health Programs
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  Livestock Health Chatbot
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#11643C] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                  Emergency Care
                </a>
              </li>
            </ul>
          </div>

          <div class="lexend">
            <h3 class="text-lg font-bold text-gray-800 mb-5">Contact Us</h3>
            <ul class="space-y-4 text-gray-600">
              <li class="flex items-start">
                <div class="bg-[#11643C]/10 p-2 rounded-full mr-3 mt-1">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"
                    />
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"
                    />
                  </svg>
                </div>
                <div>
                  <p>123 Agroconnect Plaza</p>
                  <p>Nairobi, Kenya</p>
                </div>
              </li>
              <li class="flex items-center">
                <div class="bg-[#11643C]/10 p-2 rounded-full mr-3">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"
                    />
                  </svg>
                </div>
                <p>+254 711 470560</p>
              </li>
              <li class="flex items-center">
                <div class="bg-[#11643C]/10 p-2 rounded-full mr-3">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-[#11643C]"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
                    />
                  </svg>
                </div>
                <p>contact@agroconnect.com</p>
              </li>
            </ul>
          </div>
        </div>
        
    <!-- Divider & Copyright -->
        <div class="mt-10 pt-6 border-t border-gray-100">
          <div class="flex flex-col md:flex-row justify-between items-center">
            <p class="text-gray-500 text-sm lexend mb-4 md:mb-0">
              © 2025 AgroConnect. All rights reserved.
            </p>
            <div class="flex space-x-6 text-sm text-gray-500 lexend">
              <a href="#" class="hover:text-[#11643C]">Privacy Policy</a>
              <a href="#" class="hover:text-[#11643C]">Terms of Service</a>
              <a href="#" class="hover:text-[#11643C]">Cookie Policy</a>
            </div>
          </div>
        </div>
      </div>
    </footer>
    """
  end
end
