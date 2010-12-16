LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

settings_sources := \
	gvdb/gvdb-format.h		\
	gvdb/gvdb-reader.h		\
	gvdb/gvdb-reader.c		\
	gdelayedsettingsbackend.h	\
	gdelayedsettingsbackend.c	\
	gkeyfilesettingsbackend.c	\
	gmemorysettingsbackend.h	\
	gmemorysettingsbackend.c	\
	gnullsettingsbackend.h		\
	gnullsettingsbackend.c		\
	gsettingsbackendinternal.h	\
	gsettingsbackend.c		\
	gsettingsschema.h		\
	gsettingsschema.c		\
	gsettings-mapping.h		\
	gsettings-mapping.c		\
	gsettings.c

marshal_sources := \
        gio-marshal.h	\
        gio-marshal.c	\

gdbus_sources := \
	gdbusutils.h			gdbusutils.c			\
	gdbusaddress.h			gdbusaddress.c			\
	gdbusauthobserver.h		gdbusauthobserver.c		\
	gdbusauth.h			gdbusauth.c			\
	gdbusauthmechanism.h		gdbusauthmechanism.c		\
	gdbusauthmechanismanon.h	gdbusauthmechanismanon.c	\
	gdbusauthmechanismexternal.h	gdbusauthmechanismexternal.c	\
	gdbusauthmechanismsha1.h	gdbusauthmechanismsha1.c	\
	gdbuserror.h			gdbuserror.c			\
	gdbusconnection.h		gdbusconnection.c		\
	gdbusmessage.h			gdbusmessage.c			\
	gdbusnameowning.h		gdbusnameowning.c		\
	gdbusnamewatching.h		gdbusnamewatching.c		\
	gdbusproxy.h			gdbusproxy.c			\
	gdbusprivate.h			gdbusprivate.c			\
	gdbusintrospection.h		gdbusintrospection.c		\
	gdbusmethodinvocation.h		gdbusmethodinvocation.c		\
	gdbusserver.h			gdbusserver.c			\

local_sources := \
	glocaldirectorymonitor.c 	\
	glocaldirectorymonitor.h 	\
	glocalfile.c 			\
	glocalfile.h 			\
	glocalfileenumerator.c 		\
	glocalfileenumerator.h 		\
	glocalfileinfo.c 		\
	glocalfileinfo.h 		\
	glocalfileinputstream.c 	\
	glocalfileinputstream.h 	\
	glocalfilemonitor.c 		\
	glocalfilemonitor.h 		\
	glocalfileoutputstream.c 	\
	glocalfileoutputstream.h 	\
	glocalfileiostream.c		\
	glocalfileiostream.h		\
	glocalvfs.c 			\
	glocalvfs.h 			\

unix_sources := \
	gfiledescriptorbased.c  \
	gunixconnection.c	\
	gunixcredentialsmessage.c	\
	gunixfdlist.c		\
	gunixfdmessage.c	\
	gunixmount.c		\
	gunixmounts.c		\
	gunixresolver.c		\
	gunixresolver.h		\
	gunixsocketaddress.c	\
	gunixvolume.c 		\
	gunixvolume.h 		\
	gunixvolumemonitor.c 	\
	gunixvolumemonitor.h 	\
	gunixinputstream.c 	\
	gunixoutputstream.c 	\






LOCAL_SRC_FILES:= \
	xdgmime/xdgmimealias.c	\
	xdgmime/xdgmime.c	\
	xdgmime/xdgmimecache.c	\
	xdgmime/xdgmimeglob.c	\
	xdgmime/xdgmimeicon.c	\
	xdgmime/xdgmimeint.c	\
	xdgmime/xdgmimemagic.c	\
	xdgmime/xdgmimeparent.c	\
	libasyncns/asyncns.c	\
	gappinfo.c 		\
	gapplication.c		\
	gapplication.h		\
	gasynchelper.c 		\
	gasynchelper.h 		\
	gasyncinitable.c	\
	gasyncresult.c 		\
	gbufferedinputstream.c 	\
	gbufferedoutputstream.c \
	gcancellable.c 		\
	gcontenttype.c 		\
	gcontenttypeprivate.h 	\
	gcharsetconverter.c	\
	gconverter.c		\
	gconverterinputstream.c	\
	gconverteroutputstream.c	\
	gcredentials.c		\
	gdatainputstream.c 	\
	gdataoutputstream.c 	\
	gdrive.c 		\
	gdummyfile.h 		\
	gdummyfile.c 		\
	gemblem.h 		\
	gemblem.c 		\
	gemblemedicon.h		\
	gemblemedicon.c		\
	gfile.c 		\
	gfileattribute.c 	\
	gfileattribute-priv.h 	\
	gfileenumerator.c 	\
	gfileicon.c 		\
	gfileinfo.c 		\
	gfileinfo-priv.h 	\
	gfileinputstream.c 	\
	gfilemonitor.c 		\
	gfilenamecompleter.c 	\
	gfileoutputstream.c 	\
	gfileiostream.c		\
	gfilterinputstream.c 	\
	gfilteroutputstream.c 	\
	gicon.c 		\
	ginetaddress.c		\
	ginetsocketaddress.c	\
	ginitable.c		\
	ginputstream.c 		\
	gioenums.h		\
	gioerror.c 		\
	giomodule.c 		\
	giomodule-priv.h	\
	gioscheduler.c 		\
	giostream.c		\
	gloadableicon.c 	\
	gmount.c 		\
	gmemoryinputstream.c 	\
	gmemoryoutputstream.c 	\
	gmountoperation.c 	\
	gnativevolumemonitor.c 	\
	gnativevolumemonitor.h 	\
	gnetworkaddress.c	\
	gnetworkingprivate.h	\
	gnetworkservice.c	\
	goutputstream.c 	\
	gpermission.c 		\
	gpollfilemonitor.c 	\
	gpollfilemonitor.h 	\
	gresolver.c		\
	gseekable.c 		\
	gsimpleasyncresult.c 	\
	gsimplepermission.c 	\
	gsocket.c		\
	gsocketaddress.c	\
	gsocketaddressenumerator.c \
	gsocketclient.c		\
	gsocketconnectable.c	\
	gsocketconnection.c	\
	gsocketcontrolmessage.c	\
	gsocketinputstream.c	\
	gsocketinputstream.h	\
	gsocketlistener.c	\
	gsocketoutputstream.c	\
	gsocketoutputstream.h	\
	gsocketservice.c	\
	gsrvtarget.c		\
	gtcpconnection.c	\
	gthreadedsocketservice.c\
	gthemedicon.c 		\
	gthreadedresolver.c	\
	gthreadedresolver.h	\
	gunionvolumemonitor.c 	\
	gunionvolumemonitor.h 	\
	gvfs.c 			\
	gvolume.c 		\
	gvolumemonitor.c 	\
	gzlibcompressor.c	\
	gzlibdecompressor.c	\
	gmountprivate.h 	\
	gioenumtypes.h		\
	gioenumtypes.c		\
	gdesktopappinfo.c	\
	$(unix_sources) 	\
	$(settings_sources) 	\
	$(gdbus_sources) 	\
	$(local_sources) 	\
	$(marshal_sources) 	\

#	gfileattribute.c	\
	gfile.c	\
	gfiledescriptorbased.c	\
	gfileenumerator.c	\
	gfileinfo.c	\
	gfileinputstream.c	\
	gfileiostream.c	\
	gfilemonitor.c	\
	gfileoutputstream.c	\
	gthreadedresolver.c	\
	libasyncns/asyncns.c	\
	gunixresolver.c	\
	gpollfilemonitor.c	\
	gvfs.c	\
	giomodule.c	\
	glocalvfs.c	\
	gresolver.c	\
	gsrvtarget.c	\
	gunixconnection.c	\
	gunixfdlist.c	\
	gunixfdmessage.c	\
	gseekable.c	\
	gioenumtypes.c	\
	gio-marshal.c	\
	gio-querymodules.c	\
	gnetworkaddress.c	\
	gnetworkservice.c	\
	gsocket.c	\
	gsocketconnectable.c	\
	gsocketconnection.c	\
	gsocketcontrolmessage.c	\
	gsocketinputstream.c	\
	gsocketlistener.c	\
	gsocketoutputstream.c	\
	gsocketservice.c	\
	ginetaddress.c	\
	ginetsocketaddress.c	\
	gunixsocketaddress.c	\
	ginitable.c	\
	gcredentials.c	\
	gunixcredentialsmessage.c	\
	gtcpconnection.c	\
	giostream.c	\
	goutputstream.c	\
	ginputstream.c	\
	gioscheduler.c		\
	gasyncresult.c		\
	gcancellable.c		\
	gioerror.c		\
	gsocketaddress.c	\
	gsocketaddressenumerator.c	\
	gsocketclient.c		\
	gsimpleasyncresult.c

LOCAL_SHARED_LIBRARIES := \
	libglib-2.0		\
        libgthread-2.0          \
        libgmodule-2.0          \
        libz                    \
        libgobject-2.0          


LOCAL_MODULE:= libgio-2.0

LOCAL_C_INCLUDES := 			\
	$(GLIB_TOP)			\
	$(GLIB_TOP)/gio			\
	$(GLIB_TOP)/gio/libasyncns	\
	$(GLIB_TOP)/gio/xdgmime		\
	$(GLIB_TOP)/glib		\
	$(GLIB_TOP)/gmodule		\
	$(GLIB_TOP)/android		\
	$(LOCAL_PATH)/libcharset        \
	$(LOCAL_PATH)/gnulib            \
	$(LOCAL_PATH)/pcre		\
	external/zlib

# ./glib private macros, copy from Makefile.am
LOCAL_CFLAGS := \
    -DLIBDIR=\"$(libdir)\"          \
    -DHAVE_CONFIG_H                 \
    \
    -DG_LOG_DOMAIN=\"GLib-GRegex\" \
    -DSUPPORT_UCP \
    -DSUPPORT_UTF8 \
    -DNEWLINE=-1 \
    -DMATCH_LIMIT=10000000 \
    -DMATCH_LIMIT_RECURSION=10000000 \
    -DMAX_NAME_SIZE=32 \
    -DMAX_NAME_COUNT=10000 \
    -DMAX_DUPLENGTH=30000 \
    -DLINK_SIZE=2 \
    -DEBCDIC=0 \
    -DPOSIX_MALLOC_THRESHOLD=10 \
    -DG_DISABLE_DEPRECATED \
    -DGIO_COMPILATION		\
    -DGIO_MODULE_DIR=\"/tmp\" \
    -DGLIB_COMPILATION 

LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
