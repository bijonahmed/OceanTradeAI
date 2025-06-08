// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  ssr: false,
  router: {
    options: {
      hashMode: false,
    },
  },
 
  nitro: {
    prerender: {
      crawlLinks: true,
      failOnError: false,
    },
  },
  
  runtimeConfig: {
    public: {
      baseURL:
        process.env.NODE_ENV === "production"
          ? "https://apiocn.eduzenship.com/api/"
          // : "https://apiocn.eduzenship.com/api/",
          : "http://127.0.0.1:8000/api/",
    },
  },
  pages: true,
  devtools: { enabled: false },
  experimental: {
    payloadExtraction: true,
  },
  //css: ["~/assets/css/main.css"],

  // postcss: {
  //   plugins: {
  //     tailwindcss: {},
  //     autoprefixer: {},
  //   },
  // },
  plugins: [
    // Specify the path to your plugin file
    "~/plugins/axios.js",
    "~/plugins/jquery.js",
   // "~/plugins/google-analytics.js",
    "~/plugins/navMenu.js",
    "~/plugins/bootstrap.js",
    //"~/plugins/echo.client.js",
    "~/plugins/v-paste.js",
    // Add other plugins as needed
  ],
  modules: [
    "nuxt-icon",
    "nuxt-lodash",
    "@pinia/nuxt",
    "@pinia-plugin-persistedstate/nuxt",
    "@vite-pwa/nuxt",
  ],
  pwa: {
    manifest: {
      name: "UIC",
      short_name: "UIC",
      description: "UIC Cryptocurrency Web Apps",
      theme_color: "#32CD32",
      icons: [
        {
          src: "pwa-192x192.png",
          sizes: "192x192",
          type: "image/png",
        },
        {
          src: "pwa-512x512.png",
          sizes: "512x512",
          type: "image/png",
        },
      ],
    },
    devOptions: {
      enabled: true,
      type: "module",
    },
  },

  app: {
    head: {
      charset: "utf-8",
      viewport: "width=device-width, initial-scale=1, maximum-scale=1",
      // Add CSS file
      link: [
        //Fronend 
        { rel: "stylesheet", href: "/app/bootstrap/css/bootstrap.min.css", },
        { rel: "stylesheet", href: "/app/fontawsome/css/all.min.css",},
        { rel: "stylesheet", href: "/app/dist/aos.css" },
        { rel: "stylesheet", href: "/app/dist/app.css"},
        
     //'~/assets/css/global.css', 
      ],
      // Add JavaScript file
      script: [
        { src: "/app/js/jquery.min.js", type: "text/javascript", },
        { src: "/app/bootstrap/css/bootstrap.min.js", type: "text/javascript", },
        { src:"/app/js/jquery.easing.js", type: "text/javascript",},
        { src:"/app/js/app.js", type: "text/javascript",},
        { src:"/app/js/count-down.js", type: "text/javascript",},
        { src:"https://s3.tradingview.com/tv.js", type: "text/javascript",},
        { src:"https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js", type: "text/javascript",},
        //{ src:"/app/js/mouse.js", type: "text/javascript",}
        
      ],
    },
  },
});
