//
//  BasicMathViewController.h
//  BasicMath
//
//  Created by Kelley Lange on 4/4/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicMathViewController : UIViewController <UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *notification;


@property (weak, nonatomic) IBOutlet UILabel *topNum;

@property (weak, nonatomic) IBOutlet UILabel *botNum;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

-(int)getNum2;
-(IBAction)next;

@end

NSMutableArray * data;
