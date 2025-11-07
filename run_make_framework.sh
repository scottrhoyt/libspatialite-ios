mkdir -p lib
mkdir -p include

# Copy includes - only spatialite headers (not dependencies like GEOS, PROJ, ICU)
cp -v -R build/arm64-ios/include/spatialite include
# Copy top-level spatialite headers if they exist
cp -v build/arm64-ios/include/spatialite*.h include/ 2>/dev/null || true

# Make fat libraries for Simulator architectures 
for file in build/arm64-sim/lib/*.a; \
    do name=$(basename $file .a); \
    lipo -create \
        -arch arm64 build/arm64-sim/lib/$name.a \
        -output lib/$name.a \
    ; \
    done;
./make-framework