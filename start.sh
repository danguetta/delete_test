#    IMPORTANT - GO TO THE VERY BOTTOM TO ADD EXTRA ADMIN USERS
ADMIN_USER='x05_07_w331081xxdanielxguetta'

# Set up the links
URL_TLJF_INSTALLER='https://tljh.jupyter.org/bootstrap.py'
URL_REQUIREMENTS='https://www.dropbox.com/scl/fi/khb85vvdtmn3cwzomxy7c/requirements.txt?rlkey=9uy9rjangw63f7nqywovo7n88&st=okgq5e53&dl=1'


# Install jupyterlab (the URL points to a requirements.txt file)
curl -L "$URL_TLJF_INSTALLER" | sudo python3 - --admin "$ADMIN_USER" --show-progress-page --user-requirements-txt-url "$URL_REQUIREMENTS"

# Set the memory limit and timeout (in seconds) for each user
sudo tljh-config set limits.memory 11G
sudo tljh-config set services.cull.timeout 1800

# Show the notebook (rather than jupyter lab) by default
sudo tljh-config set user_environment.default_app classic

# Start a server automatically when users log in
sudo tljh-config set hub.default_url /hub/user-redirect/tree