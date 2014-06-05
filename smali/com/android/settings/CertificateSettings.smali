.class public Lcom/android/settings/CertificateSettings;
.super Landroid/preference/PreferenceActivity;
.source "CertificateSettings.java"


# instance fields
.field private cr:Lcom/android/settings/CertificateReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/settings/CertificateSettings;->addPreferencesFromResource(I)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/security/cacerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/android/settings/CertificateReader;

    invoke-direct {v1, v0}, Lcom/android/settings/CertificateReader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/CertificateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 44
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v2}, Lcom/android/settings/CertificateReader;->getCertificateSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 45
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v3, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v3, v1}, Lcom/android/settings/CertificateReader;->getCertificateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/CertificateView;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "name"

    iget-object v5, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v5, v1}, Lcom/android/settings/CertificateReader;->getCertificateName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "version"

    iget-object v5, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v5, v1}, Lcom/android/settings/CertificateReader;->getCertificateVersion(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "serialnumber"

    iget-object v5, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v5, v1}, Lcom/android/settings/CertificateReader;->getCertificateSerialNumber(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "issuer"

    iget-object v5, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v5, v1}, Lcom/android/settings/CertificateReader;->getCertificateIssuerDn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "startdate"

    iget-object v5, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v5, v1}, Lcom/android/settings/CertificateReader;->getCertificateStartDate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "finaldate"

    iget-object v5, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v5, v1}, Lcom/android/settings/CertificateReader;->getCertificateFinalDate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "subject"

    iget-object v5, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v5, v1}, Lcom/android/settings/CertificateReader;->getCertificateSubjectDn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "publickey"

    iget-object v5, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v5, v1}, Lcom/android/settings/CertificateReader;->getCertificatePublicKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "signature"

    iget-object v5, p0, Lcom/android/settings/CertificateSettings;->cr:Lcom/android/settings/CertificateReader;

    invoke-virtual {v5, v1}, Lcom/android/settings/CertificateReader;->getCertificateSignatureAlgorithm(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 60
    :cond_0
    return-void
.end method
