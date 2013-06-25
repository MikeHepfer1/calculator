//
//  ViewController.h
//  com.TestApp
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Mike Hepfer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    float FirstNumber;
    float SecoundNumber;
    int operation;
    BOOL op;
    IBOutlet UITextField *answer;
    
}

-(IBAction)getNumber:(id)sender;
-(IBAction)doMath:(id)sender;
-(IBAction)getOperation:(id)sender;

@end
