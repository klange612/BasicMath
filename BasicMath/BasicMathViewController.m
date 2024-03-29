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
@property (nonatomic, weak) id operationCurrentState;

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
@synthesize operationsLabel;
@synthesize operationCurrentState;

-(void)setup
{
    [self next];
}

- (IBAction)next
{
    [self clearImageNumbers];
//    if (operationCurrentState == nil) [NSString operationCurrentState stringWithFormat:@"+"];
    notification.text = @"";
    [self getNum2];
    [self imageNumbers];
}

-(int)getNum2
{
    operationCurrentState = operationsLabel.text;
    
    if ([operationCurrentState isEqualToString:@"-"]) {
        self.topNumValue = (arc4random() % 9)+1;
        self.botNumValue = (arc4random() % 9)+1;
        while (self.botNumValue > self.topNumValue) {
            self.topNumValue = (arc4random() % 9)+1;
            self.botNumValue = (arc4random() % 9)+1;
        }
    } else {
        self.topNumValue = (arc4random() % 9)+1;
        self.botNumValue = (arc4random() % 9)+1;        
    }
    topNum.text = [NSString stringWithFormat:@"%i", self.topNumValue];
    botNum.text = [NSString stringWithFormat:@"%i", self.botNumValue];
    
    return 1;
}


- (IBAction)changeToAddition:(UIBarButtonItem *)sender
{
    operationsLabel.text = [NSString stringWithFormat:@"+"];
}


- (IBAction)changeToSubtraction:(UIBarButtonItem *)sender
{
    operationsLabel.text = [NSString stringWithFormat:@"-"];
    if (self.botNumValue > self.topNumValue) {
        [self getNum2];
    }
}

-(void)imageNumbers
{
    int x = self.topNumValue;
    int y = self.botNumValue;
    NSLog(@"x = %i", x);
    NSLog(@"y = %i", y);
    
    UIImage *image1 = [UIImage imageNamed:@"apple2.png"];
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

-(void)delayToNext
{
    [self performSelector:@selector(next) withObject:self afterDelay:4.0 ];
}

- (IBAction)checkAnswer
{
    operationCurrentState = operationsLabel.text;
    NSLog(@"self.answer = %i", self.answer);
    
    if ([operationCurrentState isEqualToString:@"+"]) {
        if (self.answer == (self.topNumValue + self.botNumValue)) {
            notification.textColor = [UIColor greenColor];
            notification.text = @"Correct";
            if (self.answer >= 0) [self playCheers];
            [self delayToNext];

        } else {
            notification.textColor = [UIColor redColor];
            notification.text = @"Try again";
        }
    } else if ([operationCurrentState isEqualToString:@"-"]) {
        if (self.answer == (self.topNumValue - self.botNumValue)) {
            notification.textColor = [UIColor greenColor];
            notification.text = @"Correct";
            if (self.answer >= 0) [self playCheers];
            [self delayToNext];

        } else {
            notification.textColor = [UIColor redColor];
            notification.text = @"Try again";
        }
        
    }
}

-(void)playCheers
{
    SystemSoundID cheers;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"KidsCheering" ofType:@"wav"]], &cheers);
    AudioServicesPlaySystemSound(cheers);
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
    notification.textColor = [UIColor whiteColor];
    notification.text = [NSString stringWithFormat:@"%@", [data objectAtIndex:row]];
    NSLog(@"Value: %@. Index of selected color: %i", [data objectAtIndex:row], row);
    self.answer = [[data objectAtIndex:row] intValue];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Green-blackboard-Back-to-school_640x960.jpg"]]];
    [self next];
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
