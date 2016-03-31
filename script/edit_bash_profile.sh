echo "if [ -f ~/.bashrc ]; then \n source ~/.bashrc \n fi" | cat - ~/.bash_profile > /tmp/tempfile && mv /tmp/tempfile ~/.bash_profile
