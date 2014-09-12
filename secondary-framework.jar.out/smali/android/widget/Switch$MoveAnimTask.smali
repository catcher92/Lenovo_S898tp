.class public Landroid/widget/Switch$MoveAnimTask;
.super Landroid/os/AsyncTask;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoveAnimTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field startTime:J

.field final synthetic this$0:Landroid/widget/Switch;

.field time:I

.field toRight:Z


# direct methods
.method public constructor <init>(Landroid/widget/Switch;Z)V
    .locals 5
    .parameter
    .parameter "check"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1008
    iput-object p1, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    .line 1009
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1004
    const/16 v0, 0xa

    iput v0, p0, Landroid/widget/Switch$MoveAnimTask;->time:I

    .line 1005
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/Switch$MoveAnimTask;->count:I

    .line 1006
    iput-boolean v1, p0, Landroid/widget/Switch$MoveAnimTask;->toRight:Z

    .line 1007
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/widget/Switch$MoveAnimTask;->startTime:J

    .line 1010
    iget-boolean v0, p1, Landroid/widget/Switch;->neadMove:Z

    if-eqz v0, :cond_0

    .line 1011
    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    #calls: Landroid/widget/Switch;->setThumbPosition(Z)V
    invoke-static {p1, v0}, Landroid/widget/Switch;->access$000(Landroid/widget/Switch;Z)V

    .line 1013
    :cond_0
    if-eqz p2, :cond_2

    iput-boolean v1, p0, Landroid/widget/Switch$MoveAnimTask;->toRight:Z

    .line 1015
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1011
    goto :goto_0

    .line 1014
    :cond_2
    iput-boolean v2, p0, Landroid/widget/Switch$MoveAnimTask;->toRight:Z

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1003
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/Switch$MoveAnimTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 8
    .parameter "params"

    .prologue
    .line 1034
    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    #calls: Landroid/widget/Switch;->getThumbScrollRange()I
    invoke-static {v4}, Landroid/widget/Switch;->access$100(Landroid/widget/Switch;)I

    move-result v0

    .line 1035
    .local v0, max:I
    int-to-float v4, v0

    iget v5, p0, Landroid/widget/Switch$MoveAnimTask;->count:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1036
    .local v3, tmpPos:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/Switch$MoveAnimTask;->startTime:J

    sub-long v1, v4, v6

    .line 1037
    .local v1, standTime:J
    :goto_0
    iget v4, p0, Landroid/widget/Switch$MoveAnimTask;->count:I

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-boolean v4, v4, Landroid/widget/Switch;->neadMove:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-boolean v4, v4, Landroid/widget/Switch;->isleaveWindow:Z

    if-nez v4, :cond_0

    const-wide/16 v4, 0xc8

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 1038
    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-boolean v4, v4, Landroid/widget/Switch;->isleaveWindow:Z

    if-eqz v4, :cond_1

    .line 1040
    const-string v4, "liqftest"

    const-string v5, "the switch isleaveWindow"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_0
    :goto_1
    const/4 v4, 0x0

    return-object v4

    .line 1043
    :cond_1
    iget-boolean v4, p0, Landroid/widget/Switch$MoveAnimTask;->toRight:Z

    if-eqz v4, :cond_2

    .line 1044
    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-static {v4, v3}, Landroid/widget/Switch;->access$216(Landroid/widget/Switch;F)F

    .line 1048
    :goto_2
    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    #getter for: Landroid/widget/Switch;->mThumbPosition:F
    invoke-static {v4}, Landroid/widget/Switch;->access$200(Landroid/widget/Switch;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    #getter for: Landroid/widget/Switch;->mThumbPosition:F
    invoke-static {v4}, Landroid/widget/Switch;->access$200(Landroid/widget/Switch;)F

    move-result v4

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 1049
    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->postInvalidate()V

    .line 1050
    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget v5, p0, Landroid/widget/Switch$MoveAnimTask;->time:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/Switch;->sleep(J)V

    .line 1051
    iget v4, p0, Landroid/widget/Switch$MoveAnimTask;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/Switch$MoveAnimTask;->count:I

    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/Switch$MoveAnimTask;->startTime:J

    sub-long v1, v4, v6

    goto :goto_0

    .line 1046
    :cond_2
    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-static {v4, v3}, Landroid/widget/Switch;->access$224(Landroid/widget/Switch;F)F

    goto :goto_2

    .line 1053
    :cond_3
    iget-object v4, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-object v5, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    #calls: Landroid/widget/Switch;->setThumbPosition(Z)V
    invoke-static {v4, v5}, Landroid/widget/Switch;->access$000(Landroid/widget/Switch;Z)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1003
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/Switch$MoveAnimTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 1068
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iput-boolean v2, v0, Landroid/widget/Switch;->neadMove:Z

    .line 1069
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-object v1, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    #calls: Landroid/widget/Switch;->setThumbPosition(Z)V
    invoke-static {v0, v1}, Landroid/widget/Switch;->access$000(Landroid/widget/Switch;Z)V

    .line 1070
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-boolean v0, v0, Landroid/widget/Switch;->isleaveWindow:Z

    if-nez v0, :cond_0

    .line 1071
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->invalidate()V

    .line 1073
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-object v1, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/Switch;->lastCheck:Z

    .line 1074
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iput-boolean v2, v0, Landroid/widget/Switch;->isMoving:Z

    .line 1075
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Switch;->isMoving:Z

    .line 1064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Switch$MoveAnimTask;->startTime:J

    .line 1065
    return-void
.end method
