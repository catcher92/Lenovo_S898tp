.class Lcom/lenovo/lightsettings/LightSettings$1$2;
.super Ljava/lang/Object;
.source "LightSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lightsettings/LightSettings$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lightsettings/LightSettings$1;


# direct methods
.method constructor <init>(Lcom/lenovo/lightsettings/LightSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightSettings$1$2;->this$1:Lcom/lenovo/lightsettings/LightSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lightsettings/LightSettings;->bStop:Z

    .line 85
    const/4 v0, 0x0

    return v0
.end method
