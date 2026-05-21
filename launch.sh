
# Install jupyterlab (the URL points to a requirements.txt file)
curl -L "$URL_TLJF_INSTALLER" | sudo python3 - --admin "$ADMIN_USER" --show-progress-page --user-requirements-txt-url "$URL_REQUIREMENTS"

# Set the memory limit and timeout (in seconds) for each user
sudo tljh-config set limits.memory 11G
sudo tljh-config set services.cull.timeout 1800

# Show the notebook (rather than jupyter lab) by default
sudo tljh-config set user_environment.default_app classic

# Start a server automatically when users log in
sudo tljh-config set hub.default_url /hub/user-redirect/tree