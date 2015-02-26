//
//  SecondViewController.h
//  MyLunch
//
//  Created by Giuseppe Acito on 26/02/15.
//  Copyright (c) 2015 CoreDumper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LunchDisplayController : UIViewController


@property (strong, atomic) IBOutlet UILabel* descrizione;
@property (strong, atomic) NSString* testoDescrizione;
@property (strong, atomic) NSArray* imagesInfo;


@property (weak, atomic) IBOutlet UIImageView* image1;

@property (weak, atomic) IBOutlet UIImageView* image2;

@property (weak, atomic) IBOutlet UIImageView* image3;

@property (weak, atomic) IBOutlet UIImageView* image4;

@end

