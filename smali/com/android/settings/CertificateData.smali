.class public Lcom/android/settings/CertificateData;
.super Ljava/lang/Object;
.source "CertificateData.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private data:Ljavax/security/cert/X509Certificate;

.field private issuerDn:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field private signatureAlgorithm:Ljava/lang/String;

.field private subjectDn:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "version"
    .parameter "serialNumber"
    .parameter "issuerDn"
    .parameter "data"
    .parameter "subjectDn"
    .parameter "publicKey"
    .parameter "signatureAlgorithm"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/settings/CertificateData;->version:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/android/settings/CertificateData;->serialNumber:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/android/settings/CertificateData;->issuerDn:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/android/settings/CertificateData;->data:Ljavax/security/cert/X509Certificate;

    .line 27
    iput-object p5, p0, Lcom/android/settings/CertificateData;->subjectDn:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/android/settings/CertificateData;->publicKey:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lcom/android/settings/CertificateData;->signatureAlgorithm:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/android/settings/CertificateData;->parse()V

    .line 32
    return-void
.end method

.method private parse()V
    .locals 10

    .prologue
    const-string v6, "OU="

    const-string v5, "O="

    const-string v9, "CN="

    .line 39
    iget-object v3, p0, Lcom/android/settings/CertificateData;->issuerDn:Ljava/lang/String;

    const-string v4, "CN="

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/CertificateData;->issuerDn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/CertificateData;->issuerDn:Ljava/lang/String;

    const-string v5, "CN="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/android/settings/CertificateData;->issuerDn:Ljava/lang/String;

    const/16 v6, 0x2c

    iget-object v7, p0, Lcom/android/settings/CertificateData;->issuerDn:Ljava/lang/String;

    const-string v8, "CN="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CertificateData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 43
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/settings/CertificateData;->issuerDn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/CertificateData;->issuerDn:Ljava/lang/String;

    const-string v5, "CN="

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CertificateData;->name:Ljava/lang/String;

    goto :goto_0

    .line 47
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/settings/CertificateData;->issuerDn:Ljava/lang/String;

    const-string v4, ","

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v1, st:Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, temp:Ljava/lang/String;
    const-string v3, "CN="

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 52
    const-string v3, "CN="

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CertificateData;->name:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_3
    const-string v3, "OU="

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    const-string v3, "OU="

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CertificateData;->name:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_4
    const-string v3, "O="

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    const-string v3, "O="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CertificateData;->name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "arg0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/CertificateData;->name:Ljava/lang/String;

    check-cast p1, Lcom/android/settings/CertificateData;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/CertificateData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFinalDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/CertificateData;->data:Ljavax/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CertificateData;->issuerDn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/CertificateData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/CertificateData;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/CertificateData;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/CertificateData;->signatureAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/CertificateData;->data:Ljavax/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CertificateData;->subjectDn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/CertificateData;->version:Ljava/lang/String;

    return-object v0
.end method
