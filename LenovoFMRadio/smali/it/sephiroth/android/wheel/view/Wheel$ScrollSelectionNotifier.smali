.class Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;
.super Ljava/lang/Object;
.source "Wheel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/wheel/view/Wheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollSelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/wheel/view/Wheel;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/wheel/view/Wheel;)V
    .locals 0
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/wheel/view/Wheel;Lit/sephiroth/android/wheel/view/Wheel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;-><init>(Lit/sephiroth/android/wheel/view/Wheel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    iget-object v0, v0, Lit/sephiroth/android/wheel/view/Wheel;->mShader3:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/wheel/view/Wheel;->post(Ljava/lang/Runnable;)Z

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/wheel/view/Wheel$ScrollSelectionNotifier;->this$0:Lit/sephiroth/android/wheel/view/Wheel;

    #calls: Lit/sephiroth/android/wheel/view/Wheel;->fireOnScrollCompleted()V
    invoke-static {v0}, Lit/sephiroth/android/wheel/view/Wheel;->access$000(Lit/sephiroth/android/wheel/view/Wheel;)V

    goto :goto_0
.end method
