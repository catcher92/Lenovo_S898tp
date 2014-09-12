.class public Lcom/lenovo/fm/RadioDBOperation;
.super Ljava/lang/Object;
.source "RadioDBOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/fm/RadioDBOperation$FMDatabaseHelper;
    }
.end annotation


# static fields
.field private static final CHANNEL_FAVORITE:Ljava/lang/String; = "channelFavorite"

.field protected static final CHANNEL_FREQ:Ljava/lang/String; = "channelFreq"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "channelName"

.field private static final CHANNEL_PLAYING:Ljava/lang/String; = "channelPlaying"

.field private static final DATABASE_NAME:Ljava/lang/String; = "fmChannels.db"

.field private static final DATABASE_NAME1:Ljava/lang/String; = "FMRadio.db"

.field private static final DATABASE_TABLE1:Ljava/lang/String; = "channels"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final KEY_ROWID:Ljava/lang/String; = "_id"

.field private static final TAG:Ljava/lang/String; = "RadioDBOperation"

.field private static mInstance:Lcom/lenovo/fm/RadioDBOperation;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mFMDatabaseHelper:Lcom/lenovo/fm/RadioDBOperation$FMDatabaseHelper;

.field public mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/fm/RadioDBOperation;->mInstance:Lcom/lenovo/fm/RadioDBOperation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lenovo/fm/RadioDBOperation;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/fm/RadioDBOperation;
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    sget-object v0, Lcom/lenovo/fm/RadioDBOperation;->mInstance:Lcom/lenovo/fm/RadioDBOperation;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/lenovo/fm/RadioDBOperation;

    invoke-direct {v0, p0}, Lcom/lenovo/fm/RadioDBOperation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/fm/RadioDBOperation;->mInstance:Lcom/lenovo/fm/RadioDBOperation;

    .line 39
    :cond_0
    sget-object v0, Lcom/lenovo/fm/RadioDBOperation;->mInstance:Lcom/lenovo/fm/RadioDBOperation;

    if-eqz v0, :cond_1

    .line 40
    sget-object v0, Lcom/lenovo/fm/RadioDBOperation;->mInstance:Lcom/lenovo/fm/RadioDBOperation;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation;->open()Lcom/lenovo/fm/RadioDBOperation;

    .line 44
    :goto_0
    sget-object v0, Lcom/lenovo/fm/RadioDBOperation;->mInstance:Lcom/lenovo/fm/RadioDBOperation;

    return-object v0

    .line 42
    :cond_1
    const-string v0, "RadioDBOperation"

    const-string v1, "FmDataBase getInstance failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized AddChannel(Ljava/lang/String;III)J
    .locals 4
    .parameter "name"
    .parameter "freq"
    .parameter "favorite"
    .parameter "isPlaying"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    const-string v1, "RadioDBOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddChannel  name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " freq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " favorite="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isPlaying ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0, p2}, Lcom/lenovo/fm/RadioDBOperation;->isSavedFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0, p2}, Lcom/lenovo/fm/RadioDBOperation;->deleteChannel(I)Z

    .line 127
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "channelName"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "channelFreq"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v1, "channelFavorite"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v1, "channelPlaying"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    iget-object v1, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "channels"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    monitor-exit p0

    return-wide v1

    .line 121
    .end local v0           #initialValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "RadioDBOperation"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mFMDatabaseHelper:Lcom/lenovo/fm/RadioDBOperation$FMDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation$FMDatabaseHelper;->close()V

    .line 62
    :cond_0
    return-void
.end method

.method public declared-synchronized deleteAllChannel()Z
    .locals 4

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    const-string v0, "RadioDBOperation"

    const-string v1, "deleteAllChannel "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "channels"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteAllnonfavorChannel()Z
    .locals 4

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    const-string v0, "RadioDBOperation"

    const-string v1, "deleteAllnonfavorChannel "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "channels"

    const-string v2, "channelFavorite=0"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteChannel(I)Z
    .locals 4
    .parameter "freq"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    const-string v0, "RadioDBOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteChannel freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "channels"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channelFreq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllChannels()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 175
    monitor-enter p0

    :try_start_0
    const-string v1, "RadioDBOperation"

    const-string v2, "getAllChannels "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "channels"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "channelName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "channelFreq"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "channelFavorite"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "channelPlaying"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "channelFavorite DESC, channelFreq ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 182
    :cond_0
    monitor-exit p0

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllFavoriteChannels()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    const-string v0, "RadioDBOperation"

    const-string v1, "getAllChannels "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "channels"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "channelName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "channelFreq"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "channelFavorite"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "channelPlaying"

    aput-object v4, v2, v3

    const-string v3, "channelFavorite=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "channelFreq ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPlayingChannels()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    const-string v0, "RadioDBOperation"

    const-string v1, "getPlayingChannels "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "channels"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "channelName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "channelFreq"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "channelFavorite"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "channelPlaying"

    aput-object v4, v2, v3

    const-string v3, "channelPlaying=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "channelFreq ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpecificChannel(I)Landroid/database/Cursor;
    .locals 9
    .parameter "channelfreq"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    const-string v0, "RadioDBOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpecificChannelCursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "channels"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "channelName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "channelFreq"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "channelFavorite"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "channelPlaying"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelFreq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getchannlecount()I
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioDBOperation;->getAllChannels()Landroid/database/Cursor;

    move-result-object v0

    .line 69
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 72
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isDBOpened()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavoritedFrequency(I)I
    .locals 11
    .parameter "freq"

    .prologue
    const/4 v4, 0x0

    .line 99
    const-string v0, "RadioDBOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFavoritedFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioDBOperation;->isDBOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string v0, "RadioDBOperation"

    const-string v1, "In isFavoritedFrequency, DB has benn closed, so open it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioDBOperation;->open()Lcom/lenovo/fm/RadioDBOperation;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "channels"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "channelName"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "channelFreq"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "channelFavorite"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "channelPlaying"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channelFreq="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 108
    .local v10, mCursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 109
    .local v9, isFavorite:I
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "channelFavorite"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 114
    :cond_1
    if-eqz v10, :cond_2

    .line 115
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_2
    return v9
.end method

.method public isSavedFrequency(I)Z
    .locals 7
    .parameter "freq"

    .prologue
    .line 76
    const-string v4, "RadioDBOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSavedFrequency: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/lenovo/fm/RadioDBOperation;->getAllChannels()Landroid/database/Cursor;

    move-result-object v2

    .line 79
    .local v2, mCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 80
    .local v1, isSaved:Z
    if-eqz v2, :cond_1

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 82
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 83
    const-string v4, "channelFreq"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 85
    .local v3, saved_frequency:I
    const-string v4, "RadioDBOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saved_frequency: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-ne v3, p1, :cond_2

    .line 87
    const/4 v1, 0x1

    .line 91
    .end local v3           #saved_frequency:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 92
    const/4 v2, 0x0

    .line 94
    .end local v0           #i:I
    :cond_1
    const-string v4, "RadioDBOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSaved=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v1

    .line 81
    .restart local v0       #i:I
    .restart local v3       #saved_frequency:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public open()Lcom/lenovo/fm/RadioDBOperation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "RadioDBOperation"

    const-string v1, "FmDataBase open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/lenovo/fm/RadioDBOperation$FMDatabaseHelper;

    iget-object v1, p0, Lcom/lenovo/fm/RadioDBOperation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/fm/RadioDBOperation$FMDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mFMDatabaseHelper:Lcom/lenovo/fm/RadioDBOperation$FMDatabaseHelper;

    .line 51
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mFMDatabaseHelper:Lcom/lenovo/fm/RadioDBOperation$FMDatabaseHelper;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mFMDatabaseHelper:Lcom/lenovo/fm/RadioDBOperation$FMDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/fm/RadioDBOperation$FMDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized updateAllChannel()Z
    .locals 5

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    const-string v0, "RadioDBOperation"

    const-string v1, "updateAllChannel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "channels"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateChannelFavorite(II)Z
    .locals 5
    .parameter "favorite"
    .parameter "freq"

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    const-string v1, "RadioDBOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateChannelFavorite favorite="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " freq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "channelFavorite"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    iget-object v1, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "channels"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelFreq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 196
    .end local v0           #args:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateChannelName(Ljava/lang/String;I)Z
    .locals 5
    .parameter "name"
    .parameter "freq"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    const-string v1, "RadioDBOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateChannelName name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " freq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "channelName"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "channels"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelFreq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 187
    .end local v0           #args:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateChannelPlaying(II)Z
    .locals 5
    .parameter "isplaying"
    .parameter "freq"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    const-string v1, "RadioDBOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateChannelName isplaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " freq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "channelPlaying"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    iget-object v1, p0, Lcom/lenovo/fm/RadioDBOperation;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "channels"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelFreq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 206
    .end local v0           #args:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
