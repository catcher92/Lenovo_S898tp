.class Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;
.super Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/wheel/view/Wheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Fling9Runnable"
.end annotation


# instance fields
.field private mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lit/sephiroth/android/wheel/view/Wheel;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/wheel/view/Wheel;)V
    .locals 3
    .parameter

    .prologue
    .line 1151
    iput-object p1, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-direct {p0, p1}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;-><init>(Lit/sephiroth/android/wheel/view/Wheel;)V

    .line 1152
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lit/sephiroth/android/wheel/view/Wheel;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->mScroller:Landroid/widget/OverScroller;

    .line 1154
    return-void
.end method


# virtual methods
.method protected _startUsingDistance(II)V
    .locals 6
    .parameter "initialX"
    .parameter "distance"

    .prologue
    const/4 v2, 0x0

    .line 1187
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    iget v5, v1, Lit/sephiroth/android/wheel/view/Wheel;->mAnimationDuration:I

    move v1, p1

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 1188
    return-void
.end method

.method protected _startUsingVelocity(II)V
    .locals 11
    .parameter "initialX"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 1175
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    iget v5, v1, Lit/sephiroth/android/wheel/view/Wheel;->mMinX:I

    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    iget v6, v1, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    const v8, 0x7fffffff

    const/16 v9, 0xa

    move v1, p1

    move v3, p2

    move v4, v2

    move v7, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1177
    return-void
.end method

.method protected computeScrollOffset()Z
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method protected forceFinished(Z)V
    .locals 1
    .parameter "finished"

    .prologue
    .line 1221
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1222
    return-void
.end method

.method protected getCurrX()I
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling9Runnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method
