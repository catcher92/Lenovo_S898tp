.class public Lcom/baidu/deviceoriginalsettings/CharacterSettings;
.super Landroid/preference/PreferenceActivity;
.source "CharacterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;

# static fields
.field public static final KEY_SWING_LOCK:Ljava/lang/String; = "swing_lock"

# instance fields
.field private mSwingLock:Landroid/preference/CheckBoxPreference;

# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->addPreferencesFromResource(I)V

    const-string v0, "swing_lock"

    invoke-virtual {p0, v0}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->mSwingLock:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter  "preferenceScreen"
    .parameter  "preference"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->mSwingLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->mSwingLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "swing_lock_enabled"

    const/4 v2, 0x1

    .line 78
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/deviceoriginalsettings/CharacterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "swing_lock_enabled"

    const/4 v2, 0x0

    .line 81
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
