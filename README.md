# LiveChat

School project that consist of 4 team members

## Problems Encountered
**Git was not working after updating macOS**

`xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun`

-The problem is that Xcode Command-line Tools needs to be updated.

Go back to your terminal and enter:

`xcode-select --install`

and a software is going to be installed, once that is done, your git should be ready to run.

if that doesn't work, refer to this [thread](https://stackoverflow.com/questions/52522565/git-is-not-working-after-macos-update-xcrun-error-invalid-active-developer-pa)


## Journal
1. Due to time constraints, our team barely had time to meet and plan the project.
2. The first step was to create a blueprint with checkboxes to complete. We followed the waterfall method as well.
3. Following the creation of a Firebase project, we spent time researching which language to use for the User Interface and ultimately chose `SwiftUI`. Xcode was my choice because it allowed me to see the app as I coded.
4. Created Log in and Sign up page for the app. 

 **First Designs of the App**
 
 ![image](https://user-images.githubusercontent.com/66978846/166153776-4018b294-119c-4f7b-b686-afc0d6e0d1f5.png)
 ![image](https://user-images.githubusercontent.com/66978846/166153922-12631a5d-a7e1-485d-b58d-98646b1b2fb9.png)
 ![image](https://user-images.githubusercontent.com/66978846/166153927-c3ff6025-f9fb-4dbd-b61f-8d148d7e2bf4.png)


 

5. My classmate created another interface with the *wrong* bundle id, so we had to change that, his interface was well developed but had spaghetti 🍝 code.
6. Created sign in provider with only email and password
 ![image](https://user-images.githubusercontent.com/66978846/166156938-deebb04b-2181-40d8-825d-0aacc7eeb0ab.png)



