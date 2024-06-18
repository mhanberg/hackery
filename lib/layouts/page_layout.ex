defmodule Hackery.PageLayout do
  use Tableau.Layout, layout: Hackery.RootLayout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <article class="prose dark:prose-invert prose-theme my-8">
      <%= {:safe, render(@inner_content)} %>
    </article>
    """
  end
end
