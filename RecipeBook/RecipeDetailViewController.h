//
//  RecipeDetailViewController.h
//  RecipeBook
//  Created by Bibzzz on 2015-04-07.
//  Copyright (c) 2015 Biby Michael. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface RecipeDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *recipePhoto;
@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UITextView *ingredientTextView;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

@property (nonatomic, strong) Recipe *recipe;

@end
