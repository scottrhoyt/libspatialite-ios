#import <Foundation/Foundation.h>
#import "include/LibSpatialite.h"

void setupSpatialite(){
  spatialite_init(0);
  puts("SpatiaLite integrated");
}
