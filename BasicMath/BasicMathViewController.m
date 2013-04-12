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
@synthesize imageView1;
@synthesize imageView2;
@synthesize imageView3;
@synthesize imageView4;
@synthesize imageView5;
@synthesize imageView6;
@synthesize imageView7;
@synthesize imageView8;
@synthesize imageView9;
@synthesize imageView10;
@synthesize imageView11;
@synthesize imageView12;
@synthesize imageView13;
@synthesize imageView14;
@synthesize imageView15;
@synthesize imageView16;
@synthesize imageView17;
@synthesize imageView18;

- (IBAction)next
{
    self.clearImageNumbers;
    self.topNumValue = self.getNum2;
    self.botNumValue = self.getNum2;
    topNum.text = [NSString stringWithFormat:@"%i", self.topNumValue];
    botNum.text = [NSString stringWithFormat:@"%i", self.botNumValue];
    self.answer = 0;
    notification.text = @"";
    self.imageNumbers;
}

-(void)imageNumbers
{
    int x = self.topNumValue;
    int y = self.botNumValue;
    NSLog(@"x = %i", x);
    NSLog(@"y = %i", y);
    
    UIImage *image1 = [UIImage imageNamed:@"apple.png"];
    UIImage *image2 = [UIImage imageNamed:@"grapes.png"];
    
    if (x >= 1) imageView1.image = image1;
    if (x >= 2) imageView2.image = image1;
    if (x >= 3) imageView3.image = image1;
    if (x >= 4) imageView4.image = image1;
    if (x >= 5) imageView5.image = image1;
    if (x >= 6) imageView6.image = image1;
    if (x >= 7) imageView7.image = image1;
    if (x >= 8) imageView8.image = image1;
    if (x >= 9) imageView9.image = image1;
    
    if (y >= 1) imageView10.image = image2;
    if (y >= 2) imageView11.image = image2;
    if (y >= 3) imageView12.image = image2;
    if (y >= 4) imageView13.image = image2;
    if (y >= 5) imageView14.image = image2;
    if (y >= 6) imageView15.image = image2;
    if (y >= 7) imageView16.image = image2;
    if (y >= 8) imageView17.image = image2;
    if (y >= 9) imageView18.image = image2;
}

-(void)clearImageNumbers
{
    UIImage *imageBlank = [UIImage imageNamed:@""];
    
    imageView1.image = imageBlank;
    imageView2.image = imageBlank;
    imageView3.image = imageBlank;
    imageView4.image = imageBlank;
    imageView5.image = imageBlank;
    imageView6.image = imageBlank;
    imageView7.image = imageBlank;
    imageView8.image = imageBlank;
    imageView9.image = imageBlank;
    imageView10.image = imageBlank;
    imageView11.image = imageBlank;
    imageView12.image = imageBlank;
    imageView13.image = imageBlank;
    imageView14.image = imageBlank;
    imageView15.image = imageBlank;
    imageView16.image = imageBlank;
    imageView17.image = imageBlank;
    imageView18.image = imageBlank;

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
