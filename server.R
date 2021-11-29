server <- function(input, output, session) {
  
  #* Login Functionality ----
  source('./server/login.R', local = TRUE)

  # * Coding Functionality ----
  source('./server/code_runner.R', local = TRUE)
  
  
}
