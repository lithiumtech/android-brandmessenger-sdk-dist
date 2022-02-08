# Quickstart Guide

Add jitpack repository dependencies

    allprojects {  
        repositories {  
			//...
            maven {  
                url 'https://jitpack.io'  
                credentials { username authToken }  
            }  
        }  
    }

Add gradle dependencies

    implementation 'com.github.lithiumtech.android-brandmessenger-sdk-dist:brandmessengercore:0.1.4'  
    implementation 'com.github.lithiumtech.android-brandmessenger-sdk-dist:brandmessengerui:0.1.4'

Add to manifest inside `application`

    <meta-data  
      android:name="com.brandmessenger.company.key"  
      android:value="<company key>" />
      
    <meta-data  
      android:name="com.brandmessenger.application.key"  
      android:value="<application id>" /> 
      
    <meta-data  
      android:name="activity.open.on.notification"  
      tools:replace="android:value"
      android:value="com.brandmessenger.core.ui.conversation.activity.ConversationActivity" />
      
    <service android:name="com.brandmessenger.core.KBMFirebaseMessagingService" 
      android:stopWithTask="false">  
      <intent-filter>
        <action android:name="com.google.firebase.MESSAGING_EVENT" />  
      </intent-filter>
    </service>
    
    <provider  
      android:name="androidx.core.content.FileProvider"  
      android:authorities="null.brandmessenger.provider"  
      android:exported="false"  
      android:grantUriPermissions="true"  
      tools:replace="android:authorities">  
        <meta-data
          android:name="android.support.FILE_PROVIDER_PATHS"  
          android:resource="@xml/file_paths"/>  
    </provider>
    
    <meta-data android:name="com.package.name"  
      android:value="${applicationId}" />
      
    <meta-data android:name="com.brandmessenger.core.ui.notification.smallIcon"  
      android:resource="@drawable/icon" />

    <activity android:name="com.brandmessenger.core.ui.conversation.activity.ConversationActivity"  
      android:configChanges="keyboardHidden|screenSize|smallestScreenSize|screenLayout|orientation"  
      android:label="@string/app_name"  
      android:parentActivityName=".MainActivity"  
      android:theme="@style/KBMTheme"  
      android:launchMode="singleTask"  
      tools:node="replace">  
       <meta-data
         android:name="android.support.PARENT_ACTIVITY"  
         android:value=".MainActivity" />  
    </activity>

Initialization

    BrandMessengerManager.init(this);

Login + FCM token

    BrandMessengerManager.login(context, "<ACCESS_TOKEN>", new KBMCallback() {
        @Override
        public void onSuccess(Object response) {
            if (BrandMessengerUserPreference.getInstance(context).isRegistered()) {
                FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener<String>() {
                    @Override
                    public void onComplete(@NonNull Task<String> task) {
                        String token = task.getResult();
                        BrandMessenger.registerForPushNotification(context, token, new KBMPushNotificationHandler() {
                            @Override
                            public void onSuccess(RegistrationResponse registrationResponse) {

                            }

                            @Override
                            public void onFailure(RegistrationResponse registrationResponse, Exception exception) {

                            }
                        });
                    }
                });
            }
        }

        @Override
        public void onError(Object error) {

        }
    });

Show conversation

    BrandMessengerManager.show(this);

Logout

    BrandMessengerManager.logout(this, new KBMLogoutHandler() {
        @Override
        public void onSuccess(Context context) {
        }

        @Override
        public void onFailure(Exception exception) {
        }
    });