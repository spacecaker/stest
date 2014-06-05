.class public Lcom/android/settings/ChooseLockPassword;
.super Landroid/app/Activity;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$Stage;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field isChangePwdRequired:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFirstPin:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMinPasswordComplexChars:I

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settings/ChooseLockPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 61
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    .line 63
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 65
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 82
    iput v1, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    .line 83
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 88
    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 365
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, pin:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const/4 v1, 0x0

    .line 370
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_3

    .line 371
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    if-nez v1, :cond_2

    .line 373
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    .line 374
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 375
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 419
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/ChooseLockPassword;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V

    goto :goto_0

    .line 377
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_2

    .line 378
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 380
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 381
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 384
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->setResult(I)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 389
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 409
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_1

    .line 411
    :cond_5
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 412
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 413
    .local v3, tmp:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 414
    move-object v0, v3

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method private initViews()V
    .locals 9

    .prologue
    const/high16 v7, 0x2

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "ChooseLockPassword"

    .line 164
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->setContentView(I)V

    .line 167
    const-string v1, "GT-S5830i"

    const-string v2, "GT-B5510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_3

    move v1, v5

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 171
    .local v0, isLandBase:Ljava/lang/Boolean;
    const-string v1, "ChooseLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLandBase SecFeature.DEVICE_NAME.startsWith(GT-B5510) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GT-S5830i"

    const-string v3, "GT-B5510"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v1, "ChooseLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResources().getConfiguration().orientation      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 179
    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    .line 180
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v1, 0x7f0b0022

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    .line 182
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 185
    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    .line 186
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    const/high16 v1, 0x4

    iget v2, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-eq v1, v2, :cond_0

    const/high16 v1, 0x5

    iget v2, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v1, v2, :cond_4

    :cond_0
    move v1, v5

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    .line 191
    new-instance v1, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 192
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v2, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v2, :cond_5

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 196
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    .line 197
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 200
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v6, :cond_2

    .line 207
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v1, :cond_6

    .line 208
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 213
    :cond_2
    :goto_3
    return-void

    .end local v0           #isLandBase:Ljava/lang/Boolean;
    :cond_3
    move v1, v4

    .line 167
    goto/16 :goto_0

    .restart local v0       #isLandBase:Ljava/lang/Boolean;
    :cond_4
    move v1, v4

    .line 189
    goto :goto_1

    :cond_5
    move v2, v5

    .line 192
    goto :goto_2

    .line 210
    :cond_6
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_3
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ChooseLockPassword$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/ChooseLockPassword$1;-><init>(Lcom/android/settings/ChooseLockPassword;Lcom/android/settings/ChooseLockPassword$Stage;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 470
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 472
    .local v1, length:I
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_3

    if-lez v1, :cond_3

    .line 473
    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v1, v4, :cond_1

    .line 474
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v4, :cond_0

    const v4, 0x7f080116

    :goto_0
    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 492
    .end local v2           #msg:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v5, v5, Lcom/android/settings/ChooseLockPassword$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 493
    return-void

    .line 474
    :cond_0
    const v4, 0x7f080117

    goto :goto_0

    .line 479
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 481
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 484
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x7f080118

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 485
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 489
    .end local v0           #error:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v5, v5, Lcom/android/settings/ChooseLockPassword$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 490
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 489
    :cond_4
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v5, v5, Lcom/android/settings/ChooseLockPassword$Stage;->numericHint:I

    goto :goto_2

    :cond_5
    move v5, v7

    .line 490
    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "password"

    .prologue
    const v13, 0x7f08011f

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v9, v10, :cond_1

    .line 293
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v9, :cond_0

    const v9, 0x7f080116

    :goto_0
    new-array v10, v11, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 361
    :goto_1
    return-object v9

    .line 293
    :cond_0
    const v9, 0x7f080117

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    if-le v9, v10, :cond_3

    .line 298
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v9, :cond_2

    const v9, 0x7f08011a

    :goto_2
    new-array v10, v11, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    const v9, 0x7f08011b

    goto :goto_2

    .line 302
    :cond_3
    const/4 v4, 0x0

    .line 303
    .local v4, hasAlpha:Z
    const/4 v5, 0x0

    .line 304
    .local v5, hasDigit:Z
    const/4 v6, 0x0

    .line 305
    .local v6, hasSymbol:Z
    const/4 v3, 0x0

    .line 306
    .local v3, countComplex:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_a

    .line 307
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 309
    .local v2, c:C
    const/16 v9, 0x20

    if-le v2, v9, :cond_4

    const/16 v9, 0x7f

    if-le v2, v9, :cond_5

    .line 310
    :cond_4
    const v9, 0x7f08011d

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 312
    :cond_5
    const/16 v9, 0x30

    if-lt v2, v9, :cond_6

    const/16 v9, 0x39

    if-gt v2, v9, :cond_6

    .line 313
    const/4 v5, 0x1

    .line 314
    add-int/lit8 v3, v3, 0x1

    .line 306
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 315
    :cond_6
    const/16 v9, 0x41

    if-lt v2, v9, :cond_7

    const/16 v9, 0x5a

    if-le v2, v9, :cond_8

    :cond_7
    const/16 v9, 0x61

    if-lt v2, v9, :cond_9

    const/16 v9, 0x7a

    if-gt v2, v9, :cond_9

    .line 316
    :cond_8
    const/4 v4, 0x1

    goto :goto_4

    .line 318
    :cond_9
    const/4 v6, 0x1

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 322
    .end local v2           #c:C
    :cond_a
    const/high16 v9, 0x2

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v9, v10, :cond_b

    or-int v9, v4, v6

    if-eqz v9, :cond_b

    .line 325
    const v9, 0x7f08011c

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 327
    :cond_b
    const/high16 v9, 0x4

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v9, v10, :cond_d

    move v0, v11

    .line 329
    .local v0, alphabetic:Z
    :goto_5
    const/high16 v9, 0x5

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v9, v10, :cond_e

    move v1, v11

    .line 331
    .local v1, alphanumeric:Z
    :goto_6
    const/4 v8, 0x0

    .line 332
    .local v8, symbolic:Z
    if-nez v0, :cond_c

    if-eqz v1, :cond_f

    :cond_c
    if-nez v4, :cond_f

    .line 333
    const v9, 0x7f08011e

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    .end local v8           #symbolic:Z
    :cond_d
    move v0, v12

    .line 327
    goto :goto_5

    .restart local v0       #alphabetic:Z
    :cond_e
    move v1, v12

    .line 329
    goto :goto_6

    .line 335
    .restart local v1       #alphanumeric:Z
    .restart local v8       #symbolic:Z
    :cond_f
    if-eqz v1, :cond_10

    if-nez v5, :cond_10

    .line 336
    invoke-virtual {p0, v13}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 347
    :cond_10
    if-eqz v1, :cond_11

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-lez v9, :cond_11

    if-nez v5, :cond_11

    .line 349
    invoke-virtual {p0, v13}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 350
    :cond_11
    if-eqz v1, :cond_12

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-le v9, v11, :cond_12

    if-nez v6, :cond_12

    .line 352
    const v9, 0x7f080120

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 353
    :cond_12
    if-eqz v1, :cond_13

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-ge v3, v9, :cond_13

    .line 355
    const v9, 0x7f080122

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 357
    :cond_13
    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->verifyPasswordHistory(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 358
    const v9, 0x7f080123

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 361
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v0, v1, :cond_0

    .line 498
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->updateUi()V

    .line 501
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 505
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 270
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 271
    packed-switch p1, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 273
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setResult(I)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 426
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->handleNext()V

    goto :goto_0

    .line 431
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-nez v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x7f0b0021
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_type"

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_min"

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_max"

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "confirm_credentials"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    .local v0, confirmCredentials:Z
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    .line 126
    .local v2, minMode:I
    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ge v4, v2, :cond_0

    .line 127
    iput v2, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v1

    .line 130
    .local v1, minLength:I
    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v4, v1, :cond_1

    .line 131
    iput v1, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 135
    :cond_1
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getMinPasswordComplexChars()I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_3

    .line 137
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    .line 139
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 144
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-ne v4, v7, :cond_5

    sget-object v4, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_old"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, oldPw:Ljava/lang/String;
    invoke-static {v3}, Landroid/deviceencryption/DeviceEncryptionManager;->checkPassword(Ljava/lang/String;)Z

    .line 152
    .end local v3           #oldPw:Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->initViews()V

    .line 153
    new-instance v4, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 154
    if-nez p1, :cond_6

    .line 155
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 156
    if-eqz v0, :cond_6

    .line 157
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5, v8, v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 161
    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 232
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 449
    if-nez p2, :cond_1

    .line 458
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->handleNext()V

    :cond_0
    move v0, v1

    .line 463
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 235
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 245
    :goto_0
    return v0

    .line 239
    :catch_0
    move-exception v0

    move v0, v1

    .line 241
    goto :goto_0

    :catchall_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 245
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 259
    const-string v1, "ui_stage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, state:Ljava/lang/String;
    const-string v1, "first_pin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    .line 261
    if-eqz v0, :cond_0

    .line 262
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 263
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 265
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 221
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f080121

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 223
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 252
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 509
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 283
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->updateUi()V

    .line 284
    return-void
.end method
