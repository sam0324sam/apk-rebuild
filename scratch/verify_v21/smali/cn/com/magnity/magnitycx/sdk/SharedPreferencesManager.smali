.class public Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;
.super Ljava/lang/Object;
.source "SharedPreferencesManager.java"


# static fields
.field private static editor_:Landroid/content/SharedPreferences$Editor;

.field private static preferences_:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commit()Z
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    .line 57
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # F

    .prologue
    .line 43
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 30
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "magnitycx"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->preferences_:Landroid/content/SharedPreferences;

    .line 12
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->preferences_:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    .line 13
    return-void
.end method

.method public static putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 48
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static putBooleanWithCommit(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 52
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 53
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public static putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 34
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static putFloatWithCommit(Ljava/lang/String;F)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 38
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 39
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public static putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 21
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static putIntWithCommit(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 25
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 26
    sget-object v0, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->editor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    return-void
.end method
