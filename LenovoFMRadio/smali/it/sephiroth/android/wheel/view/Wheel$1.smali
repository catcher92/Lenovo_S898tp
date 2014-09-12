.class Lit/sephiroth/android/wheel/view/Wheel$1;
.super Landroid/os/Handler;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/wheel/view/Wheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/wheel/view/Wheel;


# direct methods
.method constructor <init>(Lit/sephiroth/android/wheel/view/Wheel;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lit/sephiroth/android/wheel/view/Wheel$1;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 245
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 248
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel$1;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    iget-object v1, v1, Lit/sephiroth/android/wheel/view/Wheel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
