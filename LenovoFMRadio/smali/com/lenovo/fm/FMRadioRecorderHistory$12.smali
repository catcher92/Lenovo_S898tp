.class Lcom/lenovo/fm/FMRadioRecorderHistory$12;
.super Ljava/lang/Object;
.source "FMRadioRecorderHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/fm/FMRadioRecorderHistory;->prepareAttr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;


# direct methods
.method constructor <init>(Lcom/lenovo/fm/FMRadioRecorderHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/lenovo/fm/FMRadioRecorderHistory$12;->this$0:Lcom/lenovo/fm/FMRadioRecorderHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1504
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1505
    return-void
.end method