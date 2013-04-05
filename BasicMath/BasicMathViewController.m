//
//  BasicMathViewController.m
//  BasicMath
//
//  Created by Kelley Lange on 4/4/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import "BasicMathViewController.h"
#import "BMNumber.h"

@interface BasicMathViewController ()

@property (nonatomic, strong) BMNumber *getRand;
@property (nonatomic) int topNumValue;
@property (nonatomic) int botNumValue;
@property (nonatomic) int answer;

@end

@implementation BasicMathViewController

@synthesize notification;
@synthesize topNum;
@synthesize botNum;
@synthesize getRand = _getRand;
@synthesize pickerView;


- (IBAction)next
{
    self.topNumValue = self.getNum2;
    self.botNumValue = self.getNum2;
    topNum.text = [NSString stringWithFormat:@"%i", self.topNumValue];
    botNum.text = [NSString stringWithFormat:@"%i", self.botNumValue];
    self.answer = 0;
    notification.text = @"";
}

- (IBAction)checkAnswer
{
//    int toCheck = [self.answer.stringValue intValue];
    NSLog(@"self.answer = %i", self.answer);
    if (self.answer == (self.topNumValue + self.botNumValue)) {
        notification.textColor = [UIColor greenColor];
        notification.text = @"Correct";
    } else {
        notification.textColor = [UIColor redColor];
        notification.text = @"Try again";
    }
}

-(int)getNum2
{
    int ranNum = (arc4random() % 9)+1;
    return ranNum;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [data count];
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [data objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)thePickerView  didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    notification.textColor = [UIColor blueColor];
    notification.text = [NSString stringWithFormat:@"%@", [data objectAtIndex:row]];
    NSLog(@"Value: %@. Index of selected color: %i", [data objectAtIndex:row], row);
    self.answer = [[data objectAtIndex:row] intValue];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.next;
    data=[[NSMutableArray alloc] init];
    for (int i=0; i<20; i++) {
        [data addObject:[NSString stringWithFormat:@"%d", i]];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
