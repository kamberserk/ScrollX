//
//  ViewController.m
//  ScrollX
//
//  Created by kam on 24.11.2017.
//  Copyright © 2017 Young Object. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize scrollView,pageControl;

- (void)viewDidLoad {
  
    [super viewDidLoad];
    

    
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"HasLaunchedOnceAndSkipped"])
    {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"infoImagesList" ofType:@"plist"];
        NSMutableArray *imagesArray = [[NSMutableArray alloc] initWithContentsOfFile:path];
        
        
        [pageControl setNumberOfPages:[imagesArray count]];
        
        int originalWidth = scrollView.frame.size.width;
        
        scrollView.contentSize = CGSizeMake(originalWidth* [imagesArray count], scrollView.frame.size.height);
        
        
        for (int i = 0;i < [imagesArray count];++i)
        {
        
            if([[imagesArray objectAtIndex:i] isKindOfClass:[NSArray class]]){
                NSMutableArray *images = [[NSMutableArray alloc] init];
                
                for (int j=0;j<[[imagesArray objectAtIndex:i]count];++j){
                    
                    [images addObject:[UIImage imageNamed:[[imagesArray objectAtIndex:i] objectAtIndex: j]]];
                    
                    UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, originalWidth, 193)];
                    animationImageView.animationImages = images;
                    animationImageView.animationDuration = 0.5;
                    [animationImageView setFrame:CGRectMake(i*originalWidth, 0, originalWidth, scrollView.frame.size.height)];
                    
                    [scrollView addSubview:animationImageView];
                    [animationImageView startAnimating];
      
                    }
                }
            else{
                    //NOT AN ARRAY SO IT IS JUST A PICTURE ITSELF
                
                
                
                
                        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[imagesArray objectAtIndex:i]]];
                        [imageView setFrame:CGRectMake(i*originalWidth, 0, originalWidth, scrollView.frame.size.height)];
                
                        [scrollView addSubview:imageView];
                
                
                
                
            }
            
            
        }
        
    }
    
}
    
    
   



- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat pageWidth = self.scrollView.frame.size.width;
    float fractionalPage = self.scrollView.contentOffset.x / pageWidth;
    NSInteger page = lround(fractionalPage);
    self.pageControl.currentPage = page;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)skipInformation:(id)sender {
    
  /*
        if (![[NSUserDefaults standardUserDefaults] boolForKey:@"HasLaunchedOnceAndSkipped"])
        {
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"HasLaunchedOnceAndSkipped"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            //BURDA BASKA BIR KISMA GONDEREBILIRIZ....
            
        }
    */
}
@end
