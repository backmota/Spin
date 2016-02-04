//
//  MisPiscinasTVC.h
//  Spin
//
//  Created by José Juan Mota Torres on 01/02/16.
//  Copyright © 2016 José Juan Mota Torres. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MisPiscinasTVC : UITableViewController  <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *addButton;
@end
