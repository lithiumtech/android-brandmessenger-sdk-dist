# BrandMessenger:

Dependency to be added for BrandMessenger ui and core:

    implementation 'com.github.lithiumtech.android-brandmessenger-sdk-dist:brandmessengercore:<version>'
    implementation 'com.github.lithiumtech.android-brandmessenger-sdk-dist:brandmessengerui:<version>'


**Auth token to access lib**
You need to generate Auth token on Jitpack and copy that in gradle.properties file
authToken='YOUR_AUTH_TOKEN'

Also, add this in your project's gradle file

    allprojects {
        repositories {
            maven {
                url 'https://jitpack.io'
                credentials { username authToken }
            }
        }
    }