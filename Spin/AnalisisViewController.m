//
//  AnalisisViewController.m
//  Spin
//
//  Created by José Juan Mota Torres on 01/02/16.
//  Copyright © 2016 José Juan Mota Torres. All rights reserved.
//

#import "AnalisisViewController.h"
#import "SWRevealViewController.h"

@interface AnalisisViewController ()

@end

@implementation AnalisisViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SWRevealViewController *revealViewController = self.revealViewController;
    
    if ( revealViewController ) {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
    [_indiceSaturacionLabel setText:@"Indice de saturacion: 500"];
    [_aguaen setText:@"Agua Corrosiva"];
    
    //custom button
    [_botonSiguiente setBackgroundColor:[UIColor whiteColor]];
    [_botonSiguiente.layer setShadowColor:[UIColor blackColor].CGColor];
    [_botonSiguiente.layer setShadowOffset:CGSizeMake(0.0f, -1.0f)];
    [_botonSiguiente.layer setBorderColor:[UIColor whiteColor].CGColor];
    [_botonSiguiente.layer setBorderWidth:5.0f];
    [_botonSiguiente.layer setCornerRadius:10.0f];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getValueSlide:(id)sender {

    UISlider *yourSlide = (UISlider *) sender;
    float value = yourSlide.value;
    
    if (yourSlide.tag == 0) {
        _valorPhLabel.text = [NSString stringWithFormat:@"%.1f",value];
    }
    if (yourSlide.tag == 1) {
        _valorAlcalinidadLabel.text = [NSString stringWithFormat:@"%.1f ppm",value];
    }
    if (yourSlide.tag == 2) {
        _durezaLabel.text = [NSString stringWithFormat:@"%.1f ppm",value];
    }
    if (yourSlide.tag == 3) {
        _valorTempLabel.text = [NSString stringWithFormat:@"%.1f C",value];
    }
    if (yourSlide.tag == 4) {
        _STDLabel.text = [NSString stringWithFormat:@"%.1f ppm",value];
    }
    
}


- (IBAction)getValueSlide2:(id)sender {
    
    UISlider *yourSlide = (UISlider *) sender;
    float value = yourSlide.value;
    
    if (yourSlide.tag == 0) {
        _cloroDPD1.text = [NSString stringWithFormat:@"%.1f ppm",value];
    }
    if (yourSlide.tag == 1) {
        _alcalinidad.text = [NSString stringWithFormat:@"%.1f ppm",value];
    }
    if (yourSlide.tag == 2) {
        _clorolibre.text = [NSString stringWithFormat:@"%.1f ppm",value];
    }
    if (yourSlide.tag == 3) {
        _ntu.text = [NSString stringWithFormat:@"%.1f NTU",value];
    }
    if (yourSlide.tag == 4) {
        _cya.text = [NSString stringWithFormat:@"%.1f ppm",value];
    }
}

- (IBAction)segmentedValue:(id)sender {
    
    UISegmentedControl *mySegmented = (UISegmentedControl *)sender;
    
    if (mySegmented.selectedSegmentIndex == 0) {
        NSLog(@"valor segmented 0");
    }
     if (mySegmented.selectedSegmentIndex == 1) {
        NSLog(@"valor segmented 1");
     }
              
}

- (IBAction)valorSegmentedResume:(id)sender {

    UISegmentedControl *mySegmented = (UISegmentedControl *)sender;
    
    if (mySegmented.selectedSegmentIndex == 0) {
        NSLog(@"valor balance");
        
        _medicion1.text = @"pH";
        _medicion3.text = @"STD";
        _medicion4.text = @"Dureza";
        _medicion5.text = @"Temperatura";
       
        _rango1.text = @" En rango";
        _rango2.text = @" En rango";
        _rango3.text = @" En rango";
        _rango4.text = @" En rango";
        _rango5.text = @" En rango";

    } if (mySegmented.selectedSegmentIndex == 1) {
        NSLog(@"valor desinfeccion");
        
        _medicion1.text = @"Cloro/Bromo";
        _medicion3.text = @"Turbidez";
        _medicion4.text = @"Metales/Color";
        _medicion5.text = @"CYA";
        
        _rango1.text = @" En rango";
        _rango2.text = @" En rango";
        _rango3.text = @" En rango";
        _rango4.text = @" En rango";
        _rango5.text = @" En rango";
    }

}




@end
