.class public Lcom/android/settings/AboutSettings;
.super Landroid/preference/PreferenceActivity;
.source "AboutSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f04003b

    invoke-virtual {p0, v0}, Lcom/android/settings/AboutSettings;->addPreferencesFromResource(I)V

    .line 34
    return-void
.end method
