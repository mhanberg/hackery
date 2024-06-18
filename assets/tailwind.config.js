const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')

module.exports = {
  content: ["./js/**/*.js", "./lib/**/*.ex", "assets/tailwind.config.js"],
  theme: {
    extend: {
      colors: {
        theme: colors.amber
      },
      typography: ({ theme }) => ({
        DEFAULT: {
          css: {
            pre: false,
          },
        },
        theme: {
          css: {
            '--tw-prose-links': theme('colors.theme[600]'),
            '--tw-prose-invert-links': theme('colors.theme[500]'),
          },
        },
      }),
    },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    require("@tailwindcss/container-queries"),
  ],
};

