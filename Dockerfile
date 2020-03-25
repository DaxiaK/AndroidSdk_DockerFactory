FROM openjdk:8-jdk
MAINTAINER daxia

ARG ANDROID_COMPILE_SDK=27
ARG ANDROID_BUILD_TOOLS=27.0.1
ARG ANDROID_SDK_TOOLS=24.4.1
ARG ANDROID_SDK_VERSION=6200805_latest

ENV ANDROID_HOME=$PWD/android-sdk-linux
ENV PATH=$PATH:$PWD/android-sdk-linux/platform-tools/

RUN apt-get update && apt-get --quiet install --yes --no-install-recommends \
    apt-utils \
    lib32stdc++6 \
    lib32z1 \
    tar \
    unzip \
    wget \
 && rm -rf /var/lib/apt/lists/*

RUN wget --quiet --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-${ANDROID_SDK_VERSION}.zip
RUN mkdir android-sdk-linux/
RUN mkdir ~/.android
RUN touch ~/.android/repositories.cfg
RUN unzip -q android-sdk.zip -d android-sdk-linux/
RUN yes | android-sdk-linux/tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --licenses
RUN android-sdk-linux/tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "platform-tools" > /dev/null
RUN android-sdk-linux/tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "build-tools;${ANDROID_BUILD_TOOLS}" > /dev/null
RUN android-sdk-linux/tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "platforms;android-${ANDROID_COMPILE_SDK}" > /dev/null
RUN rm android-sdk.zip



