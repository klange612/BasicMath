//
//  BasicMathViewController.h
//  BasicMath
//
//  Created by Kelley Lange on 4/4/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface BasicMathViewController : UIViewController <UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;

@property (weak, nonatomic) IBOutlet UIImageView *imageView2;

@property (weak, nonatomic) IBOutlet UIImageView * imageView3;

@property (weak, nonatomic) IBOutlet UIImageView * imageView4;

@property (weak, nonatomic) IBOutlet UIImageView * imageView5;

@property (weak, nonatomic) IBOutlet UIImageView * imageView6;

@property (weak, nonatomic) IBOutlet UIImageView * imageView7;

@property (weak, nonatomic) IBOutlet UIImageView * imageView8;

@property (weak, nonatomic) IBOutlet UIImageView * imageView9;

@property (weak, nonatomic) IBOutlet UIImageView * imageView10;

@property (weak, nonatomic) IBOutlet UIImageView * imageView11;

@property (weak, nonatomic) IBOutlet UIImageView * imageView12;

@property (weak, nonatomic) IBOutlet UIImageView * imageView13;

@property (weak, nonatomic) IBOutlet UIImageView * imageView14;

@property (weak, nonatomic) IBOutlet UIImageView * imageView15;

@property (weak, nonatomic) IBOutlet UIImageView * imageView16;

@property (weak, nonatomic) IBOutlet UIImageView * imageView17;

@property (weak, nonatomic) IBOutlet UIImageView * imageView18;




@property (weak, nonatomic) IBOutlet UILabel *operationsLabel;

@property (weak, nonatomic) IBOutlet UILabel *notification;

@property (weak, nonatomic) IBOutlet UILabel *topNum;

@property (weak, nonatomic) IBOutlet UILabel *botNum;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

-(int)getNum2;
-(IBAction)next;

@end

NSMutableArray * data;
