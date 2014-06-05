.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# static fields
.field private static final KEY_CALL_SETTINGS:Ljava/lang/String; = "call_settings"

.field private static final KEY_DOCK_SETTINGS:Ljava/lang/String; = "dock_settings"

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
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public ButtonClick1(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 91
    const-string v0, "W.I.P Of this button!"

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->ToastBox(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public ButtonClick2(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    const-string v0, "W.I.P Of this button!"

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->ToastBox(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public ButtonClick3(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 99
    const-string v0, "W.I.P Of this button!"

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->ToastBox(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public MenuClickButton(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/Settings;->openOptionsMenu()V

    .line 88
    return-void
.end method

.method public ToastBox(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x7

    .line 54
    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->requestWindowFeature(I)Z

    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v5, 0x7f040027

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->addPreferencesFromResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f030066

    invoke-virtual {v5, v7, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 62
    const-string v5, "toggle_wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 63
    .local v4, wifi:Landroid/preference/CheckBoxPreference;
    new-instance v5, Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {v5, p0, v4}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v5, p0, Lcom/android/settings/Settings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 66
    const-string v5, "toggle_bluetooth"

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 67
    .local v1, bt:Landroid/preference/CheckBoxPreference;
    new-instance v5, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v5, p0, Lcom/android/settings/Settings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 68
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 70
    .local v0, activePhoneType:I
    const-string v5, "parent"

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 71
    .local v3, parent:Landroid/preference/PreferenceGroup;
    const-string v5, "sync_settings"

    const/4 v6, 0x0

    invoke-static {p0, v3, v5, v6}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 73
    const-string v5, "dock_settings"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 74
    .local v2, dockSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 77
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 81
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 116
    iget-object v0, p0, Lcom/android/settings/Settings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/Settings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 105
    const-string v0, "call_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 106
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/Settings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/Settings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 111
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
