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

    if(!self.views){
        self.views = [[NSMutableArray alloc] init];
    }
    
    if(self.switchTipoImagem.isOn){
        UIBezierPath *imagem = [UIBezierPath bezierPathWithOvalInRect:retangulo];
        UIGraphicsBeginImageContext(self.view.bounds.size);
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetStrokeColorWithColor(context, self.cor.CGColor);
        CGContextSetFillColorWithColor(context, self.cor.CGColor);
        [imagem fill];
        [imagem stroke];
        
        UIImage *imagemContexto = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        
        UIImageView *imagemView = [[UIImageView alloc] initWithImage:imagemContexto];
        [self.views addObject:imagemView];
        
    }else{
        
        VCLView *viewDesenho = [[VCLView alloc]initWithFrame:retangulo];
        viewDesenho.backgroundColor = self.cor;
        [self.views addObject:viewDesenho];
    }
    
    
    for(int i=0; i< [self.views count]; i++){
        [segundaTela.view addSubview:[self.views objectAtIndex:i]];
    }
    

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
