//
//  AnalisisViewController.h
//  Spin
//
//  Created by José Juan Mota Torres on 01/02/16.
//  Copyright © 2016 José Juan Mota Torres. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnalisisViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UILabel *nombrePiscina;
@property (weak, nonatomic) IBOutlet UILabel *fechaLabel;
@property (weak, nonatomic) IBOutlet UILabel *horaLabel;

@property (weak, nonatomic) IBOutlet UILabel *valorPhLabel;
@property (weak, nonatomic) IBOutlet UILabel *valorAlcalinidadLabel;
@property (weak, nonatomic) IBOutlet UILabel *durezaLabel;
@property (weak, nonatomic) IBOutlet UILabel *valorTempLabel;
@property (weak, nonatomic) IBOutlet UILabel *STDLabel;
@property (weak, nonatomic) IBOutlet UILabel *indiceSaturacionLabel;
@property (weak, nonatomic) IBOutlet UILabel *aguaen;

@property (weak, nonatomic) IBOutlet UISlider *phSlide;
@property (weak, nonatomic) IBOutlet UISlider *alcalinidadSlide;
@property (weak, nonatomic) IBOutlet UISlider *durezaSlide;
@property (weak, nonatomic) IBOutlet UISlider *tempSlide;
@property (weak, nonatomic) IBOutlet UISlider *stdSlide;

- (IBAction)getValueSlide:(id)sender;

//Vista 2
@property (weak, nonatomic) IBOutlet UILabel *cloroDPD1;
@property (weak, nonatomic) IBOutlet UILabel *alcalinidad;
@property (weak, nonatomic) IBOutlet UILabel *clorolibre;
@property (weak, nonatomic) IBOutlet UILabel *ntu;
@property (weak, nonatomic) IBOutlet UILabel *cya;
@property (weak, nonatomic) IBOutlet UISlider *cloroDPD1slide;
@property (weak, nonatomic) IBOutlet UISlider *alcalinidadSlid;
@property (weak, nonatomic) IBOutlet UISlider *clorolibreSlide;
@property (weak, nonatomic) IBOutlet UISlider *ntuSlide;
@property (weak, nonatomic) IBOutlet UISlider *cyaSlide;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmented;
- (IBAction)getValueSlide2:(id)sender;
- (IBAction)segmentedValue:(id)sender;


//Vista 3 RESUMEN
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControlResumen;
@property (weak, nonatomic) IBOutlet UILabel *indicesatresumen;
@property (weak, nonatomic) IBOutlet UILabel *tipoagualabel;
- (IBAction)valorSegmentedResume:(id)sender;

//tablita
@property (weak, nonatomic) IBOutlet UILabel *medicion1;
@property (weak, nonatomic) IBOutlet UILabel *medicion2;
@property (weak, nonatomic) IBOutlet UILabel *medicion3;
@property (weak, nonatomic) IBOutlet UILabel *medicion4;
@property (weak, nonatomic) IBOutlet UILabel *medicion5;

@property (weak, nonatomic) IBOutlet UILabel *rango1;
@property (weak, nonatomic) IBOutlet UILabel *rango2;
@property (weak, nonatomic) IBOutlet UILabel *rango3;
@property (weak, nonatomic) IBOutlet UILabel *rango4;
@property (weak, nonatomic) IBOutlet UILabel *rango5;

@property (weak, nonatomic) IBOutlet UILabel *valorCondicionActual1;
@property (weak, nonatomic) IBOutlet UILabel *valorCondicionActual2;
@property (weak, nonatomic) IBOutlet UILabel *valorCondicionActual3;
@property (weak, nonatomic) IBOutlet UILabel *valorCondicionActual4;
@property (weak, nonatomic) IBOutlet UILabel *valorCondicionActual5;

@property (weak, nonatomic) IBOutlet UILabel *valorCondicionIdeal1;
@property (weak, nonatomic) IBOutlet UILabel *valorCondicionIdeal2;
@property (weak, nonatomic) IBOutlet UILabel *valorCondicionIdeal3;
@property (weak, nonatomic) IBOutlet UILabel *valorCondicionIdeal4;
@property (weak, nonatomic) IBOutlet UILabel *valorCondicionIdeal5s;


//boton continuar
@property (weak, nonatomic) IBOutlet UIButton *botonSiguiente;



@end
