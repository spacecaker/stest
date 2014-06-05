.class public Lcom/android/settings/customizedkey/BookmarkPicker;
.super Landroid/app/ListActivity;
.source "BookmarkPicker.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# static fields
.field private static final sKeys:[Ljava/lang/String;

.field private static sLaunchIntent:Landroid/content/Intent;

.field private static final sResourceIds:[I

.field private static sShortcutIntent:Landroid/content/Intent;


# instance fields
.field private mDisplayMode:I

.field private mMyAdapter:Landroid/widget/SimpleAdapter;

.field private mResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 86
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TITLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RESOLVE_INFO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/customizedkey/BookmarkPicker;->sKeys:[Ljava/lang/String;

    .line 87
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/customizedkey/BookmarkPicker;->sResourceIds:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x19t 0x0t 0xbt 0x7ft
        0x18t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mDisplayMode:I

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/customizedkey/BookmarkPicker;->fillResolveList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/customizedkey/BookmarkPicker;->fillAdapterList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/customizedkey/BookmarkPicker;->updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/customizedkey/BookmarkPicker;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mMyAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/customizedkey/BookmarkPicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mMyAdapter:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/customizedkey/BookmarkPicker;->createResolveAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mResolveList:Ljava/util/List;

    return-object p1
.end method

.method private createResolveAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Landroid/widget/SimpleAdapter;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03000c

    sget-object v4, Lcom/android/settings/customizedkey/BookmarkPicker;->sKeys:[Ljava/lang/String;

    sget-object v5, Lcom/android/settings/customizedkey/BookmarkPicker;->sResourceIds:[I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 215
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v0, p0}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 216
    return-object v0
.end method

.method private ensureIntents()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/android/settings/customizedkey/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/customizedkey/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/customizedkey/BookmarkPicker;->sShortcutIntent:Landroid/content/Intent;

    .line 149
    :cond_0
    return-void
.end method

.method private fillAdapterList(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p2, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 222
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 223
    .local v3, resolveListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 224
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 231
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 232
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "TITLE"

    invoke-direct {p0, v1}, Lcom/android/settings/customizedkey/BookmarkPicker;->getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v4, "RESOLVE_INFO"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private fillResolveList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 201
    invoke-direct {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->ensureIntents()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 205
    iget v1, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mDisplayMode:I

    if-nez v1, :cond_1

    .line 206
    sget-object v1, Lcom/android/settings/customizedkey/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget v1, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mDisplayMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 208
    sget-object v1, Lcom/android/settings/customizedkey/BookmarkPicker;->sShortcutIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private finish(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "title"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 366
    const-string v0, "com.android.settings.customizedkey.TITLE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/customizedkey/BookmarkPicker;->setResult(ILandroid/content/Intent;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->finish()V

    .line 369
    return-void
.end method

.method private static getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "info"
    .parameter "action"

    .prologue
    .line 319
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 321
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    return-object v1
.end method

.method private getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 241
    .local v0, label:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 242
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getShortcutFromIntent(Landroid/content/Intent;)C
    .locals 7
    .parameter "mgrIntent"

    .prologue
    const-string v6, "ENVELOPE_KEY ||/*test code*/temp_key == KeyEvent.KEYCODE_VOLUME_DOWN  temp_key : "

    const-string v5, "yenie"

    .line 283
    move-object v0, p1

    .line 284
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 286
    .local v2, temp_key:I
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "keyCode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 289
    :cond_0
    const/16 v3, 0x72

    if-ne v2, v3, :cond_1

    .line 290
    const-string v3, "yenie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXPLORER_KEY ||/*test code*/temp_key == KeyEvent.KEYCODE_VOLUME_UP  temp_key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/16 v1, 0x2b

    .line 306
    .local v1, shortcut:C
    :goto_0
    const-string v3, "yenie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shortcut    :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return v1

    .line 292
    .end local v1           #shortcut:C
    :cond_1
    const/16 v3, 0x73

    if-ne v2, v3, :cond_2

    .line 293
    const-string v3, "yenie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ENVELOPE_KEY ||/*test code*/temp_key == KeyEvent.KEYCODE_VOLUME_DOWN  temp_key : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v1, 0x2d

    .restart local v1       #shortcut:C
    goto :goto_0

    .line 295
    .end local v1           #shortcut:C
    :cond_2
    const/16 v3, 0x18

    if-ne v2, v3, :cond_3

    .line 296
    const-string v3, "yenie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ENVELOPE_KEY ||/*test code*/temp_key == KeyEvent.KEYCODE_VOLUME_DOWN  temp_key : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v1, 0x2b

    .restart local v1       #shortcut:C
    goto :goto_0

    .line 298
    .end local v1           #shortcut:C
    :cond_3
    const/16 v3, 0x19

    if-ne v2, v3, :cond_4

    .line 299
    const-string v3, "yenie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ENVELOPE_KEY ||/*test code*/temp_key == KeyEvent.KEYCODE_VOLUME_DOWN  temp_key : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v1, 0x2d

    .restart local v1       #shortcut:C
    goto :goto_0

    .line 304
    .end local v1           #shortcut:C
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #shortcut:C
    goto :goto_0
.end method

.method private isMgrIntent(C)Z
    .locals 1
    .parameter "shortcut"

    .prologue
    .line 311
    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    .line 312
    :cond_0
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startShortcutActivity(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 332
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-static {p1, v1}, Lcom/android/settings/customizedkey/BookmarkPicker;->getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 333
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/customizedkey/BookmarkPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 336
    return-void
.end method

.method private updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, newAdapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p2, newResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/customizedkey/BookmarkPicker$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/customizedkey/BookmarkPicker$2;-><init>(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method private updateListAndAdapter()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/android/settings/customizedkey/BookmarkPicker$1;

    const-string v1, "data updater"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/customizedkey/BookmarkPicker$1;-><init>(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/customizedkey/BookmarkPicker$1;->start()V

    .line 177
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 340
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 354
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 347
    :pswitch_0
    if-eqz p3, :cond_0

    .line 348
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/customizedkey/BookmarkPicker;->finish(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->updateListAndAdapter()V

    .line 105
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    const v0, 0x7f08038a

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 111
    const v0, 0x7f08038b

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200e7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 113
    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mResolveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mResolveList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 251
    .local v6, info:Landroid/content/pm/ResolveInfo;
    iget v0, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mDisplayMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 258
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/customizedkey/BookmarkPicker;->getShortcutFromIntent(Landroid/content/Intent;)C

    move-result v4

    .line 259
    .local v4, shortcut:C
    const-string v0, "android.intent.action.MAIN"

    invoke-static {v6, v0}, Lcom/android/settings/customizedkey/BookmarkPicker;->getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 260
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-direct {p0, v4}, Lcom/android/settings/customizedkey/BookmarkPicker;->isMgrIntent(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string v3, "@customiezedkey"

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->finish()V

    .line 269
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f080522

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/settings/customizedkey/BookmarkPicker;->getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/customizedkey/BookmarkPicker;->finish(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 275
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #shortcut:C
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/android/settings/customizedkey/BookmarkPicker;->startShortcutActivity(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 141
    :goto_0
    return v0

    .line 129
    :pswitch_0
    iput v1, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mDisplayMode:I

    .line 140
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->updateListAndAdapter()V

    move v0, v2

    .line 141
    goto :goto_0

    .line 133
    :pswitch_1
    iput v2, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mDisplayMode:I

    goto :goto_1

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 118
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mDisplayMode:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/customizedkey/BookmarkPicker;->mDisplayMode:I

    if-eq v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    return v2

    :cond_0
    move v1, v3

    .line 118
    goto :goto_0

    :cond_1
    move v1, v3

    .line 119
    goto :goto_1
.end method

.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0018

    if-ne v1, v2, :cond_1

    .line 376
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 377
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 378
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    :cond_0
    const/4 v1, 0x1

    .line 382
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return v1

    .restart local p1
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
