//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by Kadirt on 9/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SimpleTableViewController.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController
{
    NSArray *tableData;
    NSArray * tablePicture;
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     return  [tableData count];
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString * TableIdentifier=@"identifier";
    UITableViewCell * cell=[tableView dequeueReusableCellWithIdentifier:TableIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableIdentifier ];
        
    }
     cell.textLabel.text=[tableData objectAtIndex:indexPath.row];
     //cell.imageView.image=[UIImage imageNamed:@"creme_brelee.jpeg"];
    NSString * image= [tablePicture objectAtIndex:indexPath.row];
    cell.imageView.image=[UIImage imageNamed:image];
    return cell;
    
    
    
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    tableData=[NSArray arrayWithObjects:@"Turkey",@"German",@"Romania",@"France", nil];
    tablePicture=[NSArray arrayWithObjects:@"creme_brelee.jpeg",@"creme_brelee.jpeg",@"creme_brelee.jpeg",@"creme_brelee.jpeg", nil];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


@end 
