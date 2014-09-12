.class Lcom/lenovo/fm/FMRadioRecorderHistory$6;
.super Landroid/os/Handler;
.source "FMRadioRecorderHistory.java"


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
    .line 575
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$6;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$6;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
    invoke-static {v0}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$800(Lcom/lenovo/fm/FMRadioRecorderHistory;)Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$6;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    iget-object v1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$6;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    #getter for: Lcom/lenovo/fm/FMRadioRecorderHistory;->mAdapter:Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;
    invoke-static {v1}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$800(Lcom/lenovo/fm/FMRadioRecorderHistory;)Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter;->getQueryHandler()Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    #calls: Lcom/lenovo/fm/FMRadioRecorderHistory;->getTrackCursor(Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/fm/FMRadioRecorderHistory;->access$900(Lcom/lenovo/fm/FMRadioRecorderHistory;Lcom/lenovo/fm/FMRadioRecorderHistory$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 584
    :cond_0
    return-void
.end method
