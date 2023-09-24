#include "include/ffi_call/ffi_call_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "ffi_call_plugin.h"

void FfiCallPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  ffi_call::FfiCallPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
