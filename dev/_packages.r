## R
# install.packages("arrow")
# install.packages("reticulate")

# python
# usethis::edit_r_profile()
# Sys.setenv(RETICULATE_PYTHON = 'C:\\Anaconda3')
library(reticulate)
## install miniconda
reticulate::install_miniconda()
reticulate::miniconda_update() # update if needed

## install packages
# reticulate::py_install("pyarrow")
# reticulate::py_install("pandas")

reticulate::conda_install(envname = "r-reticulate", packages = "tqdm")
reticulate::conda_install(envname = "r-reticulate", packages = "mxnet")
reticulate::conda_install(envname = "r-reticulate", packages = "pyspark")
reticulate::conda_install(envname = "r-reticulate", packages = "gluonts")

## check python version
reticulate::py_version()
reticulate::py_versions_windows()

## check config
reticulate::py_config() 

## check conda envs
reticulate::conda_list()
# conda_remove("pillow")
reticulate::virtualenv_list()

?reticulate::py_module_available()

reticulate::miniconda_path()
?reticulate::import_from_path()
reticulate::repl_python()

reticulate::conda_version()

