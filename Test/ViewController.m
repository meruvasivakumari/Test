//
//  ViewController.m
//  Test
//
//  Created by Meruva, Sivakumari (ASPL) on 22/11/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSMutableAttributedString *attrString;
@property (nonatomic) NSAttributedString *moreString;
@property (nonatomic) NSRange moreStringRange;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *URL = [NSURL URLWithString: @"http://google.com"];
    NSMutableAttributedString * str = [[NSMutableAttributedString alloc] initWithString:@"start "];
    [str addAttribute: NSLinkAttributeName value:URL range: NSMakeRange(0, str.length)];
    test.attributedText = str;
    test.editable = false;
    test.scrollEnabled = false;
    
    NSLog(@"Test blue ocean fail buid")
  }

- (BOOL) checkEvenNumber:(int)number {
    
    if (number % 2 == 0) {
        return true;
    }
    return false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
