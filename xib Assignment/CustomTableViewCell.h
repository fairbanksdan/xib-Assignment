//
//  CustomTableViewCell.h
//  xib Assignment
//
//  Created by Daniel Fairbanks on 5/21/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageForCell;

@end
