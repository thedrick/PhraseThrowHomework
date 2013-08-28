//
//  TAHViewController.m
//  PhraseThrowHomework
//
//  Created by Tyler Hedrick on 8/27/13.
//  Copyright (c) 2013 hedrick.tyler. All rights reserved.
//

#import "TAHViewController.h"

@interface TAHViewController ()
@property (nonatomic, strong) NSArray *wordList;
@end

@implementation TAHViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"nounlist"
                                                     ofType:@".txt"];
    NSString *words = [NSString stringWithContentsOfFile:path
                                                encoding:NSUTF8StringEncoding
                                                   error:NULL];
    self.wordList = [words componentsSeparatedByString:@"\n"];
  }
  return self;
}

- (IBAction)nextWord:(UIButton *)sender
{
  NSUInteger index = arc4random() % self.wordList.count;
  NSString *word = [self.wordList objectAtIndex:index];
  self.wordLabel.text = word;
}

@end
