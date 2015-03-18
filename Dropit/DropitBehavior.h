//
//  DropitBehavior.h
//  Dropit
//
//  Created by Igor on 3/18/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior

- (void)addItem:(id <UIDynamicItem>)item;
- (void)removeItem:(id <UIDynamicItem>)item;

@end
