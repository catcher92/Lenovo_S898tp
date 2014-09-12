.class public Lcom/lenovo/fm/FMRecorder;
.super Ljava/lang/Object;
.source "FMRecorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;
    }
.end annotation


# static fields
.field private static final ERROR_PLAYER_INTERNAL:I = 0x4

.field private static final ERROR_RECORDER_INTERNAL:I = 0x3

.field private static final ERROR_SDCARD_INSUFFICIENT_SPACE:I = 0x1

.field private static final ERROR_SDCARD_NOT_PRESENT:I = 0x0

.field protected static final ERROR_SDCARD_WRITE_FAILED:I = 0x2

.field private static final FM_RECORD:I = 0x9

.field private static final FM_RECORD_FOLDER:Ljava/lang/String; = "Audio/FMRecorder"

.field protected static final LOW_SPACE_THRESHOLD:J = 0x80000L

.field private static final RECORDING_FILE_EXTENSION:Ljava/lang/String; = ".ogg"

.field private static final RECORDING_FILE_EXTENSION_NORMAL:Ljava/lang/String; = ".aac"

.field private static final RECORDING_FILE_PREFIX:Ljava/lang/String; = "FM"

.field private static final RECORDING_FILE_SOURCE:Ljava/lang/String; = "FM Recordings"

.field private static final RECORDING_FILE_TYPE:Ljava/lang/String; = "audio/ogg"

.field private static final RECORDING_FILE_TYPE_NORMAL:Ljava/lang/String; = "audio/aac"

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_INVALID:I = -0x1

.field protected static final STATE_PLAYBACK:I = 0x7

.field protected static final STATE_RECORDING:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FMRecorder"


# instance fields
.field private extension:Ljava/lang/String;

.field private mDeleteUponSDInsertion:Z

.field private mInternalState:I

.field private mIsRecordingFileSaved:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRecordFile:Ljava/io/File;

.field private mRecordStartTime:J

.field private mRecordTime:J

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mSDCardID:I

.field private mStateListener:Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v2, p0, Lcom/lenovo/fm/FMRecorder;->mDeleteUponSDInsertion:Z

    .line 107
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/fm/FMRecorder;->mInternalState:I

    .line 109
    iput v2, p0, Lcom/lenovo/fm/FMRecorder;->mSDCardID:I

    .line 111
    iput-wide v3, p0, Lcom/lenovo/fm/FMRecorder;->mRecordTime:J

    .line 113
    iput-wide v3, p0, Lcom/lenovo/fm/FMRecorder;->mRecordStartTime:J

    .line 117
    iput-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 119
    iput-boolean v2, p0, Lcom/lenovo/fm/FMRecorder;->mIsRecordingFileSaved:Z

    .line 121
    iput-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mStateListener:Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;

    .line 123
    iput-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 125
    iput-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 542
    return-void
.end method

.method private addCurrentRecordingToDb(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 729
    const-string v17, "FMRecorder"

    const-string v18, ">> addCurrentRecordingToDb"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 731
    :cond_0
    const-string v17, "FMRecorder"

    const-string v18, "<< addCurrentRecordingToDb: file does not exists"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_1
    :goto_0
    return-void

    .line 734
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 735
    .local v3, curTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 736
    .local v8, modDate:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 738
    .local v6, date:Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 739
    .local v7, dateFormatter:Ljava/text/DateFormat;
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v15

    .line 740
    .local v15, timeFormatter:Ljava/text/DateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/fm/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v16

    .line 741
    .local v16, title:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .local v14, stringBuilder:Ljava/lang/StringBuilder;
    const-string v17, "Audio/FMRecorder"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, artist:Ljava/lang/String;
    const/16 v13, 0x9

    .line 748
    .local v13, size:I
    new-instance v5, Landroid/content/ContentValues;

    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 749
    .local v5, cv:Landroid/content/ContentValues;
    const-string v17, "is_drm"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    const-string v17, "is_ringtone"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    const-string v17, "is_music"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string v17, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v17, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const/16 v10, 0x3e8

    .line 755
    .local v10, oneSecond:I
    const-string v17, "date_added"

    const-wide/16 v18, 0x3e8

    div-long v18, v3, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 756
    const-string v17, "date_modified"

    const-wide/16 v18, 0x3e8

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    const-string v17, "mime_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v17, "artist"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v17, "album"

    const-string v18, "FM Recordings"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v17, "duration"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecordTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 763
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/lenovo/fm/FMRecorder;->addToMediaDB(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v12

    .line 764
    .local v12, recordingId:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v12, :cond_1

    .line 768
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/fm/FMRecorder;->getPlaylistId(Landroid/content/Context;)I

    move-result v11

    .line 769
    .local v11, playlistId:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v11, :cond_3

    .line 771
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/fm/FMRecorder;->createPlaylist(Landroid/content/Context;)I

    move-result v11

    .line 774
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/lenovo/fm/FMRecorder;->addToPlaylist(Landroid/content/Context;II)V

    goto/16 :goto_0
.end method

.method private addToMediaDB(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 10
    .parameter "context"
    .parameter "cv"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 807
    const/4 v7, 0x0

    .line 808
    .local v7, insertResult:Landroid/net/Uri;
    const/4 v8, -0x1

    .line 810
    .local v8, recordingId:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 815
    .local v6, existItems:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 818
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 821
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 822
    const-string v0, "FMRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "existing items update recording id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_data=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 841
    const/4 v6, 0x0

    .line 844
    :cond_1
    return v8

    .line 831
    :cond_2
    :try_start_1
    const-string v0, "FMRecorder"

    const-string v1, "addToMediaDB: insert data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 834
    if-eqz v7, :cond_0

    .line 835
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 841
    const/4 v6, 0x0

    throw v0
.end method

.method private addToPlaylist(Landroid/content/Context;II)V
    .locals 12
    .parameter "context"
    .parameter "playlistId"
    .parameter "recordingId"

    .prologue
    .line 864
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    const-string v0, "external"

    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 869
    .local v1, membersUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v3

    const-string v3, "audio_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 873
    .local v8, itemInMembers:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 875
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 881
    const-string v0, "FMRecorder"

    const-string v2, "new item already in playlists.members table"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const-string v0, "FMRecorder"

    const-string v2, "<< addCurrentRecordingToMediaDB"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 887
    const/4 v8, 0x0

    goto :goto_0

    .line 886
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 887
    const/4 v8, 0x0

    .line 890
    :cond_3
    const-string v0, "FMRecorder"

    const-string v2, "addCurrentRecordingToMediaDB: query members"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 894
    .local v9, membersCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 896
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 898
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 899
    .local v6, base:I
    const/4 v10, 0x2

    .line 900
    .local v10, size:I
    new-instance v7, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 901
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "play_order"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 903
    const-string v0, "audio_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 905
    const-string v0, "FMRecorder"

    const-string v2, "addCurrentRecordingToMediaDB: insert to members"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 910
    .end local v6           #base:I
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v10           #size:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 911
    const/4 v9, 0x0

    .line 912
    goto/16 :goto_0

    .line 886
    .end local v9           #membersCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 887
    const/4 v8, 0x0

    throw v0

    .line 910
    .restart local v9       #membersCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 911
    const/4 v9, 0x0

    throw v0
.end method

.method private createPlaylist(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 797
    const/4 v2, 0x1

    .line 798
    .local v2, size:I
    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 799
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "FM Recordings"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v3, "FMRecorder"

    const-string v4, "addToPlaylist: insert playlist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 803
    .local v1, newPlaylistUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3
.end method

.method private getPlaylistId(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 778
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "FM Recordings"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 783
    .local v6, playlistCursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 784
    .local v7, playlistId:I
    if-eqz v6, :cond_1

    .line 786
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 790
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_1
    return v7

    .line 790
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isHaveAvailableStorage(Ljava/lang/String;)Z
    .locals 10
    .parameter "storagePath"

    .prologue
    .line 688
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 689
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 690
    .local v2, blocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 691
    .local v0, blockSize:J
    mul-long v5, v2, v0

    .line 692
    .local v5, spaceLeft:J
    const-string v7, "FMRecorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SD card free blocks="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", blocksize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-wide/32 v7, 0x80000

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isRuLanguage()Z
    .locals 3

    .prologue
    .line 483
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 484
    .local v0, l:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, language:Ljava/lang/String;
    const-string v2, "ru"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    const/4 v2, 0x1

    .line 488
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 703
    const-string v0, "FMRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mStateListener:Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mStateListener:Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0, p1}, Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;->onRecorderError(I)V

    .line 707
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 716
    iput p1, p0, Lcom/lenovo/fm/FMRecorder;->mInternalState:I

    .line 717
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mStateListener:Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mStateListener:Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0, p1}, Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;->onRecorderStateChanged(I)V

    .line 720
    :cond_0
    return-void
.end method


# virtual methods
.method public getRecordingName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 405
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/fm/FMRecorder;->extension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/fm/FMRecorder;->extension:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 410
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/fm/FMRecorder;->extension:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 415
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/lenovo/fm/FMRecorder;->mInternalState:I

    return v0
.end method

.method public judgeCurrentSpaceAvailable(Ljava/lang/String;)Z
    .locals 4
    .parameter "curPath"

    .prologue
    const/4 v2, 0x1

    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, fs:Landroid/os/StatFs;
    const/4 v1, 0x0

    .line 852
    .local v1, isNoBlocks:Z
    if-eqz p1, :cond_0

    .line 853
    new-instance v0, Landroid/os/StatFs;

    .end local v0           #fs:Landroid/os/StatFs;
    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 854
    .restart local v0       #fs:Landroid/os/StatFs;
    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    if-le v3, v2, :cond_1

    move v1, v2

    .line 859
    :cond_0
    :goto_0
    return v1

    .line 855
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 575
    const-string v0, "FMRecorder"

    const-string v1, ">> MediaPlayer.onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 578
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 581
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/lenovo/fm/FMRecorder;->setState(I)V

    .line 582
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mStateListener:Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mStateListener:Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0}, Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;->onPlayRecordFileComplete()V

    .line 585
    :cond_1
    const-string v0, "FMRecorder"

    const-string v1, "<< MediaPlayer.onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 625
    const-string v0, "FMRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder.onError: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    .line 627
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 628
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 630
    const/4 v0, 0x6

    iget v1, p0, Lcom/lenovo/fm/FMRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    .line 631
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/lenovo/fm/FMRecorder;->setState(I)V

    .line 633
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 601
    const-string v1, "FMRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer.onError: what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/16 v1, 0x64

    if-ne v1, p2, :cond_1

    move v0, p2

    .line 604
    .local v0, error:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    .line 605
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 606
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 607
    const/4 v1, 0x7

    iget v2, p0, Lcom/lenovo/fm/FMRecorder;->mInternalState:I

    if-ne v1, v2, :cond_0

    .line 608
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/lenovo/fm/FMRecorder;->setState(I)V

    .line 610
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 602
    .end local v0           #error:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public recordTime()J
    .locals 4

    .prologue
    .line 384
    const/4 v0, 0x6

    iget v1, p0, Lcom/lenovo/fm/FMRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/fm/FMRecorder;->mRecordStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/fm/FMRecorder;->mRecordTime:J

    .line 387
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/fm/FMRecorder;->mRecordTime:J

    return-wide v0
.end method

.method public registerRecorderStateListener(Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 535
    const-string v0, "FMRecorder"

    const-string v1, "registerRecorderStateListener FMRacorder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iput-object p1, p0, Lcom/lenovo/fm/FMRecorder;->mStateListener:Lcom/lenovo/fm/FMRecorder$OnRecorderStateChangedListener;

    .line 537
    return-void
.end method

.method public resetRecorder()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 666
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 668
    iput-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 672
    iput-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 674
    :cond_1
    iput-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 675
    iput-wide v2, p0, Lcom/lenovo/fm/FMRecorder;->mRecordStartTime:J

    .line 676
    iput-wide v2, p0, Lcom/lenovo/fm/FMRecorder;->mRecordTime:J

    .line 677
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/fm/FMRecorder;->mInternalState:I

    .line 678
    return-void
.end method

.method public saveRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "newName"

    .prologue
    const v8, 0x7f04006d

    const/4 v7, 0x0

    .line 428
    const-string v2, "FMRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> saveRecording("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v2, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    if-nez v2, :cond_0

    .line 431
    const-string v2, "FMRecorder"

    const-string v3, "<< saveRecording: recording file is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-wide v2, p0, Lcom/lenovo/fm/FMRecorder;->mRecordTime:J

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    if-gtz v2, :cond_1

    .line 436
    const v2, 0x7f040072

    invoke-static {p1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 440
    :cond_1
    iget-object v2, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 442
    .local v0, parentFile:Ljava/io/File;
    if-nez v0, :cond_2

    .line 443
    const-string v2, "FMRecorder"

    const-string v3, "<< saveRecording: parent recording file is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/lenovo/fm/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 449
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/fm/FMRecorder;->extension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .local v1, sdFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    const-string v2, "FMRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A file with the same new name will be deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 455
    const-string v2, "FMRecorder"

    const-string v3, "can\'t delete the file already exits"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_3
    iget-object v2, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/fm/FMRecorder;->extension:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 460
    const-string v2, "FMRecorder"

    const-string v3, "can\'t rename file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/fm/FMRecorder;->extension:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 465
    .end local v1           #sdFile:Ljava/io/File;
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/fm/FMRecorder;->mIsRecordingFileSaved:Z

    .line 467
    invoke-direct {p0, p1}, Lcom/lenovo/fm/FMRecorder;->addCurrentRecordingToDb(Landroid/content/Context;)V

    .line 468
    if-eqz p2, :cond_6

    .line 469
    invoke-direct {p0}, Lcom/lenovo/fm/FMRecorder;->isRuLanguage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 479
    :cond_6
    :goto_1
    const-string v2, "FMRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< saveRecording("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 474
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "z"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public startPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 316
    const-string v1, "FMRecorder"

    const-string v2, ">> startPlayback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 318
    const-string v1, "FMRecorder"

    const-string v2, "no file to playback!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    return-void

    .line 322
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 325
    const-string v1, "FMRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer.setDataSource("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 329
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 330
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 331
    const-string v1, "FMRecorder"

    const-string v2, "MediaPlayer.prepare()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 354
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/lenovo/fm/FMRecorder;->setState(I)V

    .line 355
    const-string v1, "FMRecorder"

    const-string v2, "<< startPlayback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FMRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while trying to playback recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0, v4}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    goto :goto_0

    .line 338
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "FMRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while trying to playback recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0, v4}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 343
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "FMRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while trying to playback recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0, v4}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 348
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while trying to playback recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-direct {p0, v4}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    goto/16 :goto_0
.end method

.method public startRecording(D)V
    .locals 26
    .parameter "currentChannelFreq"

    .prologue
    .line 136
    const-string v23, "FMRecorder"

    const-string v24, ">> startRecording"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/fm/FMRecorder;->mRecordTime:J

    .line 140
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v23

    const-string v24, "mounted"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 143
    const-string v23, "FMRecorder"

    const-string v24, "SD card is not ready!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    .line 264
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 152
    .local v18, sdPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lenovo/fm/FMRecorder;->isHaveAvailableStorage(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 153
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    .line 154
    const-string v23, "FMRecorder"

    const-string v24, "SD card does not have sufficient space!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    .line 161
    .local v17, sdDir:Ljava/io/File;
    const-string v23, "FMRecorder"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "external storage dir = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v15, Ljava/io/File;

    const-string v23, "Audio/FMRecorder"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v15, recordingDir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-nez v23, :cond_2

    .line 165
    const-string v23, "FMRecorder"

    const-string v24, "A FILE with name \"FM Recording\" already exists!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_3

    .line 169
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v14

    .line 170
    .local v14, mkdirResult:Z
    if-nez v14, :cond_3

    .line 171
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 176
    .end local v14           #mkdirResult:Z
    :cond_3
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 177
    const-string v23, ".ogg"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/fm/FMRecorder;->extension:Ljava/lang/String;

    .line 178
    const-string v23, "audio/ogg"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/fm/FMRecorder;->mimeType:Ljava/lang/String;

    .line 184
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 185
    .local v8, curTime:J
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 186
    .local v10, date:Ljava/util/Date;
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v23, "yyyyMMdd_HHmmss"

    sget-object v24, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 188
    .local v19, simpleDateFormat:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 189
    .local v22, time:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v21, stringBuilder:Ljava/lang/StringBuilder;
    const-string v23, "FM"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->extension:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v23, "HHmmss"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    .local v20, simpleDateFormat2:Ljava/text/SimpleDateFormat;
    new-instance v23, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "MHz"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->extension:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 196
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->createNewFile()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 197
    const-string v23, "FMRecorder"

    const-string v24, "createNewFile success"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_4
    :try_start_1
    const-string v23, "FMRecorder"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "new record file is:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v23, Landroid/media/MediaRecorder;

    invoke-direct/range {v23 .. v23}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 210
    const-string v23, "FMRecorder"

    const-string v24, "startRecording: create new media record instance"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 213
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v23

    if-nez v23, :cond_7

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    const/16 v24, 0x9

    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 227
    :goto_2
    const v16, 0xbb80

    .line 228
    .local v16, samplingRate:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    const v24, 0xbb80

    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 229
    const v6, 0x1f400

    .line 230
    .local v6, bitRate:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    const v24, 0x1f400

    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 232
    const/4 v7, 0x2

    .line 233
    .local v7, channels:I
    invoke-static {}, Lcom/lenovo/fm/Util;->isMTK()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 234
    const/4 v7, 0x1

    .line 236
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaRecorder;->prepare()V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/fm/FMRecorder;->mRecordStartTime:J

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaRecorder;->start()V

    .line 241
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/fm/FMRecorder;->mIsRecordingFileSaved:Z

    .line 242
    const-string v23, "FMRecorder"

    const-string v24, "startRecording: start"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 262
    const/16 v23, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/fm/FMRecorder;->setState(I)V

    .line 263
    const-string v23, "FMRecorder"

    const-string v24, "<< startRecording"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    .end local v6           #bitRate:I
    .end local v7           #channels:I
    .end local v8           #curTime:J
    .end local v10           #date:Ljava/util/Date;
    .end local v16           #samplingRate:I
    .end local v19           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .end local v20           #simpleDateFormat2:Ljava/text/SimpleDateFormat;
    .end local v21           #stringBuilder:Ljava/lang/StringBuilder;
    .end local v22           #time:Ljava/lang/String;
    :cond_6
    const-string v23, ".aac"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/fm/FMRecorder;->extension:Ljava/lang/String;

    .line 181
    const-string v23, "audio/aac"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/fm/FMRecorder;->mimeType:Ljava/lang/String;

    goto/16 :goto_1

    .line 199
    .restart local v8       #curTime:J
    .restart local v10       #date:Ljava/util/Date;
    .restart local v19       #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .restart local v20       #simpleDateFormat2:Ljava/text/SimpleDateFormat;
    .restart local v21       #stringBuilder:Ljava/lang/StringBuilder;
    .restart local v22       #time:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 200
    .local v13, ioex:Ljava/io/IOException;
    const-string v23, "FMRecorder"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IOException while createTempFile: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 219
    .end local v13           #ioex:Ljava/io/IOException;
    :cond_7
    const/16 v3, 0x63

    .line 220
    .local v3, FM:I
    const/16 v4, 0xa

    .line 221
    .local v4, OUTPUT_FORMAT_OGG:I
    const/16 v5, 0x8

    .line 222
    .local v5, VORBIS:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 243
    .end local v3           #FM:I
    .end local v4           #OUTPUT_FORMAT_OGG:I
    .end local v5           #VORBIS:I
    :catch_1
    move-exception v11

    .line 244
    .local v11, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 245
    const-string v23, "FMRecorder"

    const-string v24, "IllegalStateException while starting recording!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 248
    .end local v11           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v11

    .line 249
    .local v11, e:Ljava/io/IOException;
    const-string v23, "FMRecorder"

    const-string v24, "IOException while starting recording!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 252
    .end local v11           #e:Ljava/io/IOException;
    :catch_3
    move-exception v12

    .line 253
    .local v12, exception:Ljava/lang/Exception;
    const-string v23, "FMRecorder"

    const-string v24, "RuntimeException while start recording"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaRecorder;->reset()V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaRecorder;->release()V

    .line 257
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 259
    :cond_8
    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/fm/FMRecorder;->setError(I)V

    goto/16 :goto_0
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 362
    const-string v0, "FMRecorder"

    const-string v1, ">> stopPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    iget v1, p0, Lcom/lenovo/fm/FMRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :cond_0
    const-string v0, "FMRecorder"

    const-string v1, "stopPlayback called in wrong state!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0, v2}, Lcom/lenovo/fm/FMRecorder;->setState(I)V

    .line 376
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 372
    iget-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 374
    invoke-direct {p0, v2}, Lcom/lenovo/fm/FMRecorder;->setState(I)V

    .line 375
    const-string v0, "FMRecorder"

    const-string v1, "<< stopPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 5

    .prologue
    .line 270
    const-string v1, "FMRecorder"

    const-string v2, ">> stopRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x6

    iget v2, p0, Lcom/lenovo/fm/FMRecorder;->mInternalState:I

    if-eq v1, v2, :cond_1

    .line 272
    const-string v1, "FMRecorder"

    const-string v2, "stopRecording() called in wrong state!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/fm/FMRecorder;->mRecordStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecordTime:J

    .line 278
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 280
    const-string v1, "FMRecorder"

    const-string v2, "stopRecording: stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 282
    const-string v1, "FMRecorder"

    const-string v2, "stopRecording: release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 284
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/lenovo/fm/FMRecorder;->setState(I)V

    .line 285
    iget-wide v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecordTime:J

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    if-gtz v1, :cond_2

    .line 286
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    iget-wide v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecordTime:J

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    if-gtz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/lenovo/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 303
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "FMRecorder"

    const-string v2, "<< stopRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
