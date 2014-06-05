.class public Lcom/android/settings/customizedkey/ShortcutPreference2;
.super Landroid/preference/Preference;
.source "ShortcutPreference2.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/Preference;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static STRING_ASSIGN_APPLICATION:Ljava/lang/String;

.field private static STRING_NO_SHORTCUT:Ljava/lang/String;

.field private static sDimAlpha:I

.field private static sDimSummaryColor:Landroid/content/res/ColorStateList;

.field private static sDimTitleColor:Landroid/content/res/ColorStateList;

.field private static sRegularSummaryColor:Landroid/content/res/ColorStateList;

.field private static sRegularTitleColor:Landroid/content/res/ColorStateList;

.field private static sStaticVarsLock:Ljava/lang/Object;


# instance fields
.field private mHasBookmark:Z

.field private mShortcut:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->sStaticVarsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;C)V
    .locals 5
    .parameter "context"
    .parameter "shortcut"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v1, Lcom/android/settings/customizedkey/ShortcutPreference2;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    const v2, 0x7f080383

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/customizedkey/ShortcutPreference2;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    .line 58
    const v2, 0x7f08051f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/customizedkey/ShortcutPreference2;->STRING_NO_SHORTCUT:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 61
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 62
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimAlpha:I

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iput-char p2, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    .line 68
    return-void

    .line 64
    .end local v0           #outValue:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 144
    instance-of v1, p1, Lcom/android/settings/customizedkey/ShortcutPreference2;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    .line 150
    .end local p1
    :goto_0
    return v1

    .line 147
    .restart local p1
    :cond_0
    check-cast p1, Lcom/android/settings/customizedkey/ShortcutPreference2;

    .end local p1
    iget-char v0, p1, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    .line 148
    .local v0, other:C
    iget-char v1, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-char v1, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    .line 150
    :cond_2
    iget-char v1, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/customizedkey/ShortcutPreference2;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getShortcut()C
    .locals 1

    .prologue
    .line 71
    iget-char v0, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->STRING_NO_SHORTCUT:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasBookmark()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 106
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    .local v2, titleView:Landroid/widget/TextView;
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getShortcut = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_5

    .line 110
    const-string v3, " 1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 116
    :try_start_0
    sget-object v4, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_1

    .line 117
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    .line 118
    sget-object v4, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    sget v5, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimAlpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimTitleColor:Landroid/content/res/ColorStateList;

    .line 120
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-boolean v3, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    move-object v0, v3

    .line 123
    .local v0, color:Landroid/content/res/ColorStateList;
    :goto_1
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 127
    :cond_2
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    .local v1, summaryView:Landroid/widget/TextView;
    sget-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 130
    :try_start_1
    sget-object v4, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_3

    .line 131
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    .line 132
    sget-object v4, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    sget v5, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimAlpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimSummaryColor:Landroid/content/res/ColorStateList;

    .line 134
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    iget-boolean v3, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    move-object v0, v3

    .line 137
    :goto_2
    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 141
    :cond_4
    return-void

    .line 111
    .end local v0           #color:Landroid/content/res/ColorStateList;
    .end local v1           #summaryView:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 112
    const-string v3, " 2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 122
    :cond_6
    sget-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimTitleColor:Landroid/content/res/ColorStateList;

    move-object v0, v3

    goto :goto_1

    .line 134
    .restart local v0       #color:Landroid/content/res/ColorStateList;
    .restart local v1       #summaryView:Landroid/widget/TextView;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 136
    :cond_7
    sget-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimSummaryColor:Landroid/content/res/ColorStateList;

    move-object v0, v3

    goto :goto_2
.end method

.method public setHasBookmark(Z)V
    .locals 1
    .parameter "hasBookmark"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    if-eq p1, v0, :cond_0

    .line 87
    iput-boolean p1, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->notifyChanged()V

    .line 90
    :cond_0
    return-void
.end method
