defmodule AgroconnectWeb.PetLandingComponents do
  use Phoenix.Component

  def nav_bar(assigns) do
    ~H"""
    <div class="bg-white shadow-sm px-6 py-3 sticky top-0 z-50">
      <div class="max-w-[1500px] mx-auto flex items-center justify-between">
        <div class="flex-shrink-0">
          <img class="h-16 w-auto" src="/images/logo2.png" alt="Company Logo" />
        </div>

        <nav class="hidden md:flex space-x-10 flex-grow justify-center">
          <a
            class="text-[#666666] text-lg lexend font-medium hover:text-[#f97461] transition-colors duration-200"
            href="index.html"
          >
            Home
          </a>
          <a
            class="text-[#666666] text-lg lexend font-medium hover:text-[#f97461] transition-colors duration-200"
            href="services.html"
          >
            Services
          </a>
          <a
            class="text-[#666666] text-lg lexend font-medium hover:text-[#f97461] transition-colors duration-200"
            href="#"
          >
            About Us
          </a>
          <a
            class="text-[#666666] text-lg lexend font-medium hover:text-[#f97461] transition-colors duration-200"
            href="#"
          >
            Shop
          </a>

          <a
            class="text-[#666666] text-lg lexend font-medium hover:text-[#f97461] transition-colors duration-200"
            href="#"
          >
            Contact Us
          </a>
        </nav>

        <div class="flex space-x-4 flex-shrink-0">
          <a href="contact.html">
            <button class="bg-[#f77662] py-2.5 px-4 text-white font-semibold rounded-lg text-base hover:text-black  hover:bg-[#ffc90f] transition-colors duration-200">
              Register Clinic
            </button>
          </a>
          <a href="signup.html">
            <button class="bg-black py-2.5 px-4  text-white font-semibold rounded-lg text-base hover:bg-black/60 transition-colors duration-200">
              Sign Up
            </button>
          </a>
        </div>
      </div>
    </div>
    """
  end

  def pet_hero(assigns) do
    ~H"""
    <section
      id="home"
      class="py-12 md:py-16 overflow-hidden bg-gradient-to-br from-white to-gray-50 min-h-screen"
    >
      <div class="max-w-[1500px] mx-auto px-6 flex flex-col md:flex-row items-center gap-8 md:gap-12 ">
        <div class="md:w-1/2 space-y-6 md:space-y-8">
          <div class="flex items-center">
            <div class="h-1 w-20 bg-[#f97461] rounded-full mr-4"></div>
            <span class="text-[#666666] lexend font-medium">Trusted Pet Care</span>
          </div>

          <h1 class="font-bold text-3xl md:text-4xl lg:text-5xl tracking-tight lexend text-[#2d2624] leading-tight">
            Find a veterinary you and your little friend can trust
          </h1>

          <p class="text-base md:text-lg text-[#666666] lexend font-light md:pr-12 leading-relaxed">
            AgroConnect helps you find the best veterinary services for your pet near you. Connect with trusted vets to ensure quality care whenever you need it
          </p>

          <div class="flex flex-col sm:flex-row gap-4">
            <button class="bg-[#f97461] py-3 md:py-4 px-6 md:px-8 text-white font-semibold rounded-lg lexend text-base md:text-lg shadow-lg hover:shadow-xl transition-all duration-300 hover:text-black focus:text-black hover:bg-[#ffc90f] focus:bg-[#ffc90f]">
              Register Clinic
            </button>

            <button class="group flex items-center justify-center py-3 md:py-4 px-5 md:px-6 text-[#2d2624] font-medium lexend text-base md:text-lg hover:text-[#f97461] transition-colors duration-300">
              Learn More
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

          <div class="flex items-center space-x-6 pt-2 md:pt-4">
            <div class="text-sm">
              <p class="text-[#2d2624] font-medium">
                Trusted by <span class="text-[#f97461] font-bold">2,000+</span> pet owners
              </p>
              <div class="flex text-[#ffc90f]">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  viewBox="0 0 20 20"
                  fill="currentColor"
                >
                  <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118l-2.8-2.034c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                </svg>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  viewBox="0 0 20 20"
                  fill="currentColor"
                >
                  <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118l-2.8-2.034c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                </svg>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  viewBox="0 0 20 20"
                  fill="currentColor"
                >
                  <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118l-2.8-2.034c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                </svg>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  viewBox="0 0 20 20"
                  fill="currentColor"
                >
                  <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118l-2.8-2.034c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                </svg>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-4 w-4"
                  viewBox="0 0 20 20"
                  fill="currentColor"
                >
                  <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118l-2.8-2.034c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                </svg>
              </div>
            </div>
          </div>
        </div>

        <div class="md:w-1/2 relative">
          <div class="absolute -z-10 w-72 h-72 bg-[#f97461]/5 rounded-full blur-3xl -top-10 -right-10">
          </div>
          <div class="absolute -z-10 w-60 h-60 bg-[#ffc90f]/5 rounded-full blur-3xl -bottom-10 -left-10">
          </div>

          <div class="relative">
            <div class="absolute -z-10 inset-0 bg-gradient-to-br from-[#f97461]/20 to-[#ffc90f]/20 rounded-[30px] blur-xl transform translate-x-4 translate-y-4">
            </div>

            <div class="w-full h-full overflow-hidden rounded-[24px]">
              <img
                class="w-full h-auto object-contain  max-h-[700px] rounded-[24px]"
                src="/images/vetHome.png"
                alt="Veterinarian with pet"
              />
            </div>

            <div class="absolute -bottom-4 -left-4 bg-white p-3 md:p-4 rounded-2xl shadow-xl flex items-center gap-2 md:gap-3">
              <div class="bg-[#f97461]/20 p-2 rounded-full">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 md:h-6 md:w-6 text-[#f97461]"
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
                <p class="text-xs text-[#666666]">Verified Experts</p>
                <p class="text-sm font-bold text-[#2d2624]">100% Licensed Vets</p>
              </div>
            </div>

            <div class="absolute -top-4 -right-4 bg-white p-3 md:p-4 rounded-2xl shadow-lg flex items-center gap-2 md:gap-3">
              <div class="bg-[#f97461]/20 p-2 rounded-full">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 md:h-6 md:w-6 text-[#f97461]"
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
              <div>
                <p class="text-xs text-[#666666]">Quick Response</p>
                <p class="text-sm font-bold text-[#2d2624]">24/7 Support</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    """
  end

  def landing_page_services(assigns) do
    ~H"""
    <section class="py-16 md:py-24 bg-gradient-to-br from-white to-gray-50">
      <div class="max-w-[1500px] mx-auto px-6 md:px-8">
        <div class="text-center mb-12">
          <div class="flex items-center justify-center mb-3">
            <div class="h-1 w-16 bg-[#f97461] rounded-full mr-4"></div>
            <span class="text-[#666666] lexend font-medium">Our Offerings</span>
            <div class="h-1 w-16 bg-[#f97461] rounded-full ml-4"></div>
          </div>
          <h2 class="text-3xl md:text-4xl lg:text-5xl lexend font-bold text-[#2c2524] mb-4">
            Discover Our Services
          </h2>
          <p class="text-[#666666] max-w-2xl mx-auto lexend text-lg">
            Comprehensive pet care solutions designed to keep your furry friends healthy and happy
          </p>
        </div>

        <div class="grid gap-6 md:gap-8 grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
          <!-- Real-time Chat -->
          <div class="bg-white border border-gray-100 hover:border-[#f97461]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#f97461]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#f97461]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#f97461]"
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
              Real-time Vet Chat
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Connect instantly with available veterinarians in your area for immediate advice and consultation through our secure messaging platform.
            </p>
          </div>
          
    <!-- AI Diagnosis -->
          <div class="bg-white border border-gray-100 hover:border-[#f97461]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#f97461]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#f97461]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#f97461]"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"
                />
              </svg>
            </div>
            <h3 class="lexend text-[#2c2524] font-bold text-xl md:text-2xl">
              AI Image Diagnosis
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Upload photos of your sick pet and receive preliminary AI-powered diagnosis to help identify potential issues before visiting a veterinarian.
            </p>
          </div>
          
    <!-- AI Chatbot -->
          <div class="bg-white border border-gray-100 hover:border-[#f97461]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#f97461]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#f97461]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#f97461]"
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
              Symptom Checker
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Use our AI chatbot to describe your pet's symptoms and receive guidance on possible conditions and locate the nearest agrovets in your area.
            </p>
          </div>
          
    <!-- 24/7 Support -->
          <div class="bg-white border border-gray-100 hover:border-[#f97461]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#f97461]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#f97461]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#f97461]"
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
              24/7 Customer Support
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Round-the-clock assistance for all your pet-related queries and emergencies with our dedicated customer support team available day and night.
            </p>
          </div>
          
    <!-- Appointments -->
          <div class="bg-white border border-gray-100 hover:border-[#f97461]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#f97461]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#f97461]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#f97461]"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
                />
              </svg>
            </div>
            <h3 class="lexend text-[#2c2524] font-bold text-xl md:text-2xl">
              Book Appointments
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Easily schedule appointments with top veterinarians in your area through our streamlined booking system with automatic reminders and follow-ups.
            </p>
          </div>
          
    <!-- Pet Shop -->
          <div class="bg-white border border-gray-100 hover:border-[#f97461]/30 rounded-3xl p-6 md:p-8 flex flex-col gap-5 shadow-sm hover:shadow-md transition-all duration-300 group">
            <div class="bg-[#f97461]/10 p-4 rounded-2xl w-16 h-16 flex items-center justify-center group-hover:bg-[#f97461]/20 transition-colors duration-300">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-8 w-8 text-[#f97461]"
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
              Pet Shop
            </h3>
            <p class="text-[#666666] lexend text-base md:text-lg">
              Browse our extensive collection of pet supplies, from premium foods to toys, medications, and accessories, all delivered right to your doorstep.
            </p>
          </div>
        </div>

        <div class="flex flex-col sm:flex-row justify-center gap-4 sm:gap-6 mt-12">
          <button class="bg-[#f97461] px-8 py-4 lexend text-white font-semibold rounded-lg text-lg shadow-lg hover:shadow-xl transition-all duration-300 hover:bg-[#ffc90f] hover:text-[#2c2524] focus:bg-[#ffc90f] focus:text-[#2c2524] focus:outline-none focus:ring-4 focus:ring-[#ffc90f]/50">
            Register Clinic
          </button>
        </div>
      </div>
    </section>
    """
  end

  def pet_about(assigns) do
    ~H"""
    <section class="py-16 md:py-24 overflow-hidden bg-white">
      <div class="max-w-[1500px] mx-auto px-6 md:px-8 flex flex-col md:flex-row items-center gap-10 md:gap-16">
        <div class="w-full md:w-1/2 relative">
          <div class="absolute -z-10 inset-0 bg-gradient-to-br from-[#f97461]/10 to-[#ffc90f]/10 rounded-3xl blur-lg transform translate-x-4 translate-y-4">
          </div>

          <div class="aspect-w-4 aspect-h-5 rounded-2xl overflow-hidden">
            <img
              src="https://images.pexels.com/photos/27505771/pexels-photo-27505771/free-photo-of-hands-holding-a-kitten.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
              alt="Hands holding a kitten"
              class="w-full h-[650px] object-cover transition-transform duration-700 hover:scale-105"
            />
          </div>

          <div class="absolute -bottom-5 -right-5 bg-white p-4 rounded-2xl shadow-lg hidden md:flex items-center gap-3">
            <div class="bg-[#ffc90f]/20 p-2 rounded-full">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-6 w-6 text-[#ffc90f]"
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
            <div>
              <p class="text-xs text-[#666666]">Trusted Service</p>
              <p class="text-sm font-bold text-[#2d2624]">95% Customer Satisfaction</p>
            </div>
          </div>
        </div>

        <div class="w-full md:w-1/2 flex flex-col space-y-8">
          <div>
            <div class="flex items-center mb-3">
              <div class="h-1 w-16 bg-[#f97461] rounded-full mr-4"></div>
              <span class="text-[#666666] lexend font-medium">Who We Are</span>
            </div>
            <h2 class="text-3xl md:text-4xl lg:text-5xl poppins font-bold text-[#2c2524] leading-tight">
              About Us
            </h2>
          </div>

          <p class="lexend text-[#666666] text-base  leading-relaxed">
            AgroConnect is a platform designed to help you find the best veterinary clinics and doctors in your area. Our advanced image model allows you to upload photos of sick animals for quick assessment. With our AI-powered chatbot, you can get symptom-based diagnoses and expert guidance. Easily connect with the nearest vets to ensure your pet receives the best possible care, anytime and anywhere. We also offer 24/7 emergency consultation services and maintain a comprehensive database of treatment options for various animal conditions
          </p>
          <div class="flex flex-col space-y-5">
            <div class="flex items-start space-x-4">
              <div class="bg-[#f97461]/10 p-2 rounded-full shrink-0 mt-1">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 text-[#f97461]"
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
              <div>
                <p class="text-lg lexend font-semibold text-[#2c2524]">
                  Over 10 years of experience
                </p>
                <p class="text-sm text-[#666666] mt-1">
                  Providing quality veterinary care since 2013
                </p>
              </div>
            </div>

            <div class="flex items-start space-x-4">
              <div class="bg-[#f97461]/10 p-2 rounded-full shrink-0 mt-1">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 text-[#f97461]"
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
              <div>
                <p class="text-lg lexend font-semibold text-[#2c2524]">
                  20 talented vets ready to help you
                </p>
                <p class="text-sm text-[#666666] mt-1">
                  Licensed professionals with specialty training
                </p>
              </div>
            </div>

            <div class="flex items-start space-x-4">
              <div class="bg-[#f97461]/10 p-2 rounded-full shrink-0 mt-1">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 text-[#f97461]"
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
              <div>
                <p class="text-lg lexend font-semibold text-[#2c2524]">
                  High-quality products only
                </p>
                <p class="text-sm text-[#666666] mt-1">Partnering with premium pet care suppliers</p>
              </div>
            </div>
          </div>

          <div class="pt-4">
            <button class=" bg-[#f97461] px-8 py-4 lexend text-white font-semibold rounded-lg text-lg shadow-lg hover:shadow-xl transition-all duration-300 hover:bg-[#ffc90f] focus:ring-4 focus:ring-[#f97461]/30">
              Contact Us
            </button>
          </div>
        </div>
      </div>
    </section>
    """
  end

  def contact_hero(assigns) do
    ~H"""
    <section>
      <div class="bg-[#41766c] relative overflow-hidden">
        <div class="absolute top-0 left-0 w-64 h-64 bg-[#f97461]/10 rounded-full transform -translate-x-1/2 -translate-y-1/2 blur-3xl">
        </div>
        <div class="absolute bottom-0 right-0 w-72 h-72 bg-[#ffc90f]/10 rounded-full transform translate-x-1/4 translate-y-1/4 blur-3xl">
        </div>

        <div class="max-w-[1500px] mx-auto px-6 md:px-8 py-10 md:py-16 flex flex-col md:flex-row items-center justify-between gap-10 relative z-10">
          <div class="text-white md:max-w-3xl">
            <h2 class="text-3xl md:text-5xl text-[#fbffff] lexend font-bold mb-6 leading-tight">
              Schedule your appointment today
            </h2>
            <button class="bg-[#f97461] lexend px-8 py-4 text-white font-semibold rounded-lg text-lg md:text-xl shadow-lg hover:shadow-xl transition-all duration-300 hover:bg-[#ffc90f] hover:text-[#2c2524] focus:bg-[#ffc90f] focus:text-[#2c2524] focus:outline-none focus:ring-4 focus:ring-[#ffc90f]/50">
              Contact Us
            </button>
          </div>

          <div class="relative">
            <div class="absolute inset-0 bg-gradient-to-br from-[#f97461]/20 to-[#ffc90f]/20 rounded-3xl blur-xl transform translate-x-4 translate-y-4">
            </div>
            <div class="relative bg-white/10 p-3 rounded-3xl backdrop-blur-sm shadow-xl overflow-hidden">
              <img
                src="/images/dog.png"
                alt="Happy dog"
                class="w-full max-w-xs h-auto rounded-2xl object-cover"
              />
            </div>
          </div>
        </div>
      </div>
    </section>
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
              Your little friend's best friend. We provide comprehensive pet care solutions designed to keep your furry companions healthy and happy.
            </p>

            <div class="flex space-x-3">
              <a
                href="#"
                class="flex items-center justify-center h-10 w-10 bg-gray-100 rounded-full hover:bg-[#f97461] focus:bg-[#f97461] hover:text-white focus:text-white text-gray-600 transition-colors duration-300"
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
                class="flex items-center justify-center h-10 w-10 bg-gray-100 rounded-full hover:bg-[#f97461] focus:bg-[#f97461] hover:text-white focus:text-white text-gray-600 transition-colors duration-300"
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
                class="flex items-center justify-center h-10 w-10 bg-gray-100 rounded-full hover:bg-[#f97461] focus:bg-[#f97461] hover:text-white focus:text-white text-gray-600 transition-colors duration-300"
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
                class="flex items-center justify-center h-10 w-10 bg-gray-100 rounded-full hover:bg-[#f97461] focus:bg-[#f97461] hover:text-white focus:text-white text-gray-600 transition-colors duration-300"
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
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                  Shop
                </a>
              </li>
              <li>
                <a
                  href="services.html"
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                  Blog
                </a>
              </li>
              <li>
                <a
                  href="contact.html"
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                  Veterinary Consultations
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                  Pet Health Checkups
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                  Pet Grooming
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                  Pet Adoption
                </a>
              </li>
              <li>
                <a
                  href="#"
                  class="hover:text-[#f97461] transition-colors duration-200 flex items-center"
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-3 w-3 mr-2 text-[#f97461]"
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
                <div class="bg-[#f97461]/10 p-2 rounded-full mr-3 mt-1">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-[#f97461]"
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
                  <p>123 Pet Care Avenue</p>
                  <p>Nairobi, Kenya</p>
                </div>
              </li>
              <li class="flex items-center">
                <div class="bg-[#f97461]/10 p-2 rounded-full mr-3">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-[#f97461]"
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
                <div class="bg-[#f97461]/10 p-2 rounded-full mr-3">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-[#f97461]"
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
                <p>contact@AgroConnect.com</p>
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
              <a href="#" class="hover:text-[#f97461]">Privacy Policy</a>
              <a href="#" class="hover:text-[#f97461]">Terms of Service</a>
              <a href="#" class="hover:text-[#f97461]">Cookie Policy</a>
            </div>
          </div>
        </div>
      </div>
    </footer>
    """
  end

  def contacts(assigns) do
    ~H"""
    <section class="py-16 md:py-24 bg-white">
      <div class="max-w-[1500px] mx-auto px-6 md:px-8">
        <div class="flex flex-col md:flex-row items-center gap-12">
          <div class="w-full md:w-1/2 relative">
            <!-- Decorative elements -->
            <div class="absolute -z-10 inset-0 bg-gradient-to-br from-[#f97461]/10 to-[#ffc90f]/10 rounded-3xl blur-lg transform translate-x-4 translate-y-4">
            </div>

            <div class="">
              <img
                src="https://uploads-ssl.webflow.com/64141c3e0a541a198a7ca08f/641893483b63508337c64dc1_lydia-torrey-AovflqCt9Ws-unsplash-p-800.jpg"
                alt="Veterinarian with a dog"
                class="w-full h-[650px]  object-cover transition-transform duration-700 hover:scale-105"
              />
            </div>

            <div class="absolute -bottom-5 right-10 bg-white p-4 rounded-2xl shadow-lg hidden md:flex items-center gap-3">
              <div class="bg-[#f97461]/20 p-2 rounded-full">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-6 w-6 text-[#f97461]"
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
                <p class="text-xs text-[#666666]">Fast Response</p>
                <p class="text-sm font-bold text-[#2d2624]">Within 2 Hours</p>
              </div>
            </div>
          </div>

          <div class="w-full md:w-1/2 space-y-6">
            <div>
              <div class="flex items-center mb-3">
                <div class="h-1 w-16 bg-[#f97461] rounded-full mr-4"></div>
                <span class="text-[#666666] lexend font-medium">Get In Touch</span>
              </div>
              <h2 class="text-3xl md:text-4xl lg:text-5xl poppins font-bold text-[#2c2524] leading-tight mb-4">
                Always Ready To Help You
              </h2>
              <p class="text-[#666666] lexend text-lg mb-8">
                Have questions or need assistance? Our team is here to help you with any pet-related concerns. Fill out the form below and we'll get back to you shortly.
              </p>
            </div>

            <form class="space-y-5">
              <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                <div>
                  <label for="name" class="block poppins text-gray-700 text-sm font-semibold mb-2">
                    Full Name <span class="text-[#f97461]">*</span>
                  </label>
                  <input
                    type="text"
                    id="name"
                    placeholder="Enter your name"
                    class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#f97461]/20 focus:border-[#f97461] transition-colors"
                    required
                  />
                </div>
                <div>
                  <label for="email" class="block poppins text-gray-700 text-sm font-semibold mb-2">
                    Email Address <span class="text-[#f97461]">*</span>
                  </label>
                  <input
                    type="email"
                    id="email"
                    placeholder="Enter your email"
                    class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#f97461]/20 focus:border-[#f97461] transition-colors"
                    required
                  />
                </div>
              </div>

              <div>
                <label for="phone" class="block poppins text-gray-700 text-sm font-semibold mb-2">
                  Phone Number
                </label>
                <input
                  type="tel"
                  id="phone"
                  placeholder="Enter your phone number"
                  class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#f97461]/20 focus:border-[#f97461] transition-colors"
                />
              </div>

              <div>
                <label for="subject" class="block poppins text-gray-700 text-sm font-semibold mb-2">
                  Subject
                </label>
                <select
                  id="subject"
                  class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#f97461]/20 focus:border-[#f97461] transition-colors"
                >
                  <option value="" disabled selected>Select a subject</option>
                  <option value="general">General Inquiry</option>
                  <option value="appointment">Appointment Request</option>
                  <option value="emergency">Emergency Care</option>
                  <option value="feedback">Feedback</option>
                </select>
              </div>

              <div>
                <label for="message" class="block poppins text-gray-700 text-sm font-semibold mb-2">
                  Message <span class="text-[#f97461]">*</span>
                </label>
                <textarea
                  id="message"
                  rows="4"
                  placeholder="How can we help you?"
                  class="w-full px-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#f97461]/20 focus:border-[#f97461] transition-colors"
                  required
                ></textarea>
              </div>

              <div class="flex items-center">
                <input type="checkbox" id="consent" class="mr-2 h-4 w-4 text-[#f97461]" required />
                <label for="consent" class="text-gray-600 text-sm">
                  I agree to the <a href="#" class="text-[#f97461] hover:underline">Privacy Policy</a>
                  and consent to being contacted.
                </label>
              </div>

              <div>
                <button class="group bg-[#f97461] px-8 py-4 text-white lexend font-semibold rounded-lg text-lg shadow-lg hover:shadow-xl transition-all duration-300 hover:bg-[#ffc90f] hover:text-[#2c2524] focus:bg-[#ffc90f] focus:text-[#2c2524] focus:outline-none focus:ring-4 focus:ring-[#ffc90f]/50 w-full md:w-auto flex items-center justify-center">
                  Send Message
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

  def faqs(assigns) do
    ~H"""
    <section class="py-16 md:py-24 bg-gradient-to-br from-[#fbfbfb] to-gray-50">
      <div class="w-full max-w-[1500px] mx-auto px-4 py-16 md:py-20">
        <div class="flex flex-col md:flex-row items-center space-y-5 md:space-x-4">
          <div class="w-full md:w-2/5 text-center md:text-left">
            <h2 class="text-3xl md:text-4xl font-bold text-[#2c2524] mb-6 w-full md:w-[80%]">
              Frequently Asked Questions
            </h2>
            <p class="text-[#666666] mb-8 max-w-md mx-auto md:mx-0">
              We've compiled answers to the most common questions about our veterinary services and pet care
            </p>
            <button
              phx-click="contact_support"
              class="bg-[#f97461] text-white px-6 py-3 mb-2 rounded-lg
                     hover:bg-[#ffc90f] hover:text-[#2c2524] focus:bg-[#ffc90f] focus:text-[#2c2524] focus:outline-none focus:ring-4 focus:ring-[#ffc90f]/50 transition duration-300 shadow-md hover:shadow-lg"
            >
              Contact Support
            </button>
          </div>

          <div class="w-full md:w-3/5 space-y-4">
            <%= for {question, answer} <- faq_items() do %>
              <div
                class="border border-gray-100 rounded-xl overflow-hidden shadow-sm hover:shadow-md
                       transition-all duration-300 bg-white"
                phx-click="toggle_faq"
                phx-value-question={question}
              >
                <div class="w-full text-left p-6 flex justify-between items-center group cursor-pointer">
                  <h3 class="poppins font-bold text-lg text-[#2c2524] group-hover:text-[#f97461]">
                    {question}
                  </h3>
                  <div class="bg-[#f97461]/10 p-2 rounded-full transition-colors duration-300 group-hover:bg-[#f97461]">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class={[
                        "h-5 w-5 text-[#f97461] group-hover:text-white transition-transform duration-300",
                        if(@open_faq == question, do: "rotate-180", else: "")
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
                </div>

                <%= if @open_faq == question do %>
                  <div class="px-6 pb-6 text-[#666666] lexend animate-fade-in">
                    {answer}
                  </div>
                <% end %>
              </div>
            <% end %>
          </div>
        </div>
      </div>
    </section>
    """
  end

  defp faq_items do
    [
      {"How can I make a reservation?",
       "You can make a reservation through our website by visiting the Appointments page. Simply select your preferred veterinarian, choose an available date and time, and fill out your contact information. Alternatively, you can call our office directly at +254 700 123 456 to schedule an appointment with our receptionist."},
      {"What services do you offer?",
       "We offer a comprehensive range of veterinary services including routine check-ups, vaccinations, emergency care, pet grooming, dental care, surgical procedures, nutritional counseling, and behavioral consultations. We also provide specialized diagnostics with our AI-powered image analysis and symptom checker. Our online shop offers premium pet food, toys, medications, and accessories."},
      {"Do you offer urgent appointments?",
       "Yes, we understand that pet emergencies can happen at any time. We offer urgent care appointments during our regular business hours. For after-hours emergencies, we have a 24/7 emergency hotline where you can speak with a veterinarian who will guide you on the next steps. You can also use our real-time chat feature to connect with available veterinarians in your area for immediate advice."},
      {"What is your staff experience?",
       "Our team consists of highly qualified veterinarians with an average of 10+ years of experience in various animal care specialties. All our veterinarians are licensed professionals who regularly participate in continuing education to stay current with the latest advances in veterinary medicine. Our support staff includes certified veterinary technicians, experienced receptionists, and animal care specialists who are passionate about animal welfare."},
      {"Do you provide pet insurance?",
       "While we don't directly offer pet insurance, we partner with several reputable pet insurance providers and can help guide you through the process of selecting the right coverage for your pet. We also accept most major pet insurance plans and can assist with claim submissions. Ask our staff about our wellness plans which provide discounted preventative care services."}
    ]
  end
end
