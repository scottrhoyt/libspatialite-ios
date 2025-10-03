#include "include/LibSpatialite.h"

void setupSpatialite(sqlite3 *db_handle) {
  void *cache;
  cache = spatialite_alloc_connection();
  int verbose = 1;
  spatialite_init_ex (db_handle, cache, verbose);
}
