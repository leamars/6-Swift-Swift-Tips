//
//  DataManager.m
//  DemoApp
//
//  Created by Lea Marolt on 11/22/15.
//  Copyright © 2015 Lea Marolt Sonnenschein. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

+ (DataManager *)sharedManager {
    
    static DataManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    sharedInstance.servicesCount = 0;
    
    return sharedInstance;
}

@end
