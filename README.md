#  CoordinatorDemo

# How Coordinator Pattern Works :

In the Coordinator Module of the app, We have created a protocol named as Coordinator.swift. 

It have a function Coordinator.swift which contains a function start() which starts building the application.

# App Hierarchy :

1. AppDelegate invokes Coordinator class function.
2. First Controller is Tutorial Controller. All required declaration of Coordinator is done in Tutorial Coordinator. To receive call back we have used either closure or delegate.
3. Helper module contains any helper function for app. For now it contains UserDefault and Storyboard.
4. TabBarController contains tabcontrollers childeren details.
5. TabController module contains all the module class details which will be part of tabbar.

# WebService
1. Network.swift contains all network related class. Which calls internet to fetch data.
2. NetworkMethod.swift contains http method names.
3. NetworkEndPoint.swift contains the basic configuration of app. It defines the setting of the app like Develop, QA, Staging, Production server details.
4. Core Module contains JSONDictionary.swift which can be used for typecasting server json and will be used in parsing.

# Model
1. It defines the model when api is called for any  viewcontoller.
2. We have declared the model and used model extension to call api and do parsing simultaneously.


# Resources
It contains the .xcconfig file for all the available server for the app.


