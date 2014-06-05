.class public Lcom/android/settings/ConfirmLockPassword;
.super Landroid/app/Activity;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPassword;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, pin:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPassword;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->finish()V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const v1, 0x7f0802db

    invoke-direct {p0, v1}, Lcom/android/settings/ConfirmLockPassword;->showError(I)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 9

    .prologue
    const/high16 v4, 0x2

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 58
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    .line 59
    .local v2, storedQuality:I
    const v3, 0x7f030014

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 64
    const v3, 0x7f0b0021

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v3, 0x7f0b0022

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v3, 0x7f0b001f

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    .line 67
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 68
    const v3, 0x7f0b0020

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 69
    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    .line 70
    const/high16 v3, 0x4

    if-eq v3, v2, :cond_0

    const/high16 v3, 0x5

    if-ne v3, v2, :cond_3

    :cond_0
    move v0, v7

    .line 72
    .local v0, isAlpha:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const v4, 0x7f0802cf

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 74
    new-instance v3, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 75
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v0, :cond_5

    move v4, v6

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 77
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v3}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    if-ne v3, v8, :cond_1

    .line 82
    if-eqz v0, :cond_6

    .line 83
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 89
    :cond_1
    :goto_3
    const-string v3, "GT-S5830i"

    const-string v4, "GT-B5510"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_7

    move v3, v7

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 92
    .local v1, isLandBase:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 96
    :cond_2
    return-void

    .end local v0           #isAlpha:Z
    .end local v1           #isLandBase:Ljava/lang/Boolean;
    :cond_3
    move v0, v6

    .line 70
    goto :goto_0

    .line 72
    .restart local v0       #isAlpha:Z
    :cond_4
    const v4, 0x7f0802d0

    goto :goto_1

    :cond_5
    move v4, v7

    .line 75
    goto :goto_2

    .line 85
    :cond_6
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_3

    :cond_7
    move v3, v6

    .line 89
    goto :goto_4
.end method

.method private showError(I)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$1;-><init>(Lcom/android/settings/ConfirmLockPassword;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 124
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->handleNext()V

    goto :goto_0

    .line 128
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPassword;->setResult(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->finish()V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x7f0b0021
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 54
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->initViews()V

    .line 55
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 146
    if-nez p2, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->handleNext()V

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 109
    return-void
.end method
