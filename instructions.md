### Export optimization ###
# create custom file for optimization
https://godot-build-options-generator.github.io/
# compile optimized godot
https://docs.godotengine.org/en/stable/development/compiling/compiling_for_windows.html
scons profile="C:\Users\Ben\Desktop\cyber\GameDev\Compile\custom.py" tools=no target=release
# Additional resources:
https://www.youtube.com/watch?v=ieTSAlbFmuY


### Docker Creation ###
# install docker
https://docs.docker.com/get-docker/
# pull nginx image
docker pull nginx
# create Dockerfile
see directory for the file
# docker build & run
docker --debug build --no-cache -t godot-nginx .
docker run -p 8000:80 -p 11111:11111 godot-nginx

# Additional resources:
https://www.youtube.com/watch?v=gO0fMlZgDco&t=329s
https://www.youtube.com/watch?v=7Uv5bI-H2t0


### Heroku deployment ###
# install
npm i -g heroku
# login
heroku login
heroku container:login
cd <dockerfile-folder>
heroku create <app-name> --region eu
heroku container:push web --app <app-name>
heroku container:release web --app <app-name>
heroku open --app <app-name>

# now we can navigate to the the website
# for debug purposes:
heroku run bash --app lollibird
# Additional resources:
https://www.youtube.com/watch?v=gO0fMlZgDco&t=329s