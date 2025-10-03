#include "include/LibSpatialite.h"

void setupSpatialite(sqlite3 *db_handle, int verbose) {
  void *cache;
  cache = spatialite_alloc_connection();
  spatialite_init_ex (db_handle, cache, verbose);
}
