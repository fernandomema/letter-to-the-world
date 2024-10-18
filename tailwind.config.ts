import type { Config } from "tailwindcss";

export default {
  content: ["./src/**/*.{html,js,svelte,ts}"],

  theme: {
    extend: {
      colors: {
        primary: {
          50: "#FFFEFC",
          100: "#FFFDF9",
          200: "#FFFAF1",
          300: "#FFF7E8",
          400: "#FFF0D6",
          500: "#FFEAC5",
          600: "#E6D3B1",
          700: "#998C76",
          800: "#736959",
          900: "#4D463B",
        },
        secondary: {
          50: "#FFFDFB",
          100: "#FFFBF8",
          200: "#FFF6ED",
          300: "#FFF1E1",
          400: "#FFE6CB",
          500: "#FFDBB5",
          600: "#E6C5A3",
          700: "#99836D",
          800: "#736351",
          900: "#4D4236",
        },
        tertiary: {
          50: "#F8F6F5",
          100: "#F0EDEA",
          200: "#DAD3CC",
          300: "#C4B8AD",
          400: "#98836F",
          500: "#6C4E31",
          600: "#61462C",
          700: "#412F1D",
          800: "#312316",
          900: "#20170F",
        },
        quaternary: {
          50: "#F7F5F4",
          100: "#EFECE9",
          200: "#D7CFC9",
          300: "#BFB2A8",
          400: "#907967",
          500: "#603F26",
          600: "#563922",
          700: "#3A2617",
          800: "#2B1C11",
          900: "#1D130B",
        }
      }
    }
  },

  plugins: [require("@tailwindcss/typography")]
} as Config;
