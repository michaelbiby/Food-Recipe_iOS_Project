//
//  RecipeBookViewController_2.m
//  RecipeBook/Users/rimaljose/Desktop/RecipeBook Improved/RecipeBookViewController_2.m
//
//  Created by Bibzzz on 2015-04-07.
//  Copyright (c) 2015 Biby Michael. All rights reserved.
//
#import "RecipeBookViewController_2.h"
#import "RecipeDetailViewController.h"
#import "Recipe.h"

@interface RecipeBookViewController_2 ()

@end

@implementation RecipeBookViewController_2{

    NSArray *recipes;
}

@synthesize tableView = _tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Thalassery Biriyani ";
    recipe1.prepTime = @"30 min";
    recipe1.imageFile = @"T_B.jpg";
    recipe1.ingredients = [NSArray arrayWithObjects:@"1/2 kg Chicken pieces",@"2 cups basmati Rice",@"1 tbsp Red Chilli powder" , @"1/2 tsp Turmeric powder" , @"2 tbsp Lemon juice", @"2 tbsp Ghee", @"1 Bay Leaf", @"2 to 3 Cloves" ,@"1 Cinnamon" ,@"1 Cardamom",@"1/2 tsp Saunf",@"4 Onions",@"3 Tomatoes",@"3 to 4 Green chillies",@"1 tbsp ginger-garlic paste Coriander and Mint leaves (a handful )", @"1 tsp Garam Masala powder" ,@"1/4 cup yogurt" ,@"2 tbsp fried Onions a pinch of food colour" ,@"5 Cashewnuts" ,@"10 Raisins oil to shallow fry salt to taste",nil];
    
   recipe1.description = [NSArray arrayWithObjects:@"Wash and clean the chicken pieces",@"Wash and soak basmati rice for 10 minutes. Drain and set aside.",@"Make a paste of red chilli powder, turmeric powder, 1 tbsp lemon juice and salt.",@"Marinate the chicken in this paste for 1 hour.",@"Heat oil in a fry pan. Shallow fry the marinated chicken and keep aside.",@"Heat ghee in the pan. Add bay leaf, cloves, cinnamon, saunf and cardamom.",@"Wait for them to crackle. Add one sliced onion. Saute till it is golden.",@"Add soaked rice and water.",@"Pressure cook till the rice is 3/4th done.",@"Now, heat ghee in the pan. Add the remaining onions, green chillies slit lengthwise, ginger garlic paste and stir well.",@"Add chopped tomato pieces and cook for a minute.",@"Add freshly chopped coriander and mint leaves. Next, add garam masala powder, yogurt and salt.",@"Allow the mixture to cook well.",@"Now, add the fried chicken pieces.",@"Cover and cook the chicken pieces in the gravy.",@"Take a heavy-bottomed pan.",@"Add this chicken along with gravy.",@"Add a layer of cooked basmati rice over it. Sprinkle chopped coriander leaves and lemon juice. ",@"Top it with another layer of rice.",@"Add fried onions, few drops of food colour, raisins and cashews.",@"Close the lid tightly and place the weight on top. Keep in simmer for 8 to 10 minutes. Remove from flame.",@"Once the pressure goes off, fluff the biryani gently.",@"Serve hot Thalassery Biryani with boiled eggs and raitha.",nil];
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Kappa Biriyani";
    recipe2.prepTime = @"30 min";
    recipe2.imageFile = @"kappa.jpg";
    recipe2.ingredients = [NSArray arrayWithObjects:@"Kappa (Tapioca) – 2 kg",@"Beef -1 kg",@"Garam masala -1 tsp",@"Meat masala – 4 tsp",@"Chilly Powder – 4 tsp",@"Turmeric Powder – 1 tsp",@"Pepper powder – 1 tsp",@"Coconut grated – 2 cup",@"Onion – 5 nos.",@"Garlic – 2 nos.",@"Green Chilly – 5 Nos.",@"Ginger -1 piece",@"Curry leaves – 2 stems",@"Coconut oil – 1 tsp",@"Salt to taste", nil];
    
    recipe2.description = [NSArray arrayWithObjects:@"1)Cook tapioca with salt, turmeric powder and water. Drain and keep it aside.",@"2)Marinate beef with all the other ingredients except oil for 30 minutes.",
        @"3)Cook it with required water. When it is done, add the cooked tapioca to it.",@"4)Stir it well.4)After removing from flame, pour the oil on the top and mix well.",nil];
    
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Masala Pappad";
    recipe3.prepTime = @"10 min";
    recipe3.imageFile = @"pappada.jpg";
    recipe3.ingredients = [NSArray arrayWithObjects:@"Pepper pappad – as required",@"Onion – 1 medium sized                     (sliced very thin)",@"Tomato – 1 medium sized (chopped very thin)",@"Coriander leaves – 1 handful"
        ,@"Ground nut – as required",@"Lemon juice – 1 lemon",@"Salt – To taste", nil];
    
    
    recipe3.description = [NSArray arrayWithObjects:@"Roast the urad dal papad (papadum) on the tawa by sightly pressing hot tawa with a cloth. Do this on both sides.",@"Once the urad papad is roasted take the papad in the plate and assemble all the ingredients one by one.",@"Apply butter on top of the roasted papad.",@"Sprinkle some red chili powder or smoked paprika powder.",@"Sprinkle some chaat masala.",@"Add finely chopped onions.",@"Sprinkle amchur powder (dried mango powder)",@"Add finely chopped & de seeded tomatoes.",@"Garnish it with chopped coriander leaves (cilantro).", nil];
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Ghee Rice";
    recipe4.prepTime = @"30 min";
    recipe4.imageFile = @"ghee.jpg";
    recipe4.ingredients = [NSArray arrayWithObjects:@"Basmati Rice – 2 cup",@"Onion – 3 ( sliced thin)",@"Cinnamon – 3 piece",@"Cardamom – 2",@"Cloves – 4",@"Crushed pepper – 3",@"Jathipathri (mace) – one small piece",@"Thakkolam ( star anise) – 1",@"Curry leaves – 1",@"Cashew nut – 50 gram",@"Kismis – 50 gram",@"Ginger ( cut into small pieces) – 3 spoon",@"Garlic ( cut into small pieces ) – 2 spoon",@"Ghee – 4 table spoon", nil];
    
    recipe4.description = [NSArray arrayWithObjects: @"Wash rice grains 2-3 times in water to remove excess starch. Soak them for 20 minutes.",@"Washing them will also prevent them from becoming sticky while cooking.",@"After 20 minutes, drain soaked rice.",@"Heat ghee in a pressure cooker (approx.3-5 liter capacity steel/aluminum cooker).",@"Add cinnamon, cloves, cardamom, black peppercorns and a piece of bay leaf and sauté for few seconds.",@"Add chopped onion and sauté until it turns light brown.",        @"Add cashew nuts, raisins, crushed ginger-garlic and chopped green chillies and sauté low flame for a minute.",@"Add drained rice in pressure cooker and stir-fry for a minute.", @"Add salt to taste and 2 cups water. Mix them properly and close the lid.",@"Pressure cook on low flame for 2 whistles.", @"Turn off the flame and let pressure come down naturally. It will take approx. 5-8 minutes to come down.",@"Open lid carefully and fluff rice with fork to separate rice grain.",@"Transfer it to serving bowl and serve.",nil];
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Kuttanadan Prawn Roast";
    recipe5.prepTime = @"30 min";
    recipe5.imageFile = @"prawn.jpg";
    recipe5.ingredients = [NSArray arrayWithObjects:@"Prawns 200 gm",@"Ginger Garlic Paste 1 tbsp",@"Chilli Powder. 1+ 2 spoon",@"Turmeric Powder 1 pinch",@"Garlic. 10 cloves",@"Onion. 2 nos",@"Tomato 1 no",@"Curry Leaves. 2 sprigs",@"Cooking oil. 3 tbsp",@"Salt. To taste", nil];
    
    
    recipe5.description = [NSArray arrayWithObjects: @"1)Fry the onions in oil until brown.",@"2)Add ginger , garlic , curry leaves and stir to mix well.",@"3)Add turmeric, chilli powder, coriander powder and garam masala and stir until roasted smell comes from masala. ",@"4)Add chopped tomatoes, mix until it becomes a paste.",@"5)Add green chillies and pepper and then the prawns.",@"6)Mix well and cook in low flame about 15-20 minute and then keep on stirring until the prawns are well coated with the masala and dry ",@"7)Garnish with coriander leaves.",nil];
    
    
    
    recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, nil];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"RecipeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    cell.textLabel.text = recipe.name;
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        RecipeDetailViewController *destViewController = segue.destinationViewController;
        destViewController.recipe = [recipes objectAtIndex:indexPath.row];
        
        // Hide bottom tab bar in the detail view
        //   destViewController.hidesBottomBarWhenPushed = YES;
    }
}


@end
