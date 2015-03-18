//
//  DropitBehavior.m
//  Dropit
//
//  Created by Igor on 3/18/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import "DropitBehavior.h"

@interface DropitBehavior()

@property (strong, nonatomic) UIGravityBehavior *gravityBehavior;
@property (strong, nonatomic) UICollisionBehavior *collisionBehavior;
@property (strong, nonatomic) UIDynamicItemBehavior *itemBehavior;

@end

@implementation DropitBehavior

- (UIGravityBehavior *)gravityBehavior {
    
    if (!_gravityBehavior) {
        _gravityBehavior = [[UIGravityBehavior alloc] init];
        _gravityBehavior.magnitude = 0.9;
    }
    
    return _gravityBehavior;
}

- (UICollisionBehavior *)collisionBehavior {
    
    if (!_collisionBehavior) {
        _collisionBehavior = [[UICollisionBehavior alloc] init];
        _collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    }
    
    return _collisionBehavior;
}

- (instancetype)init {

    self = [super init];
    
    [self addChildBehavior:self.gravityBehavior];
    [self addChildBehavior:self.collisionBehavior];
    [self addChildBehavior:self.itemBehavior];
    
    return self;
}

- (UIDynamicItemBehavior *)itemBehavior {

    if (!_itemBehavior) {
        _itemBehavior = [[UIDynamicItemBehavior alloc] init];
        _itemBehavior.allowsRotation = NO;
    }
    
    return _itemBehavior;
}

- (void)addItem:(id<UIDynamicItem>)item {
    
    [self.gravityBehavior addItem:item];
    [self.collisionBehavior addItem:item];
    [self.itemBehavior addItem:item];
}

- (void)removeItem:(id<UIDynamicItem>)item {
    
    [self.gravityBehavior removeItem:item];
    [self.collisionBehavior removeItem:item];
    [self.itemBehavior removeItem:item];
}

@end
