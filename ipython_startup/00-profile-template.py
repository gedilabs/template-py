from importlib import reload
from logging import basicConfig
from os import getenv

basicConfig(level=getenv("LOG_LEVEL", "DEBUG"))

# Import commonly used modules

# Activate the autoreload extension
get_ipython().run_line_magic('load_ext', 'autoreload')

# Set autoreload mode to 2, which reloads modules every time before executing code
get_ipython().run_line_magic('autoreload', '2')

# Optionally, you can add specific modules to be auto-reloaded
# For example, to auto-reload a module named 'my_module', do:
#get_ipython().run_line_magic('aimport', 'app.core.base')

# initialize environment

