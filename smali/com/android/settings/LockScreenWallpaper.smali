.class public Lcom/android/settings/LockScreenWallpaper;
.super Landroid/preference/PreferenceActivity;
.source "LockScreenWallpaper.java"


# instance fields
.field mGallery:Landroid/preference/Preference;

.field mWallpaperGallery:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->addPreferencesFromResource(I)V

    .line 42
    const-string v0, "wallpaper_gallery"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mWallpaperGallery:Landroid/preference/Preference;

    .line 43
    const-string v0, "gallery"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mGallery:Landroid/preference/Preference;

    .line 44
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 48
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mWallpaperGallery:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 49
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v1, intentCallWallpaperChooser:Landroid/content/Intent;
    const-string v2, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.twwallpaperchooser"

    const-string v4, "com.sec.android.app.twwallpaperchooser.WallpaperChooser"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    move v2, v5

    .line 62
    .end local v1           #intentCallWallpaperChooser:Landroid/content/Intent;
    :goto_0
    return v2

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mGallery:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.LockScreenPhotographs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    move v2, v5

    .line 60
    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 62
    goto :goto_0
.end method
