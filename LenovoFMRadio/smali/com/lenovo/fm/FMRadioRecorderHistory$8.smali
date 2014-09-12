.class Lcom/lenovo/fm/FMRadioRecorderHistory$8;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 909
    const/4 v3, 0x0

    .line 911
    .local v3, list:[J
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1000(Lcom/lenovo/fm/FMRadioRecorderHistory;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 912
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->getSelSize()I
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1100(Lcom/lenovo/fm/FMRadioRecorderHistory;)I

    move-result v5

    .line 914
    .local v5, selSize:I
    if-nez v5, :cond_1

    .line 970
    .end local v5           #selSize:I
    :cond_0
    :goto_0
    return-void

    .line 917
    .restart local v5       #selSize:I
    :cond_1
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1200()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 918
    .local v4, listSize:I
    new-array v3, v5, [J

    .line 919
    const/4 v2, 0x0

    .line 921
    .local v2, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 922
    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1200()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 923
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 933
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 939
    .local v1, id_idx:I
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1300(Lcom/lenovo/fm/FMRadioRecorderHistory;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v3, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v1           #id_idx:I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 921
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 948
    .end local v0           #i:I
    .end local v2           #j:I
    .end local v4           #listSize:I
    .end local v5           #selSize:I
    :cond_3
    new-array v3, v9, [J

    .line 949
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mSelectedId:J
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1400(Lcom/lenovo/fm/FMRadioRecorderHistory;)J

    move-result-wide v6

    aput-wide v6, v3, v10

    .line 952
    :cond_4
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-static {v6, v3, v9}, Lcom/lenovo/fm/FMRadioRecorderHistory;->deleteTracks(Landroid/content/Context;[JZ)V

    .line 953
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    iget-object v7, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
    invoke-static {v7}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$800(Lcom/lenovo/fm/FMRadioRecorderHistory;)Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->getQueryHandler()Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    move-result-object v7

    const/4 v8, 0x0

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->getTrackCursor(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v6, v7, v8, v9}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$900(Lcom/lenovo/fm/FMRadioRecorderHistory;Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 954
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #setter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z
    invoke-static {v6, v10}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1002(Lcom/lenovo/fm/FMRadioRecorderHistory;Z)Z

    .line 955
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1000(Lcom/lenovo/fm/FMRadioRecorderHistory;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 956
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->showDeleteMode()V
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1500(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    .line 961
    :goto_3
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$800(Lcom/lenovo/fm/FMRadioRecorderHistory;)Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->bIsSelMode:Z
    invoke-static {v7}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1000(Lcom/lenovo/fm/FMRadioRecorderHistory;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->setIsMulti(Z)V

    .line 962
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$800(Lcom/lenovo/fm/FMRadioRecorderHistory;)Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->notifyDataSetChanged()V

    .line 965
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-static {}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1200()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 967
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-virtual {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->finish()V

    goto/16 :goto_0

    .line 958
    :cond_5
    iget-object v6, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$8;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->hideDeleteMode()V
    invoke-static {v6}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$1600(Lcom/lenovo/fm/FMRadioRecorderHistory;)V

    goto :goto_3

    .line 940
    .restart local v0       #i:I
    .restart local v2       #j:I
    .restart local v4       #listSize:I
    .restart local v5       #selSize:I
    :catch_0
    move-exception v6

    goto :goto_2
.end method
