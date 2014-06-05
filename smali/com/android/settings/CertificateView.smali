.class public Lcom/android/settings/CertificateView;
.super Landroid/preference/PreferenceActivity;
.source "CertificateView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const-string v10, "issuer"

    .line 13
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v8, 0x7f04000b

    invoke-virtual {p0, v8}, Lcom/android/settings/CertificateView;->addPreferencesFromResource(I)V

    .line 16
    const-string v8, "certificate_view_serial"

    invoke-virtual {p0, v8}, Lcom/android/settings/CertificateView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 17
    .local v4, serial:Landroid/preference/Preference;
    const-string v8, "certificate_view_issuer"

    invoke-virtual {p0, v8}, Lcom/android/settings/CertificateView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 18
    .local v2, issuer:Landroid/preference/Preference;
    const-string v8, "certificate_view_startdate"

    invoke-virtual {p0, v8}, Lcom/android/settings/CertificateView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 19
    .local v6, startDate:Landroid/preference/Preference;
    const-string v8, "certificate_view_finaldate"

    invoke-virtual {p0, v8}, Lcom/android/settings/CertificateView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 20
    .local v0, finalDate:Landroid/preference/Preference;
    const-string v8, "certificate_view_subject"

    invoke-virtual {p0, v8}, Lcom/android/settings/CertificateView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 21
    .local v7, subject:Landroid/preference/Preference;
    const-string v8, "certificate_view_publickey"

    invoke-virtual {p0, v8}, Lcom/android/settings/CertificateView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 22
    .local v3, publicKey:Landroid/preference/Preference;
    const-string v8, "certificate_view_signature"

    invoke-virtual {p0, v8}, Lcom/android/settings/CertificateView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 24
    .local v5, signature:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/CertificateView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 26
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "serialnumber"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 27
    const-string v8, "issuer"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 28
    const-string v8, "startdate"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 29
    const-string v8, "finaldate"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 30
    const-string v8, "issuer"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 31
    const-string v8, "publickey"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 32
    const-string v8, "signature"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method
