defmodule Hackery.RootLayout do
  use Tableau.Layout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!DOCTYPE html>
    <html lang="en" class="font-[Inter] [scrollbar-color:">
      <head>
        <meta charset="utf-8" />
        <meta http_equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>
          <%= [@page[:title], @data["site"]["name"]]
          |> Enum.filter(& &1)
          |> Enum.intersperse("|")
          |> Enum.join(" ") %>
        </title>

        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
          href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&family=Oswald:wght@200..700&display=swap"
          rel="stylesheet"
        />

        <link rel="stylesheet" href="/css/site.css" />
      </head>

      <body class="dark:bg-black dark:text-white">
        <div class="border-t-4 border-theme-500">
          <main class="container mx-auto max-w-[900px] px-4 min-h-[calc(100vh-4px)] grid grid-rows-[auto_1fr_auto] grid-cols-[100%]">
            <header class="font-[Oswald] border-b border-theme-600 dark:border-theme-500 border-dashed text-2xl py-2 flex justify-between">
              <a href="/"><%= @data["site"]["name"] %></a>
              <div class="flex items-center gap-4">
                <a :for={link <- @data["site"]["nav"]} href={link["url"]}><%= link["text"] %></a>
              </div>
            </header>
            <section class="h-full">
              <%= render(@inner_content) %>
            </section>
            <footer>
              <ul class="py-8 border-dashed border-t border-theme-500">
                <li :for={social <- @data["site"]["socials"]}>
                  <%= social["name"] %>:
                  <a class="text-theme-600 dark:text-theme-500" href={social["url"]}>
                    <%= social["handle"] %>
                  </a>
                </li>
              </ul>
            </footer>
          </main>
        </div>
      </body>

      <%= if Mix.env() == :dev do %>
        <%= Phoenix.HTML.raw(Tableau.live_reload(assigns)) %>
      <% end %>
    </html>
    """
    |> Phoenix.HTML.Safe.to_iodata()
  end
end
