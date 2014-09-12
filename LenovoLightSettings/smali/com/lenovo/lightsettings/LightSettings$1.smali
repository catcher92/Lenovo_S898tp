.class Lcom/lenovo/lightsettings/LightSettings$1;
.super Ljava/lang/Object;
.source "LightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lightsettings/LightSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lightsettings/LightSettings;


# direct methods
.method constructor <init>(Lcom/lenovo/lightsettings/LightSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightSettings$1;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const v5, 0x8000

    const/4 v4, 0x0

    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "light_position"

    const-string v3, "switch"

    invoke-static {v1, v2, v3, v5}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 60
    iget-object v1, p0, Lcom/lenovo/lightsettings/LightSettings$1;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Lcom/lenovo/lightsettings/LightSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/lenovo/lightsettings/LightSettings$1;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Lcom/lenovo/lightsettings/LightSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object v1, p0, Lcom/lenovo/lightsettings/LightSettings$1;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Lcom/lenovo/lightsettings/LightSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/lightsettings/LightSettings$1$1;

    invoke-direct {v2, p0}, Lcom/lenovo/lightsettings/LightSettings$1$1;-><init>(Lcom/lenovo/lightsettings/LightSettings$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 78
    new-instance v1, Lcom/lenovo/lightsettings/LightSettings$1$2;

    invoke-direct {v1, p0}, Lcom/lenovo/lightsettings/LightSettings$1$2;-><init>(Lcom/lenovo/lightsettings/LightSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    sput v4, Lcom/lenovo/lightsettings/LightSettings;->mCount:I

    .line 90
    sput-boolean v4, Lcom/lenovo/lightsettings/LightSettings;->bStop:Z

    .line 91
    iget-object v1, p0, Lcom/lenovo/lightsettings/LightSettings$1;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    iget-object v1, v1, Lcom/lenovo/lightsettings/LightSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings$1;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    #getter for: Lcom/lenovo/lightsettings/LightSettings;->mLighDisplayRunable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/lenovo/lightsettings/LightSettings;->access$000(Lcom/lenovo/lightsettings/LightSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    iget-object v1, p0, Lcom/lenovo/lightsettings/LightSettings$1;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/lenovo/lightsettings/LightSettings;->mDlalog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/lenovo/lightsettings/LightSettings;->access$102(Lcom/lenovo/lightsettings/LightSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 93
    iget-object v1, p0, Lcom/lenovo/lightsettings/LightSettings$1;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    #getter for: Lcom/lenovo/lightsettings/LightSettings;->mDlalog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/lightsettings/LightSettings;->access$100(Lcom/lenovo/lightsettings/LightSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 94
    return v4

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/lenovo/lightsettings/LightSettings$1;->this$0:Lcom/lenovo/lightsettings/LightSettings;

    const v2, 0x7f060027

    invoke-virtual {v1, v2}, Lcom/lenovo/lightsettings/LightSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
