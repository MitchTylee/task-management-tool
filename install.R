# Set personal library if needed
if (!dir.exists(Sys.getenv("R_LIBS_USER"))) {
  dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE)
}
.libPaths(Sys.getenv("R_LIBS_USER"))

# Install required packages
install.packages(c(
  "pbdZMQ",
  "IRkernel",
  "caret",
  "tidymodels",
  "dplyr",
  "ggplot2",
  "plotly",
  "charlatan",
  "shiny",
  "shinythemes"
))

# Register the R kernel for Jupyter
IRkernel::installspec(user = TRUE)
