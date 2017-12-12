//
//  ViewController.m
//  v0rtexNonce
//
//  Created by ninja on 12/12/17.
//  Copyright © 2017 ninja. All rights reserved.
//


#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *generatorLabel;
@property (weak, nonatomic) IBOutlet UITextField *generatorInput;
@end

@implementation ViewController
- (IBAction)generatorInputActionTrigger:(id)sender
{
    const char *generator = [_generatorInput.text UTF8String];
    char compareString[22];
    char generatorToSet[22];
    uint64_t rawGeneratorValue;
    switch(strlen(generator))
    {
        case 16:
            sscanf(generator, "%llx", &rawGeneratorValue);
            sprintf(compareString, "%llx", rawGeneratorValue);
            break;
            
        case 18:
            sscanf(generator, "0x%16llx", &rawGeneratorValue);
            sprintf(compareString, "0x%llx", rawGeneratorValue);
            break;
            
        default:
            LOG("Invalid generator\n");
            [[[UIAlertView alloc]
              initWithTitle:@"Error"
              message:@"The generator you entered is invalid"
              delegate:nil
              cancelButtonTitle:@"Ok"
              otherButtonTitles:nil]
             show];
            break;
    }
    if(!strcmp(compareString, generator))
    {
        sprintf(generatorToSet, "0x%llx", rawGeneratorValue);
        if(set_generator(generatorToSet))
        {
            [[[UIAlertView alloc]
              initWithTitle:@"Success"
              message:@"The generator has been set"
              delegate:nil
              cancelButtonTitle:@"Ok"
              otherButtonTitles:nil]
             show];
        }
    }
    else
    {
        [[[UIAlertView alloc]
          initWithTitle:@"Error"
          message:@"Failed to validate generator"
          delegate:nil
          cancelButtonTitle:@"Ok"
          otherButtonTitles:nil]
         show];
    }
    NSString *currentGenerator = [self getGenerator];
    _generatorLabel.text = _generatorLabel.text = [currentGenerator length] < 2 ? @"-unavailable-" : currentGenerator;;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    if(getuid() != 0)
    {
        if(party_hard())
//        if(0)
        {
            [[[UIAlertView alloc]
              initWithTitle:@"Error"
              message:@"v0rtex exploit failed\nPlease reboot and try again"
              delegate:nil
              cancelButtonTitle:nil
              otherButtonTitles:nil]
             show];
        }
    }
    NSString *currentGenerator = [self getGenerator];
    _generatorLabel.text = [currentGenerator length] < 2 ? @"-unavailable-" : currentGenerator;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)getGenerator
{
    NSString *bootNonce = [[NSMutableString alloc] initWithString:@""];
    CFMutableDictionaryRef bdict = IOServiceMatching("IODTNVRAM");
    io_service_t nvservice = IOServiceGetMatchingService(kIOMasterPortDefault, bdict);
    
    if(MACH_PORT_VALID(nvservice))
    {
        io_string_t buffer;
        unsigned int len = 256;
        kern_return_t kret = IORegistryEntryGetProperty(nvservice, "com.apple.System.boot-nonce", buffer, &len);
        if(kret == KERN_SUCCESS)
        {
            bootNonce = [NSString stringWithFormat:@"%s", (char *) buffer];
        }
        else
        {
            LOG("Reading var failed");
        }
    }
    else
    {
        LOG("Failed to get IODTNVRAM");
    }
    LOG("current generator: %@", bootNonce);
    return bootNonce;
}

@end
