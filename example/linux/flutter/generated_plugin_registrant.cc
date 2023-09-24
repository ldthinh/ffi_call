//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <ffi_call/ffi_call_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) ffi_call_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FfiCallPlugin");
  ffi_call_plugin_register_with_registrar(ffi_call_registrar);
}
