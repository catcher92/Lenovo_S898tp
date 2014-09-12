.class Landroid/view/VolumePanel$4;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->listenToRingerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x6

    .line 566
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 569
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v4, v6}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 570
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v5, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v5, v6}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 580
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Landroid/view/VolumePanel;->access$500(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 581
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->forceTimeout()V
    invoke-static {v4}, Landroid/view/VolumePanel;->access$100(Landroid/view/VolumePanel;)V

    goto :goto_0

    .line 584
    :cond_2
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 586
    const-string v4, "android.intent.extra.configuration.font_changed"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 587
    .local v1, changefont:Z
    if-eqz v1, :cond_3

    .line 588
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v4, v4, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/FontThemeManager;->changeTextFont(Landroid/content/Context;)V

    .line 589
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->createSliders()V
    invoke-static {v4}, Landroid/view/VolumePanel;->access$600(Landroid/view/VolumePanel;)V

    .line 590
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v5, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v5}, Landroid/view/VolumePanel;->access$200(Landroid/view/VolumePanel;)I

    move-result v5

    #calls: Landroid/view/VolumePanel;->reorderSliders(I)V
    invoke-static {v4, v5}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;I)V

    .line 592
    :cond_3
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Landroid/view/VolumePanel;->access$500(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 593
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 595
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v4, v4, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 597
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 599
    .end local v1           #changefont:Z
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #window:Landroid/view/Window;
    :cond_4
    const-string v4, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 609
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->createSliders()V
    invoke-static {v4}, Landroid/view/VolumePanel;->access$600(Landroid/view/VolumePanel;)V

    .line 611
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v5, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v5}, Landroid/view/VolumePanel;->access$200(Landroid/view/VolumePanel;)I

    move-result v5

    #calls: Landroid/view/VolumePanel;->reorderSliders(I)V
    invoke-static {v4, v5}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;I)V

    goto/16 :goto_0

    .line 602
    :cond_5
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->createSliders()V
    invoke-static {v4}, Landroid/view/VolumePanel;->access$600(Landroid/view/VolumePanel;)V

    .line 603
    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v5, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v5}, Landroid/view/VolumePanel;->access$200(Landroid/view/VolumePanel;)I

    move-result v5

    #calls: Landroid/view/VolumePanel;->reorderSliders(I)V
    invoke-static {v4, v5}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;I)V

    goto/16 :goto_0
.end method
