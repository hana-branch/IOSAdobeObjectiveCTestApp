#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "BNCAppGroupsData.h"
#import "BNCAppleReceipt.h"
#import "BNCApplication.h"
#import "BNCCallbackMap.h"
#import "BNCConfig.h"
#import "BNCContentDiscoveryManager.h"
#import "BNCCrashlyticsWrapper.h"
#import "BNCDeepLinkViewControllerInstance.h"
#import "BNCDeviceInfo.h"
#import "BNCDeviceSystem.h"
#import "BNCEncodingUtils.h"
#import "BNCEventUtils.h"
#import "BNCJSONUtility.h"
#import "BNCKeyChain.h"
#import "BNCNetworkInterface.h"
#import "BNCNetworkService.h"
#import "BNCPartnerParameters.h"
#import "BNCPasteboard.h"
#import "BNCQRCodeCache.h"
#import "BNCReachability.h"
#import "BNCReferringURLUtility.h"
#import "BNCRequestFactory.h"
#import "BNCServerAPI.h"
#import "BNCSKAdNetwork.h"
#import "BNCSpotlightService.h"
#import "BNCSystemObserver.h"
#import "BNCURLFilter.h"
#import "BNCUrlQueryParameter.h"
#import "BNCUserAgentCollector.h"
#import "Branch+Validator.h"
#import "BranchConstants.h"
#import "BranchContentDiscoverer.h"
#import "BranchContentDiscoveryManifest.h"
#import "BranchContentPathProperties.h"
#import "BranchInstallRequest.h"
#import "BranchJsonConfig.h"
#import "BranchLATDRequest.h"
#import "BranchOpenRequest.h"
#import "BranchShortUrlRequest.h"
#import "BranchShortUrlSyncRequest.h"
#import "BranchSpotlightUrlRequest.h"
#import "NSError+Branch.h"
#import "NSMutableDictionary+Branch.h"
#import "NSString+Branch.h"
#import "UIViewController+Branch.h"
#import "BNCCallbacks.h"
#import "BNCCurrency.h"
#import "BNCInitSessionResponse.h"
#import "BNCLinkCache.h"
#import "BNCLinkData.h"
#import "BNCNetworkServiceProtocol.h"
#import "BNCPreferenceHelper.h"
#import "BNCProductCategory.h"
#import "BNCServerInterface.h"
#import "BNCServerRequest.h"
#import "BNCServerRequestQueue.h"
#import "BNCServerResponse.h"
#import "Branch.h"
#import "BranchActivityItemProvider.h"
#import "BranchCSSearchableItemAttributeSet.h"
#import "BranchDeepLinkingController.h"
#import "BranchDelegate.h"
#import "BranchEvent.h"
#import "BranchLastAttributedTouchData.h"
#import "BranchLinkProperties.h"
#import "BranchLogger.h"
#import "BranchPasteControl.h"
#import "BranchPluginSupport.h"
#import "BranchQRCode.h"
#import "BranchScene.h"
#import "BranchSDK.h"
#import "BranchShareLink.h"
#import "BranchUniversalObject.h"

FOUNDATION_EXPORT double BranchSDKVersionNumber;
FOUNDATION_EXPORT const unsigned char BranchSDKVersionString[];
