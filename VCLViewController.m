//
//  VCLViewController.m
//  Desafio_2_Retangulo_Personalizado
//
//  Created by Victor de Lima on 19/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "VCLViewController.h"
#import "VCLDesenho.h"
#import "VCLView.h"
@interface VCLViewController ()

@end

@implementation VCLViewController

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

- (IBAction)desenhaImagem:(id)sender{
    float originX = [self.txtOriginX.text floatValue];
    float originY = [self.txtOriginY.text floatValue];
    float largura = [self.txtLargura.text floatValue];
    float altura = [self.txtAltura.text floatValue];
    
    VCLDesenho *segundaTela = [[VCLDesenho alloc] init];
    
    CGRect retangulo = CGRectMake(originX, originY, largura, altura);
    
    VCLView *viewDesenho = [[VCLView alloc]initWithFrame:retangulo];
    viewDesenho.backgroundColor = self.cor;

    [segundaTela.view addSubview:viewDesenho];

    [self presentViewController:segundaTela animated:YES completion:nil];

    
}

-(IBAction)getColor:(id)sender{
    UISegmentedControl *segmentedCores = (UISegmentedControl *)sender;
    UIColor *cor = [[UIColor alloc] init];
    
    switch (segmentedCores.selectedSegmentIndex) {
        case 0:
            cor = [UIColor yellowColor];
            break;
        case 1:
            cor = [UIColor blueColor];
            break;
        case 2:
            cor = [UIColor blackColor];
            break;
        case 3:
            cor = [UIColor greenColor];
            break;
        case 4:
            cor = [UIColor redColor];
            break;
        default:
            break;
    }
    
    self.cor = cor;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.txtOriginX resignFirstResponder];
    [self.txtOriginY resignFirstResponder];
    [self.txtAltura resignFirstResponder];
    [self.txtLargura resignFirstResponder];
}
@end
