.class public Lcom/lenovo/fm/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final AIRPLANE_MODE_IS_ON:I = 0x1

.field private static final AR_CHAR:[Ljava/lang/String; = null

.field private static final AR_EIGHT:Ljava/lang/String; = "\u0668"

.field private static final AR_FIVE:Ljava/lang/String; = "\u0665"

.field private static final AR_FOUR:Ljava/lang/String; = "\u0664"

.field private static final AR_NINE:Ljava/lang/String; = "\u0669"

.field private static final AR_ONE:Ljava/lang/String; = "\u0661"

.field private static final AR_SEVEN:Ljava/lang/String; = "\u0667"

.field private static final AR_SIX:Ljava/lang/String; = "\u0666"

.field private static final AR_THREE:Ljava/lang/String; = "\u0663"

.field private static final AR_TWO:Ljava/lang/String; = "\u0662"

.field private static final AR_ZERO:Ljava/lang/String; = "\u0660"

.field private static final LANGUAGE_AR:Ljava/lang/String; = "ar"

.field private static final MTK_MARK:Ljava/lang/String; = "mt"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.fm"

.field private static final TAG:Ljava/lang/String; = "FMRadio Util"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0660"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0661"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0662"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0663"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0664"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0665"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0666"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0667"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0668"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0669"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/fm/Util;->AR_CHAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAirplaneMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCallEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    const/4 v1, 0x1

    .line 94
    .local v1, isEnabled:Z
    :try_start_0
    const-string v4, "ro.lesafe.mode"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    .local v0, callValue:I
    if-eq v0, v2, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    move v1, v3

    .line 99
    .end local v0           #callValue:I
    :goto_0
    return v1

    .restart local v0       #callValue:I
    :cond_1
    move v1, v2

    .line 95
    goto :goto_0

    .line 96
    .end local v0           #callValue:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isLanguageAR()Z
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, language:Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 39
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMTK()Z
    .locals 3

    .prologue
    .line 70
    const-string v0, "FMRadio Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMTK buildHardware = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNameUseable(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, ret:Z
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, tmp:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const/4 v2, 0x0

    .line 66
    :goto_0
    return v2

    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 54
    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "<"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ">"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    const/4 v0, 0x1

    :cond_1
    move v2, v0

    .line 66
    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 88
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lenovo/fm/Util;->isCallEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static numEn2Ar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "channel"

    .prologue
    .line 78
    invoke-static {}, Lcom/lenovo/fm/Util;->isLanguageAR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lenovo/fm/Util;->AR_CHAR:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0           #i:I
    :cond_0
    return-object p0
.end method
