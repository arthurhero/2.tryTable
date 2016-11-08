//
//  ViewController.m
//  TryTable
//
//  Created by Ziwen Chen on 11/7/16.
//  Copyright © 2016 Ziwen Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSArray *matsuno;
    NSArray *pic;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    matsuno = [NSArray arrayWithObjects:@"oso",@"kara",@"choro",@"ichi",@"jyushi",@"todo", nil];
    pic = [NSArray arrayWithObjects:[UIImage imageNamed:@"sokudo.png"],
                                    [UIImage imageNamed:@"suiriku.jpeg"],
                                    [UIImage imageNamed:@"choro.jpeg"],
                                    [UIImage imageNamed:@"nenjyu.jpeg"],
                                    [UIImage imageNamed:@"wakaba.jpeg"],
                                    [UIImage imageNamed:@"todo.jpeg"],nil];
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [matsuno count];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *tryTableIdentifier = @"TryTableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: tryTableIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tryTableIdentifier];
        
    }
    
    cell.textLabel.text = [matsuno objectAtIndex:indexPath.row];
    cell.imageView.image = [pic objectAtIndex:indexPath.row];
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
