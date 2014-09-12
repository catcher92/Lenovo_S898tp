.class public Lcom/lenovo/lightsettings/reflect/ReflectClass;
.super Ljava/lang/Object;
.source "ReflectClass.java"


# instance fields
.field private clazz:Ljava/lang/Class;

.field private clazzName:Ljava/lang/String;

.field private methodsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected realObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "paramString"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    .line 16
    iput-object v1, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazzName:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->methodsCache:Ljava/util/Map;

    .line 19
    iput-object v1, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->realObject:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazzName:Ljava/lang/String;

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazzName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->methodsCache:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, localException:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find class --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazzName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lenovo/lightsettings/reflect/ReflectMethod;
    .locals 7
    .parameter "paramString"
    .parameter "paramArrayOfClass"

    .prologue
    .line 40
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 41
    .local v4, ms:[Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v5, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 43
    .local v0, localMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    new-instance v2, Lcom/lenovo/lightsettings/reflect/ReflectMethod;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/lightsettings/reflect/ReflectMethod;-><init>(Lcom/lenovo/lightsettings/reflect/ReflectClass;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .end local v0           #localMethod:Ljava/lang/reflect/Method;
    .end local v4           #ms:[Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 47
    :catch_0
    move-exception v3

    .line 48
    .local v3, localSecurityException:Ljava/lang/SecurityException;
    const-string v5, "findmethod"

    const-string v6, "findmethod"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 54
    .end local v3           #localSecurityException:Ljava/lang/SecurityException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 50
    :catch_1
    move-exception v1

    .line 51
    .local v1, localNoSuchMethodException:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 52
    const-string v5, "findmethod2"

    const-string v6, "findmethod2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAllMethe()V
    .locals 1

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getConstBoolean(Ljava/lang/String;)Z
    .locals 7
    .parameter "paramString"

    .prologue
    .line 66
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 67
    .local v1, localField:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 79
    .end local v1           #localField:Ljava/lang/reflect/Field;
    :goto_0
    return v0

    .line 70
    :catch_0
    move-exception v5

    .line 71
    .local v5, localSecurityException:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 79
    .end local v5           #localSecurityException:Ljava/lang/SecurityException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v4

    .line 73
    .local v4, localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v4           #localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v3

    .line 75
    .local v3, localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v3           #localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 77
    .local v2, localIllegalAccessException:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getConstInt(Ljava/lang/String;)I
    .locals 7
    .parameter "paramString"

    .prologue
    .line 84
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 85
    .local v1, localField:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 98
    .end local v1           #localField:Ljava/lang/reflect/Field;
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v5

    .line 89
    .local v5, localSecurityException:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 98
    .end local v5           #localSecurityException:Ljava/lang/SecurityException;
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 91
    :catch_1
    move-exception v4

    .line 92
    .local v4, localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v4           #localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v3

    .line 94
    .local v3, localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v3           #localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 96
    .local v2, localIllegalAccessException:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getConstLong(Ljava/lang/String;)J
    .locals 8
    .parameter "paramString"

    .prologue
    .line 105
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 106
    .local v2, localField:Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v0

    .line 126
    .end local v2           #localField:Ljava/lang/reflect/Field;
    :goto_0
    return-wide v0

    .line 110
    :catch_0
    move-exception v6

    .line 112
    .local v6, localSecurityException:Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 126
    .end local v6           #localSecurityException:Ljava/lang/SecurityException;
    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v5

    .line 116
    .local v5, localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v5}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v5           #localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v4

    .line 120
    .local v4, localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 122
    .end local v4           #localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 124
    .local v3, localIllegalAccessException:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getConstObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "paramString"

    .prologue
    .line 133
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 134
    .local v0, localField:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 154
    .end local v0           #localField:Ljava/lang/reflect/Field;
    :goto_0
    return-object v4

    .line 138
    :catch_0
    move-exception v5

    .line 140
    .local v5, localSecurityException:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 154
    .end local v5           #localSecurityException:Ljava/lang/SecurityException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 142
    :catch_1
    move-exception v3

    .line 144
    .local v3, localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v3           #localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 148
    .local v2, localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v2           #localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 152
    .local v1, localIllegalAccessException:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getConstString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "paramString"

    .prologue
    const/4 v6, 0x0

    .line 159
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    if-nez v7, :cond_0

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not find class --"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazzName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 181
    :goto_0
    return-object v6

    .line 163
    :cond_0
    iget-object v7, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 164
    .local v1, localField:Ljava/lang/reflect/Field;
    if-nez v1, :cond_1

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not find filed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--in class--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazzName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 167
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 168
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v6

    .line 169
    .local v6, str:Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v1           #localField:Ljava/lang/reflect/Field;
    .end local v6           #str:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 171
    .local v5, localSecurityException:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v5           #localSecurityException:Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 173
    .local v4, localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 174
    .end local v4           #localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v3

    .line 175
    .local v3, localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v3           #localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 177
    .local v2, localIllegalAccessException:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 178
    .end local v2           #localIllegalAccessException:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .parameter "paramArrayOfClass"

    .prologue
    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v2

    .line 193
    .local v2, localSecurityException:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 199
    .end local v2           #localSecurityException:Ljava/lang/SecurityException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :catch_1
    move-exception v1

    .line 197
    .local v1, localNoSuchMethodException:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRealObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->realObject:Ljava/lang/Object;

    return-object v0
.end method

.method protected invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "paramString"
    .parameter "paramArrayOfClass"
    .parameter "paramClass"
    .parameter "paramArrayOfObject"

    .prologue
    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lightsettings/reflect/ReflectClass;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lenovo/lightsettings/reflect/ReflectMethod;

    move-result-object v1

    .line 211
    .local v1, localReflectMethod:Lcom/lenovo/lightsettings/reflect/ReflectMethod;
    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v1, p4}, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->setInvokeParams([Ljava/lang/Object;)Lcom/lenovo/lightsettings/reflect/ReflectMethod;

    .line 218
    iget-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->realObject:Ljava/lang/Object;

    .line 219
    .local v0, localObject:Ljava/lang/Object;
    invoke-virtual {v1, v0, p3}, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->invoke(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v0           #localObject:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 214
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not find methed  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--in class-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazzName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    .line 215
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "paramString"
    .parameter "paramArrayOfClass"
    .parameter "paramClass"
    .parameter "paramArrayOfObject"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lightsettings/reflect/ReflectClass;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/lenovo/lightsettings/reflect/ReflectMethod;

    move-result-object v0

    .line 226
    .local v0, localReflectMethod:Lcom/lenovo/lightsettings/reflect/ReflectMethod;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p4}, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->setInvokeParams([Ljava/lang/Object;)Lcom/lenovo/lightsettings/reflect/ReflectMethod;

    .line 228
    invoke-virtual {v0}, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->getMess()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 229
    .local v1, m:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {v0, v2, p3}, Lcom/lenovo/lightsettings/reflect/ReflectMethod;->invoke(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 238
    .end local v1           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v2

    .line 231
    .restart local v1       #m:Ljava/lang/reflect/Method;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not find methed  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--in class-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazzName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lightsettings/LightUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->realObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loaded()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIntFieldValue(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6
    .parameter "paramString"
    .parameter "paramInt"
    .parameter "paramObject"

    .prologue
    .line 260
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 261
    .local v0, localField:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 262
    invoke-virtual {v0, p3, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 273
    .end local v0           #localField:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v4

    .line 265
    .local v4, localSecurityException:Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v4           #localSecurityException:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 267
    .local v3, localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v3           #localNoSuchFieldException:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 269
    .local v2, localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v2           #localIllegalArgumentException:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 271
    .local v1, localIllegalAccessException:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "paramObject"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/lenovo/lightsettings/reflect/ReflectClass;->realObject:Ljava/lang/Object;

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
