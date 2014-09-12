.class public Lcom/lenovo/lightsettings/LightService$LocalBinder;
.super Landroid/os/Binder;
.source "LightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lightsettings/LightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lightsettings/LightService;


# direct methods
.method public constructor <init>(Lcom/lenovo/lightsettings/LightService;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightService$LocalBinder;->this$0:Lcom/lenovo/lightsettings/LightService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/lenovo/lightsettings/LightService;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightService$LocalBinder;->this$0:Lcom/lenovo/lightsettings/LightService;

    return-object v0
.end method
