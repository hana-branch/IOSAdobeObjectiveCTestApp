//
//  AppDelegate.m
//  ObjectiveC Test App
//
//  Created by Hana Park on 4/1/21.
//
@import AEPCore;
@import AEPSignal;
@import AEPLifecycle;
@import AEPIdentity;
@import AEPUserProfile;
@import AEPServices;
@import AEPAnalytics;

#import "AppDelegate.h"
#import <AdobeBranchExtension/AdobeBranchExtension.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    const UIApplicationState appState = application.applicationState;
//        [AEPMobileCore setLogLevel: AEPLogLevelDebug];
    [AEPMobileCore registerExtensions:@[AdobeBranchExtension.class, AEPMobileSignal.class, AEPMobileLifecycle.class, AEPMobileUserProfile.class, AEPMobileIdentity.class, AEPMobileAnalytics.class, /*Other AEP SDK's*/] completion:^{
    [AEPMobileCore configureWithAppId: @"d10f76259195/c769149ebd48/launch-f972d1367b58-development"];
        if (appState != UIApplicationStateBackground) {
            // Only start lifecycle if the application is not in the background
            [AEPMobileCore lifecycleStart:@{@"contextDataKey": @"contextDataVal"}];
        }
    }];
    [Branch enableLogging];

    [AdobeBranchExtension configureEventTypes:@[@"com.adobe.eventType.analytics"] andEventSources:@[@"com.adobe.eventSource.responseContent"]];
    // Handle your Branch deep link routing in the callback
    [AdobeBranchExtension initSessionWithLaunchOptions:launchOptions andRegisterDeepLinkHandler:^(NSDictionary * _Nullable params, NSError * _Nullable error) {
        if (!error && params && [params[@"+clicked_branch_link"] boolValue]) {
            // Handle Branch Link data (route user, show alert, etc)
        }
    }];
    
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    [AdobeBranchExtension application:application openURL:url options:options];
    return YES;
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler {
    // handler for Universal Links
    [AdobeBranchExtension application:application continueUserActivity:userActivity];
    return YES;
}

//#pragma mark - UISceneSession lifecycle
//
//
//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}
//
//
//- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//    // Called when the user discards a scene session.
//    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//}


@end
