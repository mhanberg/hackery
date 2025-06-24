defmodule Hackery.PostLayout do
  use Tableau.Layout, layout: Hackery.RootLayout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <article class="prose dark:prose-invert prose-h1:text-2xl prose-headings:font-[Oswald] prose-theme my-8 mx-auto">
      <div class="mb-4">
        <h1><%= @page.title %></h1>
        <span class={}><%= Calendar.strftime(@page.date, "%B %d, %Y") %></span>
      </div>

      <%= {:safe, render(@inner_content)} %>
    </article>
    """
  end
end
