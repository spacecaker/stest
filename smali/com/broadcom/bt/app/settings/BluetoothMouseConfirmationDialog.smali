.class public Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothMouseConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final TIMEOUT_SECONDS:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field mHandler:Landroid/os/Handler;

.field mTimeout:I

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field messageView:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mHandler:Landroid/os/Handler;

    .line 48
    const/16 v0, 0x1e

    iput v0, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->TIMEOUT_SECONDS:I

    .line 96
    new-instance v0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;-><init>(Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->disconnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 114
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 115
    .local v2, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 117
    .local v1, cachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 118
    .local v0, cachedBluetoothDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 121
    .end local v0           #cachedBluetoothDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1           #cachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, currentAddress:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationBroadcastReceiver;->setLastConnectedMouseAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->finish()V

    .line 94
    return-void

    .line 88
    .end local v0           #currentAddress:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->disconnect()V

    .line 89
    const/4 v0, 0x0

    .restart local v0       #currentAddress:Ljava/lang/String;
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f080327

    .line 51
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 57
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 58
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->view:Landroid/view/View;

    .line 59
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->view:Landroid/view/View;

    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->messageView:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f02002c

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 62
    const v2, 0x7f0805c5

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 64
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->messageView:Landroid/widget/TextView;

    const v3, 0x7f0805c6

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0, v7}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mTimeout:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->view:Landroid/view/View;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 68
    invoke-virtual {p0, v7}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 69
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    const v2, 0x7f080328

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 71
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->setupAlert()V

    .line 75
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    const/16 v2, 0x1e

    iput v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mTimeout:I

    .line 77
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method
