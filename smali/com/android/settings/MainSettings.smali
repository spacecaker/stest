.class public Lcom/android/settings/MainSettings;
.super Landroid/app/TabActivity;
.source "MainSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MainSettings$FlingableTabHost;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_PREFERENCES:Ljava/lang/String; = "com.android.settings.UPDATE"

.field private static final PREF_IS_TABBED:Ljava/lang/String; = "pref_is_tabbed"

.field public static final SHARED_PREFERENCES_BASENAME:Ljava/lang/String; = "com.android.settings"

.field private static mHorizontalScrollView:Landroid/widget/HorizontalScrollView;


# instance fields
.field private intent:Landroid/content/Intent;

.field private mIsTabbed:Z

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MainSettings;->mIsTabbed:Z

    .line 41
    return-void
.end method

.method static synthetic access$0()Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/settings/MainSettings;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private static createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "text"

    .prologue
    .line 179
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030067

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 181
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-object v1
.end method

.method public static restartActivity(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const v3, 0x10a0001

    const/high16 v2, 0x10a

    .line 210
    if-nez p0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 212
    :cond_0
    const/high16 v0, 0x10a

    .line 213
    .local v0, enter_anim:I
    const v1, 0x10a0001

    .line 214
    .local v1, exit_anim:I
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 216
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setUpUi()V
    .locals 3

    .prologue
    const v1, 0x7f0b011f

    const v2, 0x7f08060e

    .line 70
    iget-boolean v0, p0, Lcom/android/settings/MainSettings;->mIsTabbed:Z

    if-nez v0, :cond_0

    .line 71
    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Lcom/android/settings/MainSettings;->setContentView(I)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/settings/MainSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    sput-object v0, Lcom/android/settings/MainSettings;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/TabSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainSettings;->intent:Landroid/content/Intent;

    .line 76
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/MainSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MainSettings;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MainSettings;->setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/ProgramSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainSettings;->intent:Landroid/content/Intent;

    .line 79
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08060f

    invoke-virtual {p0, v1}, Lcom/android/settings/MainSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MainSettings;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MainSettings;->setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/AboutSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainSettings;->intent:Landroid/content/Intent;

    .line 82
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080610

    invoke-virtual {p0, v1}, Lcom/android/settings/MainSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MainSettings;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MainSettings;->setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/SpaceSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainSettings;->intent:Landroid/content/Intent;

    .line 85
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080611

    invoke-virtual {p0, v1}, Lcom/android/settings/MainSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MainSettings;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MainSettings;->setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/android/settings/MainSettings;->setContentView(I)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/settings/MainSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    sput-object v0, Lcom/android/settings/MainSettings;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/ListSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainSettings;->intent:Landroid/content/Intent;

    .line 92
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/MainSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MainSettings;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MainSettings;->setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setupTab(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .parameter "view"
    .parameter "tag"
    .parameter "myIntent"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/settings/MainSettings;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 172
    .local v0, mTabHost:Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/settings/MainSettings;->createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, tabview:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 174
    .local v1, setContent:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 175
    return-void
.end method


# virtual methods
.method public MenuClickButton(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/settings/MainSettings;->openOptionsMenu()V

    .line 222
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f060004

    const/4 v3, 0x7

    .line 54
    invoke-virtual {p0, v3}, Lcom/android/settings/MainSettings;->requestWindowFeature(I)Z

    .line 55
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainSettings;->mPreferences:Landroid/content/SharedPreferences;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/MainSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/MainSettings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_is_tabbed"

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/MainSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 59
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MainSettings;->mIsTabbed:Z

    .line 64
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MainSettings;->setUpUi()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/MainSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030066

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 66
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MainSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MainSettings;->mIsTabbed:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/settings/MainSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/MainSettings;->mIsTabbed:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0d0001

    :goto_0
    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/MainSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const v0, 0x7f0b0120

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 191
    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 187
    :cond_1
    const/high16 v0, 0x7f0d

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 197
    .local v0, choice:I
    packed-switch v0, :pswitch_data_0

    move v2, v1

    .line 205
    :goto_0
    return v2

    .line 199
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/settings/MainSettings;->mIsTabbed:Z

    if-eqz v3, :cond_0

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/MainSettings;->mIsTabbed:Z

    .line 200
    iget-object v1, p0, Lcom/android/settings/MainSettings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "pref_is_tabbed"

    iget-boolean v4, p0, Lcom/android/settings/MainSettings;->mIsTabbed:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    invoke-static {p0}, Lcom/android/settings/MainSettings;->restartActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 199
    goto :goto_1

    .line 197
    :pswitch_data_0
    .packed-switch 0x7f0b0120
        :pswitch_0
    .end packed-switch
.end method
