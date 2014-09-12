.class public abstract Lcom/mediatek/telephony/WorldPhoneUtil;
.super Ljava/lang/Object;
.source "WorldPhoneUtil.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static denyReasonToString(I)Ljava/lang/String;
    .locals 1
    .parameter "reason"

    .prologue
    .line 167
    packed-switch p0, :pswitch_data_0

    .line 184
    const-string v0, "Invalid Reason"

    .line 187
    .local v0, drString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 169
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "CAMP_ON_NOT_DENIED"

    .line 170
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "DENY_CAMP_ON_REASON_UNKNOWN"

    .line 173
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "DENY_CAMP_ON_REASON_NEED_SWITCH_TO_FDD"

    .line 176
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "DENY_CAMP_ON_REASON_NEED_SWITCH_TO_TDD"

    .line 179
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_4
    const-string v0, "DENY_CAMP_ON_REASON_DOMESTIC_WCDMA"

    .line 182
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMcc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "srcImsiOrPlmn"

    .prologue
    .line 61
    if-eqz p0, :cond_0

    .line 62
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const-string v1, "[getMcc] null source"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMccMnc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "srcImsiOrPlmn"

    .prologue
    .line 51
    if-eqz p0, :cond_0

    .line 52
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 55
    :cond_0
    const-string v1, "[getMccMnc] null source"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMnc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "srcImsiOrPlmn"

    .prologue
    .line 71
    if-eqz p0, :cond_0

    .line 72
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const-string v1, "[getMnc] null source"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 191
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPP_UTIL]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public static modemToString(I)Ljava/lang/String;
    .locals 1
    .parameter "mdType"

    .prologue
    .line 123
    packed-switch p0, :pswitch_data_0

    .line 131
    const-string v0, "Unknown modem"

    .line 134
    .local v0, modemString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 125
    .end local v0           #modemString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "TDD modem"

    .line 126
    .restart local v0       #modemString:Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v0           #modemString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "FDD modem"

    .line 129
    .restart local v0       #modemString:Ljava/lang/String;
    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static regStateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "regState"

    .prologue
    .line 139
    packed-switch p0, :pswitch_data_0

    .line 159
    const-string v0, "Invalid RegState"

    .line 162
    .local v0, rsString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 141
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING"

    .line 142
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGISTRATION_STATE_HOME_NETWORK"

    .line 145
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 147
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING"

    .line 148
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "REGISTRATION_STATE_REGISTRATION_DENIED"

    .line 151
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 153
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_4
    const-string v0, "REGISTRATION_STATE_UNKNOWN"

    .line 154
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_5
    const-string v0, "REGISTRATION_STATE_ROAMING"

    .line 157
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static regionToString(I)Ljava/lang/String;
    .locals 1
    .parameter "region"

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 93
    const-string v0, "Invalid Region"

    .line 96
    .local v0, regionString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 84
    .end local v0           #regionString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGION_UNKNOWN"

    .line 85
    .restart local v0       #regionString:Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v0           #regionString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGION_DOMESTIC"

    .line 88
    .restart local v0       #regionString:Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v0           #regionString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGION_FOREIGN"

    .line 91
    .restart local v0       #regionString:Ljava/lang/String;
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 101
    packed-switch p0, :pswitch_data_0

    .line 115
    const-string v0, "Invalid State"

    .line 118
    .local v0, stateString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 103
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "STATE_POWER_OFF"

    .line 104
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "STATE_IN_SERVICE"

    .line 107
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "STATE_OUT_OF_SERVICE"

    .line 110
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "STATE_EMERGENCY_ONLY"

    .line 113
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
