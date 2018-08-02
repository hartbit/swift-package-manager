#include <fts.h>
#include <git2.h>

#define STR_EXPAND(VALUE) #VALUE
#define STR(VALUE) STR_EXPAND(VALUE)

static inline const char* SPM_VendorNameString() {
  #ifdef SPM_VENDOR_NAME
    return STR(SPM_VENDOR_NAME);
  #else
    return "";
  #endif
}
static inline const char* SPM_BuildIdentifierString() {
  #ifdef SPM_BUILD_IDENT
    return STR(SPM_BUILD_IDENT);
  #else
    return "";
  #endif
}
