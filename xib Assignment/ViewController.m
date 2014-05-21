//
//  ViewController.m
//  xib Assignment
//
//  Created by Daniel Fairbanks on 5/21/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 40;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSMutableAttributedString *title = [[NSMutableAttributedString alloc] initWithString:@"Hi Brad. How are you?"];
    [title addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0,title.length/3)];
    [title addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(title.length/3 +1,title.length/3)];
    [title addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange((title.length/3)*2,title.length/3)];
    [title addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"AppleColorEmoji" size:12] range:NSMakeRange(0,title.length)];
    
    cell.titleLabel.attributedText = title;
    
    return cell;
    
}

@end
