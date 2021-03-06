.class public Lcom/android/settings/ListSettings;
.super Landroid/preference/PreferenceActivity;
.source "ListSettings.java"


# static fields
.field private static final KEY_CALL_SETTINGS:Ljava/lang/String; = "call_settings"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_SYNC_SETTINGS:Ljava/lang/String; = "sync_settings"

.field private static final KEY_TOGGLE_BLUETOOTH:Ljava/lang/String; = "toggle_bluetooth"

.field private static final KEY_TOGGLE_WIFI:Ljava/lang/String; = "toggle_wifi"


# instance fields
.field private mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v4, 0x7f04003f

    invoke-virtual {p0, v4}, Lcom/android/settings/ListSettings;->addPreferencesFromResource(I)V

    .line 32
    const-string v4, "toggle_wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/ListSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 33
    .local v3, wifi:Landroid/preference/CheckBoxPreference;
    new-instance v4, Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/settings/ListSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 36
    const-string v4, "toggle_bluetooth"

    invoke-virtual {p0, v4}, Lcom/android/settings/ListSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 37
    .local v1, bt:Landroid/preference/CheckBoxPreference;
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/settings/ListSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 38
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 40
    .local v0, activePhoneType:I
    const-string v4, "parent"

    invoke-virtual {p0, v4}, Lcom/android/settings/ListSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 41
    .local v2, parent:Landroid/preference/PreferenceGroup;
    const-string v4, "sync_settings"

    const/4 v5, 0x0

    invoke-static {p0, v2, v4, v5}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 42
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/android/settings/ListSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/ListSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 47
    const-string v0, "call_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/ListSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 48
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/ListSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 52
    iget-object v0, p0, Lcom/android/settings/ListSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 53
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
