// ViewController.m
// Simulación del código para la app ¿Sabías qué?

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *ciencia;
@property (nonatomic, strong) NSArray *historia;
@property (nonatomic, strong) NSArray *animales;
@property (nonatomic, strong) NSString *categoriaSeleccionada;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Inicializar los arrays con datos curiosos
    self.ciencia = @[@"El agua hierve a 100 °C", @"La electricidad viaja casi a la velocidad de la luz"];
    self.historia = @[@"Cristóbal Colón llegó a América en 1492", @"La Revolución Mexicana comenzó en 1910"];
    self.animales = @[@"Los gatos duermen 16 horas al día", @"El pulpo tiene tres corazones"];

    // Categoría por defecto
    self.categoriaSeleccionada = @"Ciencia";
}

// Método para cambiar la categoría cuando el usuario selecciona una opción
- (void)seleccionarCategoria:(NSString *)categoria {
    self.categoriaSeleccionada = categoria;
}

// Método que se ejecuta cuando el usuario toca el botón "Ver otro dato"
- (NSString *)mostrarDatoCurioso {
    NSArray *datos;

    if ([self.categoriaSeleccionada isEqualToString:@"Ciencia"]) {
        datos = self.ciencia;
    } else if ([self.categoriaSeleccionada isEqualToString:@"Historia"]) {
        datos = self.historia;
    } else if ([self.categoriaSeleccionada isEqualToString:@"Animales"]) {
        datos = self.animales;
    }

    int indice = arc4random_uniform((int)[datos count]);
    return datos[indice]; // Este valor se mostraría en un UILabel en la app real
}

@end
