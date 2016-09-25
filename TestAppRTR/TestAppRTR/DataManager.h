//
//  DataManager.h
//  DemoApp
//
//  Created by Lea Marolt on 11/22/15.
//  Copyright © 2015 Lea Marolt Sonnenschein. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject

@property (nonatomic, strong) NSNumber *servicesCount;

+ (DataManager *) sharedManager;

@end
