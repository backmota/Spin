//
//  MenuTVC.m
//  Spin
//
//  Created by José Juan Mota Torres on 01/02/16.
//  Copyright © 2016 José Juan Mota Torres. All rights reserved.
//

#import "MenuTVC.h"
#import "SWRevealViewController.h"

@interface MenuTVC ()

@end

@implementation MenuTVC{
    NSArray *menuItems, *menuItemsId, *menuImagenes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    menuItems   = @[@"Menú", @"Mis Piscinas", @"Análisis", @"Donde Comprar", @"Conceptos"];
    menuItemsId = @[@"title", @"piscinasID", @"analisisID", @"comprarID", @"conceptosID"];
    menuImagenes = @[@"title", @"icon_piscina", @"icon_analisis", @"icon_comprar", @"icon_conceptos"];
    
    [self.view setBackgroundColor:[UIColor colorWithRed:0.36 green:0.65 blue:0.8 alpha:1]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     return [menuItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = [menuItemsId objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    
    [cell setBackgroundColor:[UIColor colorWithRed:0.36 green:0.65 blue:0.8 alpha:1]];
    cell.textLabel.textColor = [UIColor whiteColor];
    
    cell.textLabel.text = [menuItems objectAtIndex:indexPath.row];
    
    if (indexPath.row==0) {
        cell.userInteractionEnabled = FALSE;
    }
    
    if (indexPath.row>0) {
        cell.imageView.image = [UIImage imageNamed:[menuImagenes objectAtIndex:indexPath.row]];
    }
    
    return cell;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
