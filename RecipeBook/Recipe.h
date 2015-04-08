//
//  Recipe.h
//  RecipeBook
//  Created by Bibzzz on 2015-04-07.
//  Copyright (c) 2015 Biby Michael. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *name; // name of recipe
@property (nonatomic, strong) NSString *prepTime; // preparation time
@property (nonatomic, strong) NSString *imageFile; // image filename of recipe
@property (nonatomic, strong) NSArray *ingredients; // ingredients
@property (nonatomic, strong) NSArray *description; //description

@end
