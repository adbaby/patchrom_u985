import common
import edify_generator
import os
import re

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.product.device") == "enterprise_U950" || getprop("ro.build.product") == "enterprise_U950");')
            return

def FullOTA_InstallEnd(info):
    try:
        input_blob = info.input_zip.read("RADIO/blob")
        common.ZipWriteStr(info.output_zip, "blob", input_blob)
        info.script.AppendExtra('nv_copy_blob_file("blob", "/staging");')
        info.script.AppendExtra('symlink("su", "/system/bin/su");')
    except KeyError:
        print "no blob in target_files; skipping install"
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
     try:
        target_blob = info.target_zip.read("RADIO/blob")
        info.script.AppendExtra('symlink("su", "/system/bin/su");')
        try:
            source_blob = info.source_zip.read("RADIO/blob")
        except KeyError:
            source_blob = None
        if target_blob == source_blob:
            print "blob unchanged; skipping"
        else:
            common.ZipWriteStr(info.output_zip, "blob", target_blob)
            info.script.AppendExtra('nv_copy_blob_file("blob", "/staging");')
     except KeyError:
        print "no blob in target_files; skipping install"
     AddAssertions(info)
