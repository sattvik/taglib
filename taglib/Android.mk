LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := taglib
LOCAL_CFLAGS := -DHAVE_ZLIB=1 -DNDEBUG -DWITH_ASF -DWITH_MP4 -DTAGLIB_NO_CONFIG
LOCAL_EXPORT_CFLAGS := -DTAGLIB_NO_CONFIG
LOCAL_CPP_FEATURES += rtti
LOCAL_EXPORT_LDLIBS := -lz
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/ape \
	$(LOCAL_PATH)/asf \
	$(LOCAL_PATH)/flac \
	$(LOCAL_PATH)/mp4 \
	$(LOCAL_PATH)/mpc \
	$(LOCAL_PATH)/mpeg \
	$(LOCAL_PATH)/mpeg/id3v1 \
	$(LOCAL_PATH)/mpeg/id3v2 \
	$(LOCAL_PATH)/mpeg/id3v2/frames \
	$(LOCAL_PATH)/ogg \
	$(LOCAL_PATH)/ogg/flac \
	$(LOCAL_PATH)/ogg/speex \
	$(LOCAL_PATH)/ogg/vorbis \
	$(LOCAL_PATH)/riff \
	$(LOCAL_PATH)/riff/aiff \
	$(LOCAL_PATH)/riff/wav \
	$(LOCAL_PATH)/toolkit \
	$(LOCAL_PATH)/trueaudio \
	$(LOCAL_PATH)/wavpack \

LOCAL_EXPORT_C_INCLUDES += \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/ape \
	$(LOCAL_PATH)/asf \
	$(LOCAL_PATH)/flac \
	$(LOCAL_PATH)/mp4 \
	$(LOCAL_PATH)/mpc \
	$(LOCAL_PATH)/mpeg \
	$(LOCAL_PATH)/mpeg/id3v1 \
	$(LOCAL_PATH)/mpeg/id3v2 \
	$(LOCAL_PATH)/mpeg/id3v2/frames \
	$(LOCAL_PATH)/ogg \
	$(LOCAL_PATH)/ogg/flac \
	$(LOCAL_PATH)/ogg/speex \
	$(LOCAL_PATH)/ogg/vorbis \
	$(LOCAL_PATH)/riff \
	$(LOCAL_PATH)/riff/aiff \
	$(LOCAL_PATH)/riff/wav \
	$(LOCAL_PATH)/toolkit \
	$(LOCAL_PATH)/trueaudio \
	$(LOCAL_PATH)/wavpack \

LOCAL_SRC_FILES :=  \
	ape/apefile.cpp \
	ape/apefooter.cpp \
	ape/apeitem.cpp \
	ape/apeproperties.cpp \
	ape/apetag.cpp \
	asf/asfattribute.cpp \
	asf/asffile.cpp \
	asf/asfpicture.cpp \
	asf/asfproperties.cpp \
	asf/asftag.cpp \
	audioproperties.cpp \
	fileref.cpp \
	flac/flacfile.cpp \
	flac/flacmetadatablock.cpp \
	flac/flacpicture.cpp \
	flac/flacproperties.cpp \
	flac/flacunknownmetadatablock.cpp \
	mp4/mp4atom.cpp \
	mp4/mp4coverart.cpp \
	mp4/mp4file.cpp \
	mp4/mp4item.cpp \
	mp4/mp4properties.cpp \
	mp4/mp4tag.cpp \
	mpc/mpcfile.cpp \
	mpc/mpcproperties.cpp \
	mpeg/id3v1/id3v1genres.cpp \
	mpeg/id3v1/id3v1tag.cpp \
	mpeg/id3v2/frames/attachedpictureframe.cpp \
	mpeg/id3v2/frames/commentsframe.cpp \
	mpeg/id3v2/frames/generalencapsulatedobjectframe.cpp \
	mpeg/id3v2/frames/popularimeterframe.cpp \
	mpeg/id3v2/frames/privateframe.cpp \
	mpeg/id3v2/frames/relativevolumeframe.cpp \
	mpeg/id3v2/frames/textidentificationframe.cpp \
	mpeg/id3v2/frames/uniquefileidentifierframe.cpp \
	mpeg/id3v2/frames/unknownframe.cpp \
	mpeg/id3v2/frames/unsynchronizedlyricsframe.cpp \
	mpeg/id3v2/frames/urllinkframe.cpp \
	mpeg/id3v2/id3v2extendedheader.cpp \
	mpeg/id3v2/id3v2footer.cpp \
	mpeg/id3v2/id3v2frame.cpp \
	mpeg/id3v2/id3v2framefactory.cpp \
	mpeg/id3v2/id3v2header.cpp \
	mpeg/id3v2/id3v2synchdata.cpp \
	mpeg/id3v2/id3v2tag.cpp \
	mpeg/mpegfile.cpp \
	mpeg/mpegheader.cpp \
	mpeg/mpegproperties.cpp \
	mpeg/xingheader.cpp \
	ogg/flac/oggflacfile.cpp \
	ogg/oggfile.cpp \
	ogg/oggpage.cpp \
	ogg/oggpageheader.cpp \
	ogg/speex/speexfile.cpp \
	ogg/speex/speexproperties.cpp \
	ogg/vorbis/vorbisfile.cpp \
	ogg/vorbis/vorbisproperties.cpp \
	ogg/xiphcomment.cpp \
	riff/aiff/aifffile.cpp \
	riff/aiff/aiffproperties.cpp \
	riff/rifffile.cpp \
	riff/wav/wavfile.cpp \
	riff/wav/wavproperties.cpp \
	tag.cpp \
	tagunion.cpp \
	toolkit/tbytevector.cpp \
	toolkit/tbytevectorlist.cpp \
	toolkit/tdebug.cpp \
	toolkit/tfile.cpp \
	toolkit/tstring.cpp \
	toolkit/tstringlist.cpp \
	toolkit/unicode.cpp \
	trueaudio/trueaudiofile.cpp \
	trueaudio/trueaudioproperties.cpp \
	wavpack/wavpackfile.cpp \
	wavpack/wavpackproperties.cpp

include $(BUILD_STATIC_LIBRARY)
