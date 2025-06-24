import Config

config :tableau, :config, url: "https://example.com"
config :tableau, Tableau.PageExtension, dir: ["_pages"]
config :tableau, Tableau.PostExtension, future: true, dir: ["_posts"]
