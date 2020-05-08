//
//  Switch.m
//  SwitchApp
//
//  Created by iSal on 08/05/20.
//

#import <Foundation/Foundation.h>
#import "React/RCTViewManager.h"
@interface RCT_EXTERN_MODULE(Switch, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(isOn  , BOOL)
@end
