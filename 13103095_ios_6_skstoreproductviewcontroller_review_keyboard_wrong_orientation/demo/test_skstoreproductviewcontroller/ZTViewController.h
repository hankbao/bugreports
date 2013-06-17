//
//  ZTViewController.h
//  test_skstoreproductviewcontroller
//
//  Created by Hank Bao on 13-1-29.
//  Copyright (c) 2013 HankBao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>

@interface ZTViewController : UIViewController <SKStoreProductViewControllerDelegate>

@property (nonatomic, weak) IBOutlet UIActivityIndicatorView *indicator;

- (IBAction)showStoreProduct:(id)sender;

@end
