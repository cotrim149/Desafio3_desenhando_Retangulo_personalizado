//
//  VCLViewController.h
//  Desafio_2_Retangulo_Personalizado
//
//  Created by Victor de Lima on 19/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCLViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtOriginX;
@property (weak, nonatomic) IBOutlet UITextField *txtOriginY;
@property (weak, nonatomic) IBOutlet UITextField *txtAltura;
@property (weak, nonatomic) IBOutlet UITextField *txtLargura;
@property (weak, nonatomic) UIColor *cor;


- (IBAction)desenhaImagem:(id)sender;
- (IBAction)getColor:(id)sender;
@end
