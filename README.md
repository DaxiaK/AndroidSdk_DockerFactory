# What is AndroidSdk_DockerFactory?

It is a building docker image with android sdk porject.We hope it can reduce CICD times.

And you can create new android sdk docker image fastly by some variables.


# Variables

If you want to update the android sdk version , please update these two variables only:

**ANDROID_COMPILE_SDK: "28"**
  
  Your complie sdk version. 
  
**ANDROID_BUILD_TOOLS: "28.0.3"**

  Your build tools version. We also name the docker images tag by this variable.  
  
  
# Version

Now , android sdk images which we provide are:

**1.androidsdk:27.0.1**

```
ANDROID_COMPILE_SDK=27
ANDROID_BUILD_TOOLS=27.0.1
ANDROID_SDK_TOOLS=24.4.1
ANDROID_SDK_VERSION="6200805_latest"
```

**2.28.0.3**

```
ANDROID_COMPILE_SDK: "28"
ANDROID_BUILD_TOOLS: "28.0.3"
ANDROID_SDK_TOOLS: "26.1.1"
ANDROID_SDK_VERSION: "6200805_latest"
```


**3.29.0.3**

```
ANDROID_COMPILE_SDK: "29"
ANDROID_BUILD_TOOLS: "29.0.3"
ANDROID_SDK_TOOLS: "26.1.1"
ANDROID_SDK_VERSION: "6200805_latest"
```

