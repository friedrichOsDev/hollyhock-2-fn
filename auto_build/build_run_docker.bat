@echo off

set "cpath=%~dp0"
set "cpath=%cpath:\=/%../"
docker build -t hollyhock-sh4-cross .
docker run -it --rm -v "%cpath%":"/workspace" hollyhock-sh4-cross