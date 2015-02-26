//
//  FirstViewController.h
//  MyLunch
//
//  Created by Giuseppe Acito on 26/02/15.
//  Copyright (c) 2015 CoreDumper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreatePostController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *lunchName;
@property (strong, nonatomic) IBOutlet UITextView *lunchDescription;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *next;
@property (strong, nonatomic) IBOutlet UIImagePickerController *imgPicker;
-(IBAction) pushAddPhotosController;
@end

