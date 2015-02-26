//
//  FirstViewController.m
//  MyLunch
//
//  Created by Giuseppe Acito on 26/02/15.
//  Copyright (c) 2015 CoreDumper. All rights reserved.
//

#import "CreatePostController.h"
#import "LunchDisplayController.h"
#import <ELCImagePickerController.h>

@interface CreatePostController ()
@end

@implementation CreatePostController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lunchDescription.placeholder = @"Add more infos here...";
    self.lunchDescription.placeholderTextColor = [UIColor lightGrayColor];
}


-(IBAction) pushAddPhotosController {
    self.elcPicker = [[ELCImagePickerController alloc] init];
    
    self.elcPicker.maximumImagesCount = 4; //Set the maximum number of images to select, defaults to 4
    //self.elcPicker.returnsOriginalImage = NO; //Only return the fullScreenImage, not the fullResolutionImage
    //self.elcPicker.returnsImage = YES; //Return UIimage if YES. If NO, only return asset location information
    //self.elcPicker.onOrder = YES; //For multiple image selection, display and return selected order of images
    self.elcPicker.imagePickerDelegate = self;
    [self presentViewController:self.elcPicker animated:YES completion:nil];
}


#pragma mark - UIImagePickerControllerDelegate

// This method is called when an image has been chosen from the library or taken from the camera.
- (void)elcImagePickerController:(ELCImagePickerController *)picker didFinishPickingMediaWithInfo:(NSArray *)info {
    [self dismissViewControllerAnimated:YES completion:NULL];
    
    NSString* displayID;
    if(info.count == 0) {
        displayID = @"LunchDisplay0";
    } else if (info.count <= 2) {
        displayID = @"LunchDisplay2";
    } else {
        displayID = @"LunchDisplay4";
    }
    
    LunchDisplayController* display = [self.storyboard instantiateViewControllerWithIdentifier:displayID];
    display.testoDescrizione = self.lunchDescription.text;
    display.imagesInfo = info;
    display.title = self.lunchName.text;
    [self.navigationController pushViewController:display animated:YES];
}

- (void)elcImagePickerControllerDidCancel:(ELCImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
