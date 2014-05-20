//
//  VCLDesenho.m
//  Desafio_2_Retangulo_Personalizado
//
//  Created by Victor de Lima on 19/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "VCLDesenho.h"

@interface VCLDesenho ()

@end

@implementation VCLDesenho

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)clickVoltar:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];    
}

@end
