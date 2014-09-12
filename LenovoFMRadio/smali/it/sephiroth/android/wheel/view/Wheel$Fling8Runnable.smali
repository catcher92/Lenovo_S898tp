.class Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;
.super Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/wheel/view/Wheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Fling8Runnable"
.end annotation


# instance fields
.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lit/sephiroth/android/wheel/view/Wheel;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/wheel/view/Wheel;)V
    .locals 3
    .parameter

    .prologue
    .line 1067
    iput-object p1, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-direct {p0, p1}, Lit/sephiroth/android/wheel/view/Wheel$IFlingRunnable;-><init>(Lit/sephiroth/android/wheel/view/Wheel;)V

    .line 1068
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lit/sephiroth/android/wheel/view/Wheel;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->mScroller:Landroid/widget/Scroller;

    .line 1069
    return-void
.end method


# virtual methods
.method protected _startUsingDistance(II)V
    .locals 6
    .parameter "initialX"
    .parameter "distance"

    .prologue
    const/4 v2, 0x0

    .line 1102
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    iget v5, v1, Lit/sephiroth/android/wheel/view/Wheel;->mAnimationDuration:I

    move v1, p1

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1103
    return-void
.end method

.method protected _startUsingVelocity(II)V
    .locals 9
    .parameter "initialX"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 1090
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    iget v5, v1, Lit/sephiroth/android/wheel/view/Wheel;->mMinX:I

    iget-object v1, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    iget v6, v1, Lit/sephiroth/android/wheel/view/Wheel;->mMaxX:I

    const v8, 0x7fffffff

    move v1, p1

    move v3, p2

    move v4, v2

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1092
    return-void
.end method

.method protected computeScrollOffset()Z
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method protected forceFinished(Z)V
    .locals 1
    .parameter "finished"

    .prologue
    .line 1114
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1115
    return-void
.end method

.method protected getCurrX()I
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$Fling8Runnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method
