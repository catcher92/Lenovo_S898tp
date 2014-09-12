.class abstract Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;
.super Ljava/lang/Object;
.source "Wheel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/wheel/view/Wheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "IFlingRunnable"
.end annotation


# instance fields
.field protected mLastFlingX:I

.field final synthetic this$0:Lit/sephiroth/android/wheel/view/Wheel;


# direct methods
.method constructor <init>(Lit/sephiroth/android/wheel/view/Wheel;)V
    .locals 0
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract _startUsingDistance(II)V
.end method

.method protected abstract _startUsingVelocity(II)V
.end method

.method protected abstract computeScrollOffset()Z
.end method

.method protected endFling(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 977
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->forceFinished(Z)V

    .line 979
    if-eqz p1, :cond_0

    .line 980
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    #calls: Lit/sephiroth/android/wheel/view/Wheel;->scrollIntoSlots()V
    invoke-static {v0}, Lit/sephiroth/android/wheel/view/Wheel;->access$200(Lit/sephiroth/android/wheel/view/Wheel;)V

    .line 982
    :cond_0
    return-void
.end method

.method protected abstract forceFinished(Z)V
.end method

.method protected abstract getCurrX()I
.end method

.method public abstract isFinished()Z
.end method

.method public run()V
    .locals 4

    .prologue
    .line 991
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    const/4 v3, 0x0

    #setter for: Lit/sephiroth/android/wheel/view/Wheel;->mShouldStopFling:Z
    invoke-static {v2, v3}, Lit/sephiroth/android/wheel/view/Wheel;->access$302(Lit/sephiroth/android/wheel/view/Wheel;Z)Z

    .line 993
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->computeScrollOffset()Z

    move-result v0

    .line 994
    .local v0, more:Z
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->getCurrX()I

    move-result v1

    .line 996
    .local v1, x:I
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v2, v1}, Lit/sephiroth/android/wheel/view/Wheel;->trackMotionScroll(I)V

    .line 998
    if-eqz v0, :cond_0

    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    #getter for: Lit/sephiroth/android/wheel/view/Wheel;->mShouldStopFling:Z
    invoke-static {v2}, Lit/sephiroth/android/wheel/view/Wheel;->access$300(Lit/sephiroth/android/wheel/view/Wheel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 999
    iput v1, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->mLastFlingX:I

    .line 1000
    iget-object v2, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v2, p0}, Lit/sephiroth/android/wheel/view/Wheel;->post(Ljava/lang/Runnable;)Z

    .line 1004
    :goto_0
    return-void

    .line 1002
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->endFling(Z)V

    goto :goto_0
.end method

.method protected startCommon()V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/wheel/view/Wheel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 923
    return-void
.end method

.method public startUsingDistance(II)V
    .locals 1
    .parameter "initialX"
    .parameter "distance"

    .prologue
    .line 945
    if-nez p2, :cond_0

    .line 951
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->startCommon()V

    .line 948
    iput p1, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->mLastFlingX:I

    .line 949
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->mLastFlingX:I

    invoke-virtual {p0, v0, p2}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->_startUsingDistance(II)V

    .line 950
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/wheel/view/Wheel;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(II)V
    .locals 1
    .parameter "initialX"
    .parameter "initialVelocity"

    .prologue
    .line 962
    if-nez p2, :cond_0

    .line 968
    :goto_0
    return-void

    .line 964
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->startCommon()V

    .line 965
    iput p1, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->mLastFlingX:I

    .line 966
    iget v0, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->mLastFlingX:I

    invoke-virtual {p0, v0, p2}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->_startUsingVelocity(II)V

    .line 967
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/wheel/view/Wheel;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 932
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/wheel/view/Wheel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 933
    invoke-virtual {p0, p1}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;->endFling(Z)V

    .line 934
    return-void
.end method
