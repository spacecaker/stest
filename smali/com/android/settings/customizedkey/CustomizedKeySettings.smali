.class public Lcom/android/settings/customizedkey/CustomizedKeySettings;
.super Landroid/preference/PreferenceActivity;
.source "CustomizedKeySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;
    }
.end annotation


# static fields
.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

.field private mBookmarksCursor:Landroid/database/Cursor;

.field private mBookmarksObserver:Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;

.field private mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

.field private mClearDialogShortcut:C

.field private mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

.field private mShortcutGroup:Landroid/preference/PreferenceGroup;

.field private mShortcutToPreference:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/customizedkey/ShortcutPreference2;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mUiHandler:Landroid/os/Handler;

    .line 470
    return-void
.end method

.method private AssignReset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 225
    .local v0, pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    invoke-virtual {v0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 226
    invoke-virtual {v0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v1

    iput-char v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    .line 229
    iget-char v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    invoke-direct {p0, v1}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->clearShortcut(C)V

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 231
    iput-char v3, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080521

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->replaceBookmark()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->AssignReset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->refreshShortcuts()V

    return-void
.end method

.method private clearShortcut(C)V
    .locals 6
    .parameter "shortcut"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method private createPreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;
    .locals 4
    .parameter "shortcut"

    .prologue
    .line 357
    new-instance v0, Lcom/android/settings/customizedkey/ShortcutPreference2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/customizedkey/ShortcutPreference2;-><init>(Landroid/content/Context;C)V

    .line 358
    .local v0, pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    const-string v1, "hwan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 360
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    return-object v0
.end method

.method private getOrCreatePreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;
    .locals 4
    .parameter "shortcut"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 348
    .local v0, pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 352
    :goto_0
    return-object v1

    .line 351
    :cond_0
    const-string v1, "CustomizedKeySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shortcut \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', creating preference anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0, p1}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->createPreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;

    move-result-object v1

    goto :goto_0
.end method

.method private initShortcutPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 367
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 368
    .local v2, shortcutSeen:Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 375
    .local v0, keyMap:Landroid/view/KeyCharacterMap;
    const/16 v1, 0x2b

    .line 376
    .local v1, shortcut:C
    invoke-virtual {v2, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 378
    invoke-direct {p0, v1}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->createPreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 380
    const-string v3, "GT-S5830i"

    const-string v4, "GT-B5510"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SER"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 381
    :cond_0
    const/16 v1, 0x2d

    .line 382
    invoke-virtual {v2, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 384
    invoke-direct {p0, v1}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->createPreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 388
    :cond_1
    return-void
.end method

.method private declared-synchronized refreshShortcuts()V
    .locals 19

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarksCursor:Landroid/database/Cursor;

    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .local v3, c:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 468
    :goto_0
    monitor-exit p0

    return-void

    .line 397
    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v15

    if-nez v15, :cond_1

    .line 398
    const-string v15, "CustomizedKeySettings"

    const-string v16, "Could not requery cursor when refreshing shortcuts."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 391
    .end local v3           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 407
    .restart local v3       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    move-object v10, v0

    .line 408
    .local v10, noLongerBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 409
    .local v9, newBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 410
    const/4 v15, 0x0

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    int-to-char v15, v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    .line 411
    .local v13, shortcut:C
    if-eqz v13, :cond_2

    .line 412
    const-string v15, "GT-S5830i"

    const-string v16, "GT-B5510"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v15, "SER"

    const-string v16, "ro.csc.sales_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 413
    const/16 v15, 0x2b

    if-ne v13, v15, :cond_2

    .line 418
    :cond_3
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getOrCreatePreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;

    move-result-object v12

    .line 419
    .local v12, pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/provider/Settings$Bookmarks;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 426
    .local v14, title:Ljava/lang/CharSequence;
    const-string v15, "intent"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 427
    .local v7, intentColumn:I
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 428
    .local v8, intentUri:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 430
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    :try_start_3
    invoke-static {v8}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 431
    .local v6, intent:Landroid/content/Intent;
    const/4 v15, 0x0

    invoke-virtual {v11, v6, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 432
    .local v5, info:Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_4

    .line 433
    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v14

    .line 439
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_4
    :goto_2
    :try_start_4
    invoke-virtual {v12, v14}, Lcom/android/settings/customizedkey/ShortcutPreference2;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    const v15, 0x7f080385

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/android/settings/customizedkey/ShortcutPreference2;->setSummary(Ljava/lang/CharSequence;)V

    .line 442
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/android/settings/customizedkey/ShortcutPreference2;->setHasBookmark(Z)V

    .line 444
    const/4 v15, 0x1

    invoke-virtual {v9, v13, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 445
    if-eqz v10, :cond_2

    .line 448
    const/4 v15, 0x0

    invoke-virtual {v10, v13, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_1

    .line 415
    .end local v7           #intentColumn:I
    .end local v8           #intentUri:Ljava/lang/String;
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .end local v12           #pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    .end local v14           #title:Ljava/lang/CharSequence;
    :cond_5
    const/16 v15, 0x2b

    if-eq v13, v15, :cond_3

    const/16 v15, 0x2d

    if-eq v13, v15, :cond_3

    goto/16 :goto_1

    .line 452
    .end local v13           #shortcut:C
    :cond_6
    if-eqz v10, :cond_8

    .line 453
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    const/16 v16, 0x1

    sub-int v4, v15, v16

    .local v4, i:I
    :goto_3
    if-ltz v4, :cond_8

    .line 454
    invoke-virtual {v10, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 456
    invoke-virtual {v10, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    int-to-char v13, v15

    .line 457
    .restart local v13       #shortcut:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutToPreference:Landroid/util/SparseArray;

    move-object v15, v0

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 458
    .restart local v12       #pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    if-eqz v12, :cond_7

    .line 459
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Lcom/android/settings/customizedkey/ShortcutPreference2;->setHasBookmark(Z)V

    .line 453
    .end local v12           #pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    .end local v13           #shortcut:C
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 465
    .end local v4           #i:I
    :cond_8
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 467
    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 435
    .restart local v7       #intentColumn:I
    .restart local v8       #intentUri:Ljava/lang/String;
    .restart local v11       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v12       #pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    .restart local v13       #shortcut:C
    .restart local v14       #title:Ljava/lang/CharSequence;
    :catch_0
    move-exception v15

    goto :goto_2
.end method

.method private replaceBookmark()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/customizedkey/BookmarkPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    const-string v1, "com.android.settings.customizedkey.SHORTCUT"

    iget-object v2, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    invoke-virtual {v2}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 216
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    return-void
.end method

.method private updateShortcut(CLandroid/content/Intent;)V
    .locals 6
    .parameter "shortcut"
    .parameter "intent"

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string v3, "@customiezedkey"

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    .line 344
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 319
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 323
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 326
    if-nez p3, :cond_1

    .line 327
    const-string v1, "CustomizedKeySettings"

    const-string v2, "Result from bookmark picker does not have an intent."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_1
    const-string v1, "com.android.settings.customizedkey.SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    .line 332
    .local v0, shortcut:C
    invoke-direct {p0, v0, p3}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->updateShortcut(CLandroid/content/Intent;)V

    goto :goto_0

    .line 335
    .end local v0           #shortcut:C
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 245
    iget-char v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 247
    iget-char v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    invoke-direct {p0, v0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->clearShortcut(C)V

    .line 249
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 250
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    .line 251
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->addPreferencesFromResource(I)V

    .line 118
    const-string v0, "shortcut_category2"

    invoke-virtual {p0, v0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutToPreference:Landroid/util/SparseArray;

    .line 120
    new-instance v0, Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;

    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;-><init>(Lcom/android/settings/customizedkey/CustomizedKeySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarksObserver:Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;

    .line 121
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->initShortcutPreferences()V

    .line 122
    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/customizedkey/CustomizedKeySettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarksCursor:Landroid/database/Cursor;

    .line 124
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_0

    .line 197
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050033

    new-instance v2, Lcom/android/settings/customizedkey/CustomizedKeySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings$1;-><init>(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarksObserver:Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 260
    instance-of v1, p2, Lcom/android/settings/customizedkey/ShortcutPreference2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 304
    :goto_0
    return v1

    .line 264
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/settings/customizedkey/ShortcutPreference2;

    move-object v1, v0

    .line 265
    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 266
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    .line 268
    invoke-virtual {v1}, Lcom/android/settings/customizedkey/ShortcutPreference2;->hasBookmark()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    invoke-virtual {v1}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    .line 275
    :cond_1
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050033

    new-instance v3, Lcom/android/settings/customizedkey/CustomizedKeySettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings$2;-><init>(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->alert:Landroid/app/AlertDialog;

    .line 292
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_2
    move v1, v4

    .line 304
    goto :goto_0

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    invoke-virtual {v1}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 299
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/customizedkey/BookmarkPicker;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    const-string v3, "com.android.settings.customizedkey.SHORTCUT"

    invoke-virtual {v1}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v2, v4}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 202
    packed-switch p1, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 205
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 206
    .local v1, alertDialog:Landroid/app/AlertDialog;
    const v2, 0x7f080387

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-char v5, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 146
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarksObserver:Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->refreshShortcuts()V

    .line 132
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 155
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    iget-char v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    return-void
.end method
