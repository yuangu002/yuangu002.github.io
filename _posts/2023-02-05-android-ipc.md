---
layout: post
title:  "Demystifying Android's Inter-Process Communication (IPC)"
permalink: /android-ipc/
published: false
tags: tech-career java android
---

In this article, I will explain how Android designs and implements their IPC with actionable examples to start experimenting with.

IPC mechanism defines the communication protocol between processes in operating system. A design of such mechanism should reflect the principle that one process cannot access memory of another process without proper authorization. However, a successful OS ecosystem does't want to confuse developers with low-level OS kernel details.

Talking about Android, you may have heard of a variety of jargons about process management: bound services, IBinder, AIDL, Messenger, Parcelable, etc. Those words can be confusing because not all of them are parts of IPC mechanism itself, but all of them are critical to a comprehensive understanding on how IPC works in Android.

## Service
Any Android app consists of a combination of those 4 application components: Activity, Service, ContentProvider, and BroadcastReceiver. From a user's perspective, an application component is a submodule that provides certain features for the app; for developers, it is an interface that needs to be implemented to provide such features.

**Service performs long-running operations in the background, and it doesn't have a UI.**. A service can continue running even though the user isn't interacting with the app's UI. For example, when you are driving, the YouTube Music still plays music in the background, while Google Maps is the main app on the UI. When it's playing, YT Music should also have a status bar notification for you. A service that requires a notification display is called foreground services. Otherwise, you can also provide services unnoticeable to the user: after your consent, Google Photos can keep a copy of all your IPhone pictures by running a background service that uploads pictures to Google servers.

That sounds pretty like a thread right? Yes, both of them perform work outside the main thread, but there's a critical difference: a service can continue running when app is not in use, while the thread performs work **only** when user is interacting with the app. Also, when a service starts running, it runs in the UI thread by default, so it's the developer's job to offload the heavy computations in the service to a background executor.

We have seen that a service can be either foreground or background, depending on user experience. From the perspective of the service's life cycle, it can be categorized to started and bound service, but all services need to be implemented as a subclass of `Service`.

### Started services
Started services start running when the client calls `startService()` method. It will run indefinitely until `stopService()` is called or the service calls `stopSelf()`. If you want a service to be a started service, you can override the `onStartCommand()` method to implement the service logic.

### Bound services
In contrast, a bound service only runs when there are "client" components that *bind* to it. You can think it as the server module of a client-server architecture. The client component can make request to and receive response from the bound service. Then, we can use this client-server model to perform IPC, when the client component and the bound service live in different processes.

#### Server side: onBind()
The bound service should implement the `onBind()` method, which returns a `IBinder` object. The `IBinder`, received by to the client, serves as the programming interface that represents the bound service. After the client receives a valid `IBinder`, it can call any public method in the bound service.

#### Client side: bindService()


### Native binder implementation
Here is a simple binder implementation that the client binds to the service:

### Messenger

### Customized interface for inter-process service (AIDL)

## AIDL

### Define the interface

#### Parcelable

### Implement the interface

### Calling from the client side