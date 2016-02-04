//
//  DetailView.h
//  Spin
//
//  Created by José Juan Mota Torres on 01/02/16.
//  Copyright © 2016 José Juan Mota Torres. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailView : UIViewController
@property (nonatomic,retain) UILabel *lbl;
@property (nonatomic,retain) NSString *selectedRow;
-(void) printRowNumber:(int)num;
@end
