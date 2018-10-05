# Google API OAuth provider for the sensenet platform

In this repository you'll find a basic [sensenet](https://github.com/SenseNet/sensenet) OAuth provider implementation for Google API. It lets developers integrate [Google Sign-in](https://developers.google.com/identity/sign-in/web/sign-in) into their applications.

[![NuGet](https://img.shields.io/nuget/v/SenseNet.OAuth.Google.Install.svg)](https://www.nuget.org/packages/SenseNet.OAuth.Google.Install)

The OAuth module in sensenet will automatically create the User content in the Content Repository (with a few basic properties like username and email filled) when the user signs in for the first time.

Additional user data can be synchronized from the 3rd party service (in this case Google) later optionally with a small dev effort.

## Client API
There is a corresponding **JavaScript** implementation that can be used in conjunction with this server-side plugin. It is advisable to install that too as it will speed up your development process on the client.

- [Client-side Google OAuth provider](https://github.com/SenseNet/sn-client-auth-google)

