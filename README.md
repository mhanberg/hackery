# Hackery

Hackery is a blog and website template using the [Tableau](https://github.com/elixir-tools/tableau) static site generator.

## Features

- Configurable navbar items, name, and footer links
- Light and Dark mode
- Configurable accent color
- Basic tableau features like syntax highlighting for most languages with tons of themes (see [autumn](https://github.com/leandrocp/autumn/) for more details), live reloading and HEEx templating.

## Usage

1. Fork this repo
1. `mix deps.get`
1. `mix tableau.server`
1. Navigate to http://localhost:4999 and get to writing!

## Deployment

Included is a `netlify.toml` config file that makes it easy to one click deploy your site on [Netlify](https://netlify.com)

## License

MIT
