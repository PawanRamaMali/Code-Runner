library(shinydashboard)

Code_Runner_Tab <- source('./ui/admin/code_runner_page.R', local = TRUE)

Settings <- source('./ui/settings.R', local = TRUE)

About <- source('./ui/admin/about_page.R', local = TRUE)

LogoutButton <- source('./functions/logout.R', local = TRUE)$value


fluidPage(
  theme = shinythemes::shinytheme("cerulean"),
  useShinyjs(),
  
  includeCSS("style.css"),

  div(
    id = "main_content",
    navbarPageWithInputs(
      windowTitle = "App",
      title = div(
        a(
          "App",
          href = "#",
          target = "_blank",
          style = "color:white;text-decoration:none;padding-left:20px;"
        )
        
        
      ),
      id = "Front",
      
      
      # Code Runner ----
      Code_Runner_Tab$value,
      
      
      # Settings Page ----
      Settings$value,
      
      # About Page ----
      About$value
      
      ,
      inputs = LogoutButton
    )
  )
)
