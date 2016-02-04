//
//  ConceptosTVC.m
//  Spin
//
//  Created by José Juan Mota Torres on 01/02/16.
//  Copyright © 2016 José Juan Mota Torres. All rights reserved.
//

#import "ConceptosTVC.h"
#import "DetailView.h"
#import "SWRevealViewController.h"

@interface ConceptosTVC ()

@end

@implementation ConceptosTVC {
    NSArray *conceptosLista;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    conceptosLista = [[NSArray alloc] initWithObjects:@"Item1",@"Item2",@"Item3",nil];
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }


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
     return [conceptosLista count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //Step 1:Check whether if we can reuse a cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    //If there are no new cells to reuse,create a new one
    if(cell ==  nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"cell"];
        UIView *v = [[UIView alloc] init];
        v.backgroundColor = [UIColor redColor];
        cell.selectedBackgroundView = v;
        //changing the radius of the corners
        //cell.layer.cornerRadius = 10;
        
    }
    
    //Set the image in the row
    //cell.imageView.image = [images objectAtIndex:indexPath.row];
    
    //Step 3: Set the cell text content
    cell.textLabel.text = [conceptosLista objectAtIndex:indexPath.row];
    
    //Step 4: Return the row
    return cell;
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    //cell.backgroundColor = [ UIColor greenColor];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    DetailView *secondViewController = [[DetailView alloc] init];
    NSString *selectedRow = [conceptosLista objectAtIndex:indexPath.row+1];
    
    secondViewController.selectedRow = selectedRow;
    
    //[self.navigationController pushViewController:secondViewController animated:YES];
    [self presentViewController:secondViewController animated:YES completion:NULL];
    
    //this is the change you should do.
    [secondViewController printRowNumber:indexPath.row+1];
    
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
