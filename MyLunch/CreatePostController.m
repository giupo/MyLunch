//
//  FirstViewController.m
//  MyLunch
//
//  Created by Giuseppe Acito on 26/02/15.
//  Copyright (c) 2015 CoreDumper. All rights reserved.
//

#import "CreatePostController.h"
#import "AddPhotosController.h"

@interface CreatePostController ()

@end

@implementation CreatePostController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Hello!");
    self.navigationController.navigationItem.title = @"Create Post";
}


-(IBAction) pushAddPhotosController {
    if(!self.imgPicker) {
        self.imgPicker = [[UIImagePickerController alloc] init];
    }
    self.imgPicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    
    // Displays saved pictures and movies, if both are available, from the
    // Camera Roll album.
    self.imgPicker.mediaTypes =
    [UIImagePickerController availableMediaTypesForSourceType:
     UIImagePickerControllerSourceTypeSavedPhotosAlbum];
    
    // Hides the controls for moving & scaling pictures, or for
    // trimming movies. To instead show the controls, use YES.
    self.imgPicker.allowsEditing = NO;
    
    self.imgPicker.delegate = self;
    [self presentViewController:self.imgPicker animated:YES completion:nil];
}


#pragma mark - UIImagePickerControllerDelegate

// This method is called when an image has been chosen from the library or taken from the camera.
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    NSLog(@"%@", image);
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
