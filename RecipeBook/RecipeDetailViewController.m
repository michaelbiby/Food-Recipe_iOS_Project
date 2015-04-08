//
//  RecipeDetailViewController.m
//  RecipeBook
//  Created by Bibzzz on 2015-04-07.
//  Copyright (c) 2015 Biby Michael. All rights reserved.
//

#import "RecipeDetailViewController.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController

@synthesize recipePhoto;
@synthesize prepTimeLabel;
@synthesize ingredientTextView;
@synthesize descriptionTextView;
@synthesize recipe;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = recipe.name;
    self.prepTimeLabel.text = recipe.prepTime;
    self.recipePhoto.image = [UIImage imageNamed:recipe.imageFile];

    NSMutableString *ingredientText = [NSMutableString string];
    for (NSString* ingredient in recipe.ingredients) {
        [ingredientText appendFormat:@"%@\n", ingredient];
    }
    self.ingredientTextView.text = ingredientText;
    
    
    NSMutableString *descriptionText = [NSMutableString string];
    for (NSString* description in recipe.description) {
        [descriptionText appendFormat:@"%@\n", description];
    }
    self.descriptionTextView.text = descriptionText;
    
    
}

- (void)viewDidUnload
{
    [self setRecipePhoto:nil];
    [self setPrepTimeLabel:nil];
    [self setIngredientTextView:nil];
    [self setDescriptionTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
