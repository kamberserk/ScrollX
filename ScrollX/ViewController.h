//
//  ViewController.h
//  ScrollX
//
//  Created by kam on 24.11.2017.
//  Copyright © 2017 Young Object. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIPageControl *pageControl;
    
}
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

- (IBAction)skipInformation:(id)sender;

@end

