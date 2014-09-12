.class Landroid/view/VolumePanel$5;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->initAudioProfile(Landroid/view/ViewGroup;)V
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
    .line 1667
    iput-object p1, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 1672
    packed-switch p2, :pswitch_data_0

    .line 1696
    :goto_0
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Landroid/view/VolumePanel;->access$000(Landroid/view/VolumePanel;)V

    .line 1698
    :goto_1
    return-void

    .line 1676
    :pswitch_0
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->isCurrModeUserDifine:Z
    invoke-static {v0}, Landroid/view/VolumePanel;->access$900(Landroid/view/VolumePanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    const/4 v1, 0x0

    #setter for: Landroid/view/VolumePanel;->isCurrModeUserDifine:Z
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$902(Landroid/view/VolumePanel;Z)Z

    goto :goto_1

    .line 1681
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    const-string v1, "mtk_audioprofile_general"

    #calls: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1684
    :pswitch_1
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    const-string v1, "mtk_audioprofile_silent"

    #calls: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1687
    :pswitch_2
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    const-string v1, "mtk_audioprofile_meeting"

    #calls: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1690
    :pswitch_3
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    const-string v1, "mtk_audioprofile_outdoor"

    #calls: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1672
    :pswitch_data_0
    .packed-switch 0x30c0020
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
