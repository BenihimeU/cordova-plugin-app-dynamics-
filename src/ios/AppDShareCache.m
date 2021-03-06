#import <Foundation/Foundation.h>
#import "AppDShareCache.h"

static NSMutableDictionary *g_Cache;

@implementation AppDShareCache

+ (void) initialize
{
    static BOOL initialised = NO;
    if(! initialised)
    {
        NSLog(@"Init...");
        initialised = YES;
        g_Cache = [[NSMutableDictionary alloc] init];
    }
}

+ (NSMutableDictionary*) sharedCache
{
    return g_Cache;
}

@end
