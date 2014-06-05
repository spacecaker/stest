.class public Lcom/android/settings/CertificateReader;
.super Ljava/lang/Object;
.source "CertificateReader.java"


# instance fields
.field dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/CertificateData;",
            ">;"
        }
    .end annotation
.end field

.field private passWord:[C

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/CertificateReader;->passWord:[C

    .line 26
    invoke-direct {p0}, Lcom/android/settings/CertificateReader;->readCretificate()V

    .line 28
    return-void

    .line 14
    nop

    :array_0
    .array-data 0x2
        0x63t 0x0t
        0x68t 0x0t
        0x61t 0x0t
        0x6et 0x0t
        0x67t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x74t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/CertificateReader;->passWord:[C

    .line 19
    iput-object p1, p0, Lcom/android/settings/CertificateReader;->path:Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Lcom/android/settings/CertificateReader;->readCretificate()V

    .line 21
    iget-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 22
    return-void

    .line 14
    :array_0
    .array-data 0x2
        0x63t 0x0t
        0x68t 0x0t
        0x61t 0x0t
        0x6et 0x0t
        0x67t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x74t 0x0t
    .end array-data
.end method

.method private readCretificate()V
    .locals 13

    .prologue
    .line 40
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/android/settings/CertificateReader;->path:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 41
    .local v9, fis:Ljava/io/FileInputStream;
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 42
    .local v11, ks:Ljava/security/KeyStore;
    iget-object v0, p0, Lcom/android/settings/CertificateReader;->passWord:[C

    invoke-virtual {v11, v9, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 43
    const-string v0, "Certificate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/security/KeyStore;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key load complete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {v11}, Ljava/security/KeyStore;->size()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v4

    .line 48
    .local v4, temp:Ljavax/security/cert/X509Certificate;
    iget-object v12, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/CertificateData;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getVersion()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/CertificateData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 58
    .end local v4           #temp:Ljavax/security/cert/X509Certificate;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v10           #i:I
    .end local v11           #ks:Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 59
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    .end local v8           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCertificateFinalDate(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/CertificateData;

    invoke-virtual {p0}, Lcom/android/settings/CertificateData;->getFinalDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateIssuerDn(I)Ljava/lang/String;
    .locals 6
    .parameter "position"

    .prologue
    .line 77
    const-string v0, " "

    .line 79
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/CertificateData;

    invoke-virtual {p0}, Lcom/android/settings/CertificateData;->getIssuerDn()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, temp:Ljava/lang/String;
    const-string v3, " Inc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    .end local v2           #temp:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getCertificateName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/CertificateData;

    invoke-virtual {p0}, Lcom/android/settings/CertificateData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificatePublicKey(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/CertificateData;

    invoke-virtual {p0}, Lcom/android/settings/CertificateData;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/CertificateData;

    invoke-virtual {p0}, Lcom/android/settings/CertificateData;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateSignatureAlgorithm(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/CertificateData;

    invoke-virtual {p0}, Lcom/android/settings/CertificateData;->getSignatureAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateSize()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCertificateStartDate(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/CertificateData;

    invoke-virtual {p0}, Lcom/android/settings/CertificateData;->getStartDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateSubjectDn(I)Ljava/lang/String;
    .locals 6
    .parameter "position"

    .prologue
    .line 96
    const-string v0, " "

    .line 98
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/CertificateData;

    invoke-virtual {p0}, Lcom/android/settings/CertificateData;->getSubjectDn()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, temp:Ljava/lang/String;
    const-string v3, " Inc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    .end local v2           #temp:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getCertificateVersion(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/CertificateReader;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/CertificateData;

    invoke-virtual {p0}, Lcom/android/settings/CertificateData;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
