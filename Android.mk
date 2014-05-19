LOCAL_PATH := $(call my-dir)

#original path: src/replacements/.libs/libreplacements.a
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DUNIXODBC -D_REENTRANT -D_THREAD_SAFE \
-DNDEBUG=1 

# fixed flags
LOCAL_CFLAGS+= -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/src/replacements\
	$(LOCAL_PATH)/include\
	$(LOCAL_PATH)/generated/android/include\
	external/libiconv/include\
	external/openssl/include
LOCAL_SRC_FILES:= \
	src/replacements/iconv.c\
	src/replacements/gettimeofday.c\
	src/replacements/fakepoll.c\
	src/replacements/getpassarg.c\
	src/replacements/socketpair.c\
	src/replacements/win_mutex.c\
	src/replacements/win_cond.c\
	src/replacements/getaddrinfo.c\
	src/replacements/readpassphrase.c
LOCAL_MODULE := libreplacements

include $(BUILD_STATIC_LIBRARY)


#original path: src/tds/.libs/libtds.a
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DUNIXODBC -D_REENTRANT -D_THREAD_SAFE \
-DNDEBUG=1 

# fixed flags
LOCAL_CFLAGS+= -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/src/tds\
	$(LOCAL_PATH)/include\
	$(LOCAL_PATH)/generated/android/src/tds\
	$(LOCAL_PATH)/generated/android/include\
	external/libiconv/include\
	external/openssl/include
LOCAL_SRC_FILES:= \
	src/tds/mem.c\
	src/tds/token.c\
	src/tds/util.c\
	src/tds/login.c\
	src/tds/read.c\
	src/tds/write.c\
	src/tds/convert.c\
	src/tds/numeric.c\
	src/tds/config.c\
	src/tds/query.c\
	src/tds/iconv.c\
	src/tds/locale.c\
	src/tds/threadsafe.c\
	src/tds/vstrbuild.c\
	src/tds/tdsstring.c\
	src/tds/getmac.c\
	src/tds/data.c\
	src/tds/net.c\
	src/tds/tds_checks.c\
	src/tds/log.c\
	src/tds/bulk.c\
	src/tds/packet.c\
	src/tds/stream.c\
	src/tds/challenge.c\
	src/tds/md4.c\
	src/tds/md5.c\
	src/tds/des.c\
	src/tds/gssapi.c\
	src/tds/hmac_md5.c
LOCAL_MODULE := libtds

include $(BUILD_STATIC_LIBRARY)


#original path: src/ctlib/.libs/libct.a
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DUNIXODBC -D_REENTRANT -D_THREAD_SAFE \
-DNDEBUG=1 

# fixed flags
LOCAL_CFLAGS+= -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/src/ctlib\
	$(LOCAL_PATH)/include\
	$(LOCAL_PATH)/generated/android/include\
	external/libiconv/include\
	external/openssl/include
LOCAL_SRC_FILES:= \
	src/ctlib/ct.c\
	src/ctlib/cs.c\
	src/ctlib/blk.c\
	src/ctlib/ctutil.c
LOCAL_STATIC_LIBRARIES:= \
	libtds\
	libreplacements
LOCAL_MODULE := libct

include $(BUILD_STATIC_LIBRARY)


#original path: src/dblib/.libs/libsybdb.a
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DUNIXODBC -D_REENTRANT -D_THREAD_SAFE \
-DNDEBUG=1 

# fixed flags
LOCAL_CFLAGS+= -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/src/dblib\
	$(LOCAL_PATH)/include\
	$(LOCAL_PATH)/generated/android/include\
	external/libiconv/include\
	external/openssl/include
LOCAL_SRC_FILES:= \
	src/dblib/dblib.c\
	src/dblib/dbutil.c\
	src/dblib/rpc.c\
	src/dblib/bcp.c\
	src/dblib/xact.c\
	src/dblib/dbpivot.c
LOCAL_STATIC_LIBRARIES:= \
	libtds\
	libreplacements
LOCAL_MODULE := libsybdb

include $(BUILD_STATIC_LIBRARY)


#original path: src/odbc/.libs/libtdsodbc.a
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DUNIXODBC -D_REENTRANT -D_THREAD_SAFE \
-DNDEBUG=1 

# fixed flags
LOCAL_CFLAGS+= -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/src/odbc\
	$(LOCAL_PATH)/include\
	$(LOCAL_PATH)/generated/android/src/odbc\
	$(LOCAL_PATH)/generated/android/include\
	external/unixODBC/include\
	external/libiconv/include\
	external/openssl/include
LOCAL_SRC_FILES:= \
	src/odbc/odbc.c\
	src/odbc/connectparams.c\
	src/odbc/convert_tds2sql.c\
	src/odbc/descriptor.c\
	src/odbc/prepare_query.c\
	src/odbc/odbc_util.c\
	src/odbc/native.c\
	src/odbc/sql2tds.c\
	src/odbc/error.c\
	src/odbc/odbc_checks.c\
	src/odbc/sqlwchar.c
LOCAL_STATIC_LIBRARIES:= \
	libtds\
	libreplacements
LOCAL_MODULE := libtdsodbc

include $(BUILD_STATIC_LIBRARY)

