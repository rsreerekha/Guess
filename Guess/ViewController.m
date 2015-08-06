//
//  ViewController.m
//  Guess
//
//  Created by testadmin on 5/28/15.
//  Copyright (c) 2015 testadmin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic)IBOutlet UILabel *theNumber;
@property (nonatomic)NSInteger count;
@property(nonatomic)NSInteger theHiddenNumber;
@property(nonatomic)NSInteger numberOfRightGuesses;
@property (weak, nonatomic) IBOutlet UIImageView *secondCatImageView;
@property (weak, nonatomic) IBOutlet UIImageView *thirdCatImageView;
@property (weak, nonatomic) IBOutlet UIImageView *winWinHappyCat;

@property (weak, nonatomic) IBOutlet UILabel *congratulationLabel;

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;

@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button7;
@property (weak, nonatomic) IBOutlet UIButton *button8;

@property (weak, nonatomic) IBOutlet UIButton *button9;


@property (weak, nonatomic) IBOutlet UIButton *button6;

@property (weak, nonatomic) IBOutlet UIButton *playAgain;
@property (weak, nonatomic) IBOutlet UIImageView *imageInsteadOfNumber5;


-(void)checking:(NSInteger)buttonValue;
-(void)numberofImagesDisplayed:(NSInteger)rightGuess;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.view.opaque = NO;
//    self.backGroundView.image =[UIImage imageNamed:@"GuessCat"];
//    self.backGroundView.alpha = 0.55;
//    self.backGroundView.backgroundColor = [UIColor colorWithRed:1.0 green:0.9 blue:0.9 alpha:0.55];
//
    
    self.count= 0;
    [self.playAgain setHidden:YES];
    
    self.numberOfRightGuesses = 0;
    [self playAgain:self.playAgain];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)inputButton1:(id)sender {
    
   UIButton *btn = (UIButton *)sender;
    [self checking:btn.tag];
    
    //[self.button1 setHidden:YES];
    //self.button1.enabled = NO;

}

- (IBAction)inputButton2:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    [self checking:btn.tag];
     // self.button2.enabled = NO;   // [self.button2 setHidden:YES];
    
}

- (IBAction)inputButton3:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    [self checking:btn.tag];
  //self.button3.enabled = NO;
    //[self.button3 setHidden:YES];
}

- (IBAction)inputButton4:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    [self checking:btn.tag];
  //self.button4.enabled = NO;
   // [self.button4 setHidden:YES];
}

- (IBAction)inputButton6:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    [self checking:btn.tag];
  //self.button6.enabled = NO;
   // [self.button6 setHidden:YES];
}
- (IBAction)inputButton7:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    [self checking:btn.tag];
  //self.button7.enabled = NO;
    //[self.button7 setHidden:YES];
}

- (IBAction)inputButton8:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    [self checking:btn.tag];
  //self.button8.enabled = NO;
    //[self.button8 setHidden:YES];
}
- (IBAction)inputButton9:(id)sender {
    UIButton *btn = (UIButton *)sender;
     [self checking:btn.tag];
      //self.button9.enabled = NO;
    //[self.button9 setHidden:YES];
}


- (IBAction)playAgain:(id)sender {
    
    
    [self.button1 setHidden:NO];
    [self.button2 setHidden:NO];
    [self.button3 setHidden:NO];
    [self.button4 setHidden:NO];
    
    [self.button6 setHidden:NO];
    [self.button7 setHidden:NO];
    [self.button8 setHidden:NO];
    [self.button9 setHidden:NO];
    [self.theNumber setHidden:NO];
    [self.imageInsteadOfNumber5 setHidden:NO];
    [self.congratulationLabel setHidden:YES];
    [self.winWinHappyCat setHidden:YES];
    
    [self.playAgain setHidden:YES];
    self.theNumber.text = @"Guess the Number?";
    self.count = 0;

  int randomNumber = arc4random_uniform(9) + 1;
    //( randomNumber== 5)
   // {
        
   // }

    //int randomNumber = arc4random()%5;
    self.theHiddenNumber = randomNumber;
    
    NSLog(@"%d",randomNumber);
    
    }



-(void) checking:(NSInteger) buttonValue{

   self.count++;
    //NSInteger i = self.count;
    //self.count = i;

//for (NSInteger i= self.count; i<=3; i++)
//{
   // if (buttonValue == [self.theNumber.text integerValue])
    if (buttonValue == self.theHiddenNumber)
        
    {
        
        //[self.imageView setHidden:NO];
        
       self.numberOfRightGuesses++;
        
        [self  numberofImagesDisplayed:self.numberOfRightGuesses ];
        
        [self.playAgain setHidden:NO];
        [self.theNumber setHidden:NO];
        
        self.theNumber.text = @"right guess!";
        
    }


    else if (self.count<=3)
        {
        
            self.theNumber.text = @"try again!";
        }
    
    else
        {
            //self.theNumber.text = [NSString stringWithFormat:@"%ld",self.theHiddenNumber];
            
        [self.button1 setHidden:YES];
         [self.button2 setHidden:YES];
         [self.button3 setHidden:YES];
         [self.button4 setHidden:YES];
         
         [self.button6 setHidden:YES];
         [self.button7 setHidden:YES];
         [self.button8 setHidden:YES];
         [self.button9 setHidden:YES];
            
        [self.imageInsteadOfNumber5 setHidden:YES];
         
         [self.playAgain setHidden:NO];
            [self.theNumber setHidden:YES];
            
            //self.numberOfRightGuesses = 0;
        
        }
    
    
            
    }

-(void)numberofImagesDisplayed:(NSInteger) rightGuess{
    
    switch (rightGuess)
    {
    case 1:
        [self.imageView setHidden:NO];
        
        break;
    case 2:
        [self.imageView setHidden:NO];
        [self.secondCatImageView setHidden:NO];
        break;
    case 3:
        
        [self.imageView setHidden:NO];
        [self.secondCatImageView setHidden:NO];
        [self.thirdCatImageView setHidden:NO];
        break;
            
    case 4:
            [self.winWinHappyCat setHidden:NO];
            [self.congratulationLabel setHidden:NO];
            
            
            [self.imageView setHidden:YES];
            
            [self.secondCatImageView setHidden:YES];
           [self.thirdCatImageView setHidden:YES];
            self.numberOfRightGuesses = 0;
            break;
    
    }
    
    

}
    



@end



