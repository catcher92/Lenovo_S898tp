.class Lcom/lenovo/fm/RadioActivity$ViewHolder;
.super Ljava/lang/Object;
.source "RadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field channelItem:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lenovo/fm/RadioActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/fm/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3292
    iput-object p1, p0, Lcom/lenovo/fm/RadioActivity$ViewHolder;->this$0:Lcom/lenovo/fm/RadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/fm/RadioActivity;Lcom/lenovo/fm/RadioActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3292
    invoke-direct {p0, p1}, Lcom/lenovo/fm/RadioActivity$ViewHolder;-><init>(Lcom/lenovo/fm/RadioActivity;)V

    return-void
.end method
