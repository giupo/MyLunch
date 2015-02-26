//
//  FirstViewController.h
//  MyLunch
//
//  Created by Giuseppe Acito on 26/02/15.
//  Copyright (c) 2015 CoreDumper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ELCImagePickerController.h>
#import <SZTextView.h>
@interface CreatePostController : UIViewController<ELCImagePickerControllerDelegate ,UINavigationControllerDelegate>


@property (strong, nonatomic) NSArray* images;

@property (strong, nonatomic) IBOutlet UITextField *lunchName;
@property (strong, nonatomic) IBOutlet SZTextView *lunchDescription;
@property (strong, nonatomic) ELCImagePickerController *elcPicker;
-(IBAction) pushAddPhotosController;
@end

