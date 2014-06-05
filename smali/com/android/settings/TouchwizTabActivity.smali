.class public Lcom/android/settings/TouchwizTabActivity;
.super Landroid/app/TabActivity;
.source "TouchwizTabActivity.java"


# instance fields
.field private intent:Landroid/content/Intent;

.field private tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private addTab(III)V
    .locals 8
    .parameter "labelId"
    .parameter "drawableId"
    .parameter "activity"

    .prologue
    .line 29
    packed-switch p3, :pswitch_data_0

    .line 40
    :goto_0
    iget-object v4, p0, Lcom/android/settings/TouchwizTabActivity;->tabHost:Landroid/widget/TabHost;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tab"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 42
    .local v1, spec:Landroid/widget/TabHost$TabSpec;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030063

    invoke-virtual {p0}, Lcom/android/settings/TouchwizTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, tabIndicator:Landroid/view/View;
    const v4, 0x7f0b011c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, title:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    const v4, 0x7f0b011b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 49
    iget-object v4, p0, Lcom/android/settings/TouchwizTabActivity;->intent:Landroid/content/Intent;

    const/high16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 50
    iget-object v4, p0, Lcom/android/settings/TouchwizTabActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 51
    return-void

    .line 31
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #spec:Landroid/widget/TabHost$TabSpec;
    .end local v2           #tabIndicator:Landroid/view/View;
    .end local v3           #title:Landroid/widget/TextView;
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/Settings;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/android/settings/TouchwizTabActivity;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 34
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/PersonalSettings;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/android/settings/TouchwizTabActivity;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 37
    :pswitch_2
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/ProgramSettings;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/android/settings/TouchwizTabActivity;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 40
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/touchwiz;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/android/settings/TouchwizTabActivity;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setTabs()V
    .locals 3

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/settings/TouchwizTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TouchwizTabActivity;->tabHost:Landroid/widget/TabHost;

    .line 24
    const v0, 0x7f0805ee

    const v1, 0x7f0200ca

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TouchwizTabActivity;->addTab(III)V

    .line 25
    const v0, 0x7f0805ed

    const v1, 0x7f0200cb

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TouchwizTabActivity;->addTab(III)V

    .line 26
    const v0, 0x7f0805ef

    const v1, 0x7f0200c9

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TouchwizTabActivity;->addTab(III)V

    .line 27
    const v0, 0x7f0805f0

    const v1, 0x7f0200cc

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TouchwizTabActivity;->addTab(III)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f030062

    invoke-virtual {p0, v0}, Lcom/android/settings/TouchwizTabActivity;->setContentView(I)V

    .line 19
    invoke-direct {p0}, Lcom/android/settings/TouchwizTabActivity;->setTabs()V

    .line 20
    return-void
.end method
