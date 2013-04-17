#
# Makefile for ns
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=
local-miui-removed-apps := Stk MiuiSystemUI
local-miui-modified-apps := Settings Phone ThemeManager Mms DeskClock

# All apks from MIUI execept MIUISystemUI and framework-miui-res.apk
local-miui-apps     := 

# All apps need to be removed from original ZIP file
local-remove-apps   := alarming  CalendarWidget ContactWidget Filer Gallery2 GlobalTime_ZTE handservice \
HoloSpiralWallpaper HomeSwitcher_2 LatinIME MusicFX MusicWidget NotesPad NoteWidget NumberLocator \
PinyinIME SystemUI TaskManager Timer WeatherClock ZteLauncher3D SuperSU SuperSU_Pro Mi-EasyAccess ZTE_DLNA_FullShare


# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo update bootanimation
	rm -rf $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

