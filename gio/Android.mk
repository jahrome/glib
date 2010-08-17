LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	gcancellable.c		\
	gsocketclient.c		\
	gioerror.c		\
	ginetsocketaddress.c	\
	gsocketaddress.c	\
	gsocketaddressenumerator.c	\
	gsocket.c		\
	gsocketclient.c		\
	gsocketconnectable.c	\
	gsocketconnection.c	\
	gsocketcontrolmessage.c	\
	gsocketinputstream.c	\
	gsocketlistener.c	\
	gsocketoutputstream.c	\
	gsimpleasyncresult.c

LOCAL_SHARED_LIBRARIES := \
	libglib-2.0		\
        libgthread-2.0          \
        libgmodule-2.0          \
        libgobject-2.0          


LOCAL_MODULE:= libgio-2.0

LOCAL_C_INCLUDES := 			\
	$(GLIB_TOP)			\
	$(GLIB_TOP)/glib		\
	$(GLIB_TOP)/gmodule		\
	$(GLIB_TOP)/android		\
	$(LOCAL_PATH)/libcharset        \
	$(LOCAL_PATH)/gnulib            \
	$(LOCAL_PATH)/pcre

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
    -DGLIB_COMPILATION 

LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
