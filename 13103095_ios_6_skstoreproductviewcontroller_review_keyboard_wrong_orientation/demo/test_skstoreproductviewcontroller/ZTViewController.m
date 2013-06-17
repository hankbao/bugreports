//
//  ZTViewController.m
//  test_skstoreproductviewcontroller
//
//  Created by Hank Bao on 13-1-29.
//  Copyright (c) 2013 HankBao. All rights reserved.
//

#import "ZTViewController.h"

@implementation ZTViewController

- (IBAction)showStoreProduct:(id)sender
{
    SKStoreProductViewController *ratingVC = [[SKStoreProductViewController alloc] initWithNibName:nil bundle:nil];
    ratingVC.delegate = self;

    [_indicator startAnimating];

    NSString * const kAppID = @"547156276";
    NSDictionary *parameters = @{ SKStoreProductParameterITunesItemIdentifier : kAppID };
    [ratingVC loadProductWithParameters:parameters
                        completionBlock:^(BOOL result, NSError *error) {
                            [_indicator stopAnimating];
                            if (result) {
                                NSLog(@"%s: load product view succeeded.", __PRETTY_FUNCTION__);
                                [self presentViewController:ratingVC animated:YES completion:NULL];
                            } else {
                                NSLog(@"%s: load product view failed (%@)", __PRETTY_FUNCTION__, (error ? [error localizedDescription] : @"unknown"));
                            }
                        }];
}

#pragma mark - SKStoreProductViewControllerDelegate
- (void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController
{
    [viewController.presentingViewController dismissViewControllerAnimated:YES completion:NULL];
}

@end
