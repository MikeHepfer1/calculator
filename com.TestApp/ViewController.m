//
//  ViewController.m
//  com.TestApp
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Mike Hepfer. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController;


- (IBAction)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)getNumber:(id)sender;
{
    if(op)
    {
        SecoundNumber = SecoundNumber*10 + (float)[sender tag];
        answer.text = [NSString stringWithFormat:@"%3.2f", SecoundNumber];
        op = FALSE;
    }
    else
    {
        FirstNumber = FirstNumber*10 + (float)[sender tag];
        answer.text = [NSString stringWithFormat:@"%3.2f", FirstNumber];
    }
    
}
-(IBAction)doMath:(id)sender;
{
    switch(operation)
    {
        case 0:
            answer.text = [NSString stringWithFormat:@"%3.2f",(FirstNumber + SecoundNumber)];
            break;
        case 1:
            answer.text = [NSString stringWithFormat:@"%3.2f",(FirstNumber - SecoundNumber)];
            break;
        case 2:
            answer.text = [NSString stringWithFormat:@"%3.2f",(FirstNumber * SecoundNumber)];
            break;
        case 3:
            answer.text = [NSString stringWithFormat:@"%3.2f",(FirstNumber / SecoundNumber)];
            break;
    }
    FirstNumber = 0.0;
    SecoundNumber = 0.0;
}
-(IBAction)getOperation:(id)sender;
{
    operation = [sender tag];
    answer.text = [NSString stringWithFormat:@""];
    op = TRUE;
}
- (IBAction)clear:(id)sender
{
    answer.text = [NSString stringWithFormat:@""];
    FirstNumber = 0.0;
    SecoundNumber = 0.0;
}


@end
