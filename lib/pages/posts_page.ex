defmodule Hackery.PostsPage do
  use Tableau.Page, layout: Hackery.RootLayout, permalink: "/posts"
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <section class="my-8">
      <h1 class="text-3xl font-[Oswald] mb-4">Posts</h1>
      <ul class="flex flex-col gap-y-4">
        <li :for={post <- @posts}>
          <div>
            <a class="text-theme-500" href={post.permalink}><%= post.title %></a>
            <div class="text-sm"><%= Calendar.strftime(post.date, "%B %d, %Y") %></div>
          </div>
        </li>
      </ul>
    </section>
    """
  end
end
