//
//  CucumberishInit.m
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 7/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

#import "Demo-HonestcodeUITests-Swift.h"

__attribute__((constructor))
void CucumberishInit()
{
    [CucumberishInitializer CucumberishSwiftInit];
}
