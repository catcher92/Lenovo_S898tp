.class final Lcom/lenovo/fm/RadioActivity$27;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2539
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2541
    invoke-static {p2}, Lcom/lenovo/fm/RadioActivity;->access$6002(I)I

    .line 2542
    packed-switch p2, :pswitch_data_0

    .line 2575
    :goto_0
    return-void

    .line 2544
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6202(I)I

    goto :goto_0

    .line 2549
    :pswitch_1
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6202(I)I

    goto :goto_0

    .line 2554
    :pswitch_2
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6202(I)I

    goto :goto_0

    .line 2559
    :pswitch_3
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6202(I)I

    goto :goto_0

    .line 2564
    :pswitch_4
    const/16 v0, 0x5a

    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6202(I)I

    goto :goto_0

    .line 2568
    :pswitch_5
    const/16 v0, 0x78

    invoke-static {v0}, Lcom/lenovo/fm/RadioActivity;->access$6202(I)I

    goto :goto_0

    .line 2542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
