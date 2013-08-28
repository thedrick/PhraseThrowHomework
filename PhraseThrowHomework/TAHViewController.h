//
//  TAHViewController.h
//  PhraseThrowHomework
//
//  Created by Tyler Hedrick on 8/27/13.
//  Copyright (c) 2013 hedrick.tyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TAHViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *wordLabel;
- (IBAction)nextWord:(UIButton *)sender;

@end
