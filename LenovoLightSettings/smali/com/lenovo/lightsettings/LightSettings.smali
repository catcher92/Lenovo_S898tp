.class public Lcom/lenovo/lightsettings/LightSettings;
.super Landroid/preference/PreferenceActivity;
.source "LightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "LightSettings-lset"

.field static bStop:Z

.field static mCount:I


# instance fields
.field private mComingCallSwitch:Landroid/preference/CheckBoxPreference;

.field private mDlalog:Landroid/app/AlertDialog;

.field mHandler:Landroid/os/Handler;

.field private mLighDisplayRunable:Ljava/lang/Runnable;

.field mLightDisplaySwitch:Landroid/preference/Preference;

.field private mLowBatterySwitch:Landroid/preference/CheckBoxPreference;

.field private mMissCallSwitch:Landroid/preference/CheckBoxPreference;

.field private mOtherSwitch:Landroid/preference/CheckBoxPreference;

.field private mUnreadMsgSwitch:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/lightsettings/LightSettings;->mCount:I

    .line 214
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lightsettings/LightSettings;->bStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lightsettings/LightSettings;->mHandler:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lightsettings/LightSettings;->mDlalog:Landroid/app/AlertDialog;

    .line 215
    new-instance v0, Lcom/lenovo/lightsettings/LightSettings$2;

    invoke-direct {v0, p0}, Lcom/lenovo/lightsettings/LightSettings$2;-><init>(Lcom/lenovo/lightsettings/LightSettings;)V

    iput-object v0, p0, Lcom/lenovo/lightsettings/LightSettings;->mLighDisplayRunable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/lightsettings/LightSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightSettings;->mLighDisplayRunable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/lightsettings/LightSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightSettings;->mDlalog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/lightsettings/LightSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/lightsettings/LightSettings;->mDlalog:Landroid/app/AlertDialog;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/lenovo/lightsettings/LightUtils;->initSuportValue(Landroid/content/Context;)V

    .line 43
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/lenovo/lightsettings/LightSettings;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/lenovo/lightsettings/LightSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, result:I
    const-string v2, "light_switch_display"

    invoke-virtual {p0, v2}, Lcom/lenovo/lightsettings/LightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mLightDisplaySwitch:Landroid/preference/Preference;

    .line 48
    const-string v2, "support_light_demo"

    const-string v5, "switch"

    invoke-static {p0, v2, v5, v4}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x4000

    if-eq v2, v5, :cond_6

    .line 50
    invoke-virtual {p0}, Lcom/lenovo/lightsettings/LightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/lenovo/lightsettings/LightSettings;->mLightDisplaySwitch:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :cond_0
    :goto_0
    const-string v2, "light_switch_coming_call"

    invoke-virtual {p0, v2}, Lcom/lenovo/lightsettings/LightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mComingCallSwitch:Landroid/preference/CheckBoxPreference;

    .line 103
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mComingCallSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    const-string v2, "support_call_coming"

    const-string v5, "switch"

    invoke-static {p0, v2, v5, v4}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x400

    if-eq v2, v5, :cond_7

    .line 106
    invoke-virtual {p0}, Lcom/lenovo/lightsettings/LightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/lenovo/lightsettings/LightSettings;->mComingCallSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    :cond_1
    :goto_1
    const-string v2, "light_switch_miss_call"

    invoke-virtual {p0, v2}, Lcom/lenovo/lightsettings/LightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mMissCallSwitch:Landroid/preference/CheckBoxPreference;

    .line 118
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mMissCallSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    const-string v2, "Misscall"

    const-string v5, "switch"

    invoke-static {p0, v2, v5}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 121
    if-eq v1, v6, :cond_2

    .line 122
    if-ne v1, v3, :cond_9

    move v0, v3

    .line 123
    .local v0, checked:Z
    :goto_2
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mMissCallSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    .end local v0           #checked:Z
    :cond_2
    const-string v2, "light_switch_unread_msg"

    invoke-virtual {p0, v2}, Lcom/lenovo/lightsettings/LightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mUnreadMsgSwitch:Landroid/preference/CheckBoxPreference;

    .line 127
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mUnreadMsgSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    const-string v2, "UnreadMsg"

    const-string v5, "switch"

    invoke-static {p0, v2, v5}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 130
    if-eq v1, v6, :cond_3

    .line 131
    if-ne v1, v3, :cond_a

    move v0, v3

    .line 132
    .restart local v0       #checked:Z
    :goto_3
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mUnreadMsgSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    .end local v0           #checked:Z
    :cond_3
    const-string v2, "light_switch_lowbattery"

    invoke-virtual {p0, v2}, Lcom/lenovo/lightsettings/LightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mLowBatterySwitch:Landroid/preference/CheckBoxPreference;

    .line 136
    const-string v2, "support_low_battery"

    const-string v5, "switch"

    invoke-static {p0, v2, v5, v4}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x2000

    if-eq v2, v5, :cond_b

    .line 137
    invoke-virtual {p0}, Lcom/lenovo/lightsettings/LightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/lenovo/lightsettings/LightSettings;->mLowBatterySwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    :cond_4
    :goto_4
    const-string v2, "light_switch_otherapp"

    invoke-virtual {p0, v2}, Lcom/lenovo/lightsettings/LightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mOtherSwitch:Landroid/preference/CheckBoxPreference;

    .line 149
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mOtherSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 150
    const-string v2, "support_other"

    const-string v5, "switch"

    invoke-static {p0, v2, v5, v4}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/high16 v5, 0x2

    if-eq v2, v5, :cond_d

    .line 151
    invoke-virtual {p0}, Lcom/lenovo/lightsettings/LightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lightsettings/LightSettings;->mOtherSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    :cond_5
    :goto_5
    return-void

    .line 52
    :cond_6
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mLightDisplaySwitch:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mLightDisplaySwitch:Landroid/preference/Preference;

    new-instance v5, Lcom/lenovo/lightsettings/LightSettings$1;

    invoke-direct {v5, p0}, Lcom/lenovo/lightsettings/LightSettings$1;-><init>(Lcom/lenovo/lightsettings/LightSettings;)V

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 108
    :cond_7
    const-string v2, "IncomingCall"

    const-string v5, "switch"

    invoke-static {p0, v2, v5}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 110
    if-eq v1, v6, :cond_1

    .line 111
    if-ne v1, v3, :cond_8

    move v0, v3

    .line 112
    .restart local v0       #checked:Z
    :goto_6
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mComingCallSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .end local v0           #checked:Z
    :cond_8
    move v0, v4

    .line 111
    goto :goto_6

    :cond_9
    move v0, v4

    .line 122
    goto/16 :goto_2

    :cond_a
    move v0, v4

    .line 131
    goto :goto_3

    .line 139
    :cond_b
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mLowBatterySwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    const-string v2, "LowBattery"

    const-string v5, "switch"

    invoke-static {p0, v2, v5}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 142
    if-eq v1, v6, :cond_4

    .line 143
    if-ne v1, v3, :cond_c

    move v0, v3

    .line 144
    .restart local v0       #checked:Z
    :goto_7
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mLowBatterySwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    .end local v0           #checked:Z
    :cond_c
    move v0, v4

    .line 143
    goto :goto_7

    .line 153
    :cond_d
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mOtherSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    const-string v2, "ohter_notio"

    const-string v5, "switch"

    invoke-static {p0, v2, v5}, Lcom/lenovo/lightsettings/LightUtils;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 156
    if-eq v1, v6, :cond_5

    .line 157
    if-ne v1, v3, :cond_e

    move v0, v3

    .line 158
    .restart local v0       #checked:Z
    :goto_8
    iget-object v2, p0, Lcom/lenovo/lightsettings/LightSettings;->mOtherSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5

    .end local v0           #checked:Z
    :cond_e
    move v0, v4

    .line 157
    goto :goto_8
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "LightSettings-lset"

    const-string v1, "onDestroy ~"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 211
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/lenovo/lightsettings/LightSettings;->finish()V

    .line 253
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 191
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lightsettings/LightSettings;->bStop:Z

    .line 192
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightSettings;->mDlalog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/lenovo/lightsettings/LightSettings;->mDlalog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 196
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    .line 234
    move-object v2, p1

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 235
    .local v2, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, k:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/lightsettings/LightUtils;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, dataKey:Ljava/lang/String;
    const/4 v3, 0x0

    .line 238
    .local v3, result:I
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    const/4 v3, 0x1

    .line 241
    :cond_0
    const-string v4, "switch"

    invoke-static {p0, v0, v4, v3}, Lcom/lenovo/lightsettings/LightUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    invoke-static {}, Lcom/lenovo/lightsettings/LightManager;->update_light_status()V

    .line 244
    const/4 v4, 0x0

    return v4
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 170
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "LightSettings-lset"

    const-string v1, "onStop ~"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lightsettings/LightSettings;->bStop:Z

    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 204
    return-void
.end method
