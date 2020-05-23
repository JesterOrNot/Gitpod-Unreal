FROM gitpod/workspace-full-vnc

USER root

WORKDIR /home/gitpod/.unreal

RUN git clone "https://github.com/EpicGames/UnrealEngine.git" \
    && cd UnrealEngine \
    && git checkout release \
    && ./Setup.sh \
    && ./GenerateProjectFiles.sh \
    && make

ENV PATH=$PATH:/home/gitpod/.unreal/Engine/Binaries/Linux
