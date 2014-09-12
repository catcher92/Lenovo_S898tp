.class public Lcom/lenovo/fm/RadioService$MyBinder;
.super Landroid/os/Binder;
.source "RadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/fm/RadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/fm/RadioService;


# direct methods
.method public constructor <init>(Lcom/lenovo/fm/RadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/lenovo/fm/RadioService$MyBinder;->this$0:Lcom/lenovo/fm/RadioService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/lenovo/fm/RadioService;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lenovo/fm/RadioService$MyBinder;->this$0:Lcom/lenovo/fm/RadioService;

    return-object v0
.end method
