.class Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;
.super Ljava/lang/Object;
.source "AutoSetBrightnessTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/AutoSetBrightnessTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdjustListData"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;


# direct methods
.method private constructor <init>(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->this$0:Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lightadjust/AutoSetBrightnessTask;Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;-><init>(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)V

    return-void
.end method


# virtual methods
.method public getListData(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    monitor-enter v1

    .line 190
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getListLastData()I
    .locals 4

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    monitor-enter v2

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    .local v0, count:I
    if-lez v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    .line 206
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    monitor-exit v2

    goto :goto_0

    .line 208
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getListSize()I
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListData(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    monitor-enter v2

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->mList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    monitor-exit v2

    .line 186
    return-void

    .line 185
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
