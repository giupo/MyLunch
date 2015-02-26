//
//  SecondViewController.m
//  MyLunch
//
//  Created by Giuseppe Acito on 26/02/15.
//  Copyright (c) 2015 CoreDumper. All rights reserved.
//

#import "LunchDisplayController.h"


@interface LunchDisplayController () {
    NSMutableArray* imageArray;
}

@end

@implementation LunchDisplayController

@synthesize image1 = _image1;
@synthesize image2 = _image2;
@synthesize image3 = _image3;
@synthesize image4 = _image4;
@synthesize testoDescrizione = _testoDescrizione;
@synthesize descrizione = _descrizione;
@synthesize imagesInfo = _imagesInfo;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.descrizione.text = self.testoDescrizione;
    imageArray = [[NSMutableArray alloc] initWithCapacity:_imagesInfo.count];
    if(_image1) {
        [imageArray addObject:_image1];
    }
    if(_image2) {
        [imageArray addObject:_image2];
    }
    if(_image3) {
        [imageArray addObject:_image3];
    }
    if(_image4) {
        [imageArray addObject:_image4];
    }
    
    NSLog(@"%@", self.imagesInfo);
    

    for(NSUInteger i = 0; i< _imagesInfo.count; ++i) {
        UIImageView* iv = [imageArray objectAtIndex:i];
        NSDictionary* info = [_imagesInfo objectAtIndex:i];
        iv.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    }
}

- (void) viewDidLayoutSubviews {
    [self.descrizione sizeToFit];
}

@end
