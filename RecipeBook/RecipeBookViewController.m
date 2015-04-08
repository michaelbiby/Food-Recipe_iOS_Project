//
//  RecipeBookViewController.m
//  RecipeBook
//  Created by Bibzzz on 2015-04-07.
//  Copyright (c) 2015 Biby Michael. All rights reserved.
//
#import "RecipeBookViewController.h"
#import "RecipeDetailViewController.h"
#import "Recipe.h"

@interface RecipeBookViewController ()

@end

@implementation RecipeBookViewController {
    NSArray *recipes;
}

@synthesize tableView = _tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Fish Molee";
    recipe1.prepTime = @"30 min";
    recipe1.imageFile = @"fish_molee.jpg";
    recipe1.ingredients = [NSArray arrayWithObjects:@"½ kg preferably king fish",@"Onion 2 medium",@"Ginger & Garlic - 1 tablespoon each ( crushed )",@"Green chilli - 3 - 4",@"Small onion - 5-6",@"Cardamom - 4",@"Cloves - 4", @"Cinnamon - 1 medium stick",@"Tomato - 2-3",@"Thin Coconut milk - 1 cup",@"Medium Coconut milk - 1 cup",@"Thick Coconut milk - ½ cup",@"Salt, oil & curry leaves - accordingly",@"For Marination",@"Pepper powder - 1 teaspoon",@"Turmeric powder - ½ teaspoon",@"Lemon juice - ½teaspoon",@"Salt", nil];
    
    recipe1.description = [NSArray arrayWithObjects:@"Marinate the fish pieces with pepper powder, turmeric powder, salt & lemon juice. Keep it for half an hour.",@"Shallow fry the marinated fish for just 2-3 minutes.",@"Heat oil in a pan. Splutter cardamom,cinnamon & cloves.",@"Add crushed ginger garlic & green chillies. ",@"Add small & big onions. Once the onion becomes soft add thin coconut milk. Let it boil. ",@"Add the fried fish pieces & add salt.",@"When the gravy becomes little thick add medium coconut milk.",@"After that add tomatoes & curry leaves when the gravy becomes thick. ",@"Once the tomatoes is cooked add thick coconut milk & just heat it.",@"If you require a thicker gravy please add 2 teaspoons of cornflour to this.",@"Serve hot with Palappam or bread.",nil];
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Karimmen";
    recipe2.prepTime = @"20 min";
    recipe2.imageFile = @"karimeen.jpg";
    recipe2.ingredients = [NSArray arrayWithObjects:@"Karimeen(cleaned properly ) – 500 Gram",@"Garlic – 3"
     ,@"Ginger – 1 pcs",@"Pepper powder – 2tsp",@"Fish Masala – 1 tsp",@"Curry leaves – 1stem",@"Cashew nut – 10 nos(make paste)", nil];
    
    recipe2.description = [NSArray arrayWithObjects:@"Mix red chillies, turmeric powder, chopped green chillies, chopped ginger, chopped garlic, chopped curry leaves, chopped shallots, salt and lime juice to a coarse paste.",@"After cleaning the fish, apply a thick layer of the paste on the inside and on the outside.",@"Wrap the fish in the banana leaf and tie it with the stem.",@"Heat oil in pan and place the wrapped fish in it.",@"Cook each side for 5-6 minutes.",@"Serve hot with rice.",nil];
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Nadan Chicken Curry";
    recipe3.prepTime = @"20 min";
    recipe3.imageFile = @"nadan_chicken.jpg";
    recipe3.ingredients = [NSArray arrayWithObjects:@"Chicken – 1 kilo",@"Onion – 3 nos",@"Tomato – 1",@"Ginger / Garlic paste –1 ½ tsp",@"Coconut – 1 ½ cup",@"Pepper powder – 1 tsp",@"Coconut milm – 1 ½ cup",@"Green chilly – 3 nos",@"Chilly powder- 1 tsp",@"Turmeric powder – 1 tsp",@"Cinnamon / cardamom / gloves / fennel seeds – ½ tsp",@"Corriander leaves", nil];
    
    recipe3.description = [NSArray arrayWithObjects:@"Marinate the cleaned chicken pieces with the ingredients listed under marination. Keep it aside for 30 minutes.",@"Slice onion into very small pieces so that it would be easy for it to get mashed into the gravy while chicken gets cooked.",@"In a kadai, heat the oil. When oil is hot, add the sliced onions, curry leaves and salt. ",@"Adding salt, helps the onion to get cooked fast.",@"Saute the onions until it is lightly brown in color.",@"Add ginger and garlic, saute well. ",@"Once done, add chilly powder, coriander powder, garam masala, aniseed powder and saute. ",@"Add oil if needed. (This is a bit spicy curry. So adjust chilly powder according to your spice tolerance level.)",@"Grind the tomatoes. ",@"Once masalas are done, add tomato into it. ",@"Saute for around 5 minutes in medium flame, until tomatoes are cooked.", nil];
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Mambazha Pulissery";
    recipe4.prepTime = @"15 min";
    recipe4.imageFile = @"mam_pul.jpg";
    recipe4.ingredients = [NSArray arrayWithObjects:@"Ripen mango – 4 nos",@"Yogurt – 3 cups",@"Coconut (Grated ) – Half portion of a Coconut",@"Turmeric powder – 1tea spoon",@"Cumin seed – one pinch",@"Turmeric powder – ½ tea spoon",@"Curry leaves – 1 spring",@"Salt – To Taste",@"For Tempering",@"Coconut oil – 2 tea spoon",@"Fenugreek seeds – one pinch",@"Dry chillies – 2 nos",@"Curry leaves – 4 to 5 leaves", nil];
    
    recipe4.description = [NSArray arrayWithObjects:@"1.Cut the mango into pieces and boil in water along with turmeric, green chillies, chilly powder and salt.",@"2.Grind the coconut with the cumin seeds to a fine paste and add this to the boiling mango.",@"3.Bring this to a boil and take off the flame.",@"4.Blend the yoghurt to make it smooth and add this to the mixture.: See to it that the yoghurt does not split.",@"5.Heat oil in a pan.",@"6.Add mustard seeds and when they crackle, add red chillies and curry leaves.",@"7.Add the above seasoning to the above mango curry and mix well.",@"8.Sprinkle fenugreek powder and mix well again.:- Serve with rice.",nil];
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Semiya Payasam";
    recipe5.prepTime = @"15 min";
    recipe5.imageFile = @"semiya.jpg";
    recipe5.ingredients = [NSArray arrayWithObjects:@"¾ cup of semiya or vermicelli",@"½ cup of sugar (adjust to suit your taste)",@"⅛ tsp. green cardamom powder (elaichi) or few strands of saffron",@"500 ml milk",@"200 ml water (you could substitute this with milk, if you desire a thick payasam)",@"2 tsps.ghee",@"cashewnuts and raisins as needed", nil];
    
    recipe5.description = [NSArray arrayWithObjects: @"Heat a heavy bottom pan with ghee, add nuts and fry till golden, add raisins and sauté and set these aside",@"In the same pan, roast the semiya till slightly golden on a medium flame.",@"Pour in the milk and water.Bring the milk to a boil on a low flame. ",
        @"If you like to add sago/ sabudana/ saggubiyam you can add it now. ",@"Cook till the vermicelli is fully cooked. ",@"Keep stirring to prevent burning",@"Add cardamom powder and sugar and continue to cook for about 3 to 5 mins on a low flame. ",@"If using jaggery, switch off the stove immediately after you add it to the semiya payasam. ",@"cooking further will curdle.",@"Garnish with nuts and raisins",@"Serve warm or chilled",nil];
    
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"Papaya Salad";
    recipe6.prepTime = @"1 hour";
    recipe6.imageFile = @"pap_sal.jpg";
    recipe6.ingredients = [NSArray arrayWithObjects:@"5 Cherry Tomatoes",@"2 chili peppers",@"1 tablespoon dried shrimp",@"1 1/2 tablespoons fish sauce",@"1 clove garlic",@"6 green beans",@"2 cups shredded green papaya",@"3/4 lime",@"1 1/2 tablespoons Palm Sugar",@"2 tablespoons toasted peanuts",nil];
    
    recipe6.description = [NSArray arrayWithObjects:@"Put the fish sauce, lime juice, chiles, garlic and palm sugar in a blender or small food processor. Puree the mixture. You can also mince the chiles and grate the garlic and whisk the dressing together.",@"All images and text on this website are protected by copyright. Please do not post or republish this recipe or images without permission. If you want want to share this recipe just share the link rather than the whole recipe. ",@"Peel the papaya and slice it in half. Use a spoon to scoop out the white seeds and pith from the center.",@"Shred the papaya using a mandoline or a papaya shredder into a large bowl.",@"All images and text on this website are protected by copyright. Please do not post or republish this recipe or images without permission. If you want want to share this recipe just share the link rather than the whole recipe.",@"Add the green beans, dried shrimp, tomatoes, peanuts, and cilantro.",nil];
    
    
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"Green Peas Masala";
    recipe7.prepTime = @"45 min";
    recipe7.imageFile = @"green.jpg";
    recipe7.ingredients = [NSArray arrayWithObjects:@"1 cup - fresh or frozen peas",@"1 small - onion, chopped fine",@"1.5 tsp - chana/chole masala",@"1/2 tsp - Red Chilli powder",@"1/2 tsp - Sugar Kasoori methi, a generous pinch",@"1 tbsp - Coriander leaves Salt - to taste To saute and grind:",@"4 - tomatoes, medium sized",@"2 - Onions",@"1/4 inch piece - Ginger",@"5 pearls - Garlic",@"2 - Green chillies To grind (for the cashew paste):",@"5 - whole Cashew nut",@"2 tbsp - Curd To temper:",@"2 - Cloves",@"1/4 inch piece - Cinnamon",@"1/2 tsp - cumin",@"1 tbsp - Butter", @"2 tsp - oil", nil];
    
    recipe7.ingredients = [NSArray arrayWithObjects: @"Wash the dried green peas and soak them in water overnight. Drain the water and pressure cook them with 2 cups of water and salt. I cooked it for 6-7 whistles on high flame and keep it closed for 20 mins. Separate the cooked green peas and stock.",@"Meanwhile, heat oil in a pan. Add the chopped onions and cook till it turns golden brown. Add chopped ginger and garlic and green chilli. Let it cook for 2-3 mins. Add all the masala powders. Stir well and cook till the oil starts appearing, 3-4 mins. Add a tbsp or two of stock, just to bring the masala together. Switch off the gas and let the masala cool slightly. Grind the masala to a smooth paste, add more stock, if required, for grinding.",@"In the same pan (add more oil if required), cook the ground masala for a minute or two. Add curry leaves, salt and chopped tomato. Mix well. Add the remaining stock. Let it boil, add cooked green peas. Mix well. Add medium thick coconut milk, let it boil. Cover and cook for 5-7mins. Add chopped coriander leaves and remove from fire.",nil];
    
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"Adavi Mutton Stew";
    recipe8.prepTime = @"25 min";
    recipe8.imageFile = @"Mutton-stew.jpg";
    recipe8.ingredients = [NSArray arrayWithObjects:@"1/4 cup grapeseed oil",@"2 white onions, roughly diced",@"4 garlic cloves, chopped",@"4 carrots (washed, but not peeled)",@"1 head celery, roughly diced",@"6 sprig fresh rosemary, left whole",@"1 leg mutton (approximately 4 pounds sheep or lamb)",@"1 bottle red wine",@"1/4 cup tomato paste",@"4 cups vegetable stock or water",@"Salt",@"Freshly ground black pepper",@"6 Idaho potatoes, scrubbed and roughly diced",@"1/4 cup butter", nil];
    
    
    recipe8.description = [NSArray arrayWithObjects: @"Heat the fat in a heavy-bottomed saucepan and add the onions and stir-fry over medium heat, till transparent.",@"Increase the heat to high, add the meat and stir-fry for about 1 minute or till the meat pieces look opaque.",@"Lower the heat, add the flour and keep stirring till all the pieces are coated with flour.",@"Add the water, bring to a boil and then simmer till the meat is half done.",@"Add the beans, potatoes, carrots, salt, pepper and nutmeg.",
        @"Continue to simmer till the meat is tender.",@"The vegetables should remain bite like. Serve hot.",
  nil];
    
    Recipe *recipe9 = [Recipe new];
    recipe9.name = @"Vegetable Curry";
    recipe9.prepTime = @"30 min";
    recipe9.imageFile = @"vegetable_curry.jpg";
    recipe9.ingredients = [NSArray arrayWithObjects:@"1 tablespoon olive oil", @"1 onion, chopped", @"2 cloves garlic", @"2 1/2 tablespoons curry powder", @"2 quarts hot water", nil];

    
    recipe9.description = [NSArray arrayWithObjects:@"Heat the fat in a heavy-bottomed saucepan and add the onions and stir-fry over medium heat, till transparent.",@"Increase the heat to high, add the meat and stir-fry for about 1 minute or till the meat pieces look opaque.",@"Lower the heat, add the flour and keep stirring till all the pieces are coated with flour.",@"Add the water, bring to a boil and then simmer till the meat is half done.",@"Add the beans, potatoes, carrots, salt, pepper and nutmeg.",@"Continue to simmer till the meat is tender.",@"The vegetables should remain bite like. Serve hot." ,nil];
    
    
    recipes = [NSArray arrayWithObjects: recipe1,recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, nil];
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
