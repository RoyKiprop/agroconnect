defmodule AgroconnectWeb.PetLive.Index do
  use AgroconnectWeb, :live_view

  import AgroconnectWeb.PetLandingComponents

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(open_faq: nil)
     |> assign(page_title: "Pet Care")}
  end

  def handle_event("toggle_faq", %{"question" => question}, socket) do
    new_open_faq = if socket.assigns.open_faq == question, do: nil, else: question

    {:noreply,
     socket
     |> assign(open_faq: new_open_faq)}
  end

  def render(assigns) do
    ~H"""
    <.nav_bar />
    <.pet_hero />
    <.pet_about />
    <.landing_page_services />
    <.contact_hero />
    <.faqs open_faq={@open_faq} />
    <.contacts />
    <.footer />
    """
  end
end
