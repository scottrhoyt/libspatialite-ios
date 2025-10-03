#ifndef LibSpatialite_h
#define LibSpatialite_h

#include <spatialite/gaiageo.h>
#include <spatialite.h>

#ifdef __cplusplus
extern "C" {
#endif

void setupSpatialite(sqlite3 *db_handle);

#ifdef __cplusplus
}
#endif

#endif

