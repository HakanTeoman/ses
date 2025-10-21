#pragma once

//#pragma message("ACTIVE COMPAT BUMU PATH: " __FILE__)

#ifdef __ASSEMBLER__
// Assembler bu dosyayı görürse hiçbir şey yapma.
#else
#pragma once
#include "sdk_config.h"  // önce kullanıcı ayarları
#include "nrfx.h"               //
#ifndef __has_builtin
  #define __has_builtin(x) 0
#endif

#include "nrfx.h"
#include "app_util_platform.h"

#ifndef CRITICAL_REGION_ENTER
  #define CRITICAL_REGION_ENTER()  NRFX_CRITICAL_SECTION_ENTER()
#endif
#ifndef CRITICAL_REGION_EXIT
  #define CRITICAL_REGION_EXIT()   NRFX_CRITICAL_SECTION_EXIT()
#endif

#endif // __ASSEMBLER__