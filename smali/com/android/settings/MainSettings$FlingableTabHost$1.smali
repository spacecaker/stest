.class Lcom/android/settings/MainSettings$FlingableTabHost$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MainSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MainSettings$FlingableTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MainSettings$FlingableTabHost;


# direct methods
.method constructor <init>(Lcom/android/settings/MainSettings$FlingableTabHost;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/MainSettings$FlingableTabHost$1;->this$1:Lcom/android/settings/MainSettings$FlingableTabHost;

    .line 114
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 117
    iget-object v7, p0, Lcom/android/settings/MainSettings$FlingableTabHost$1;->this$1:Lcom/android/settings/MainSettings$FlingableTabHost;

    invoke-virtual {v7}, Lcom/android/settings/MainSettings$FlingableTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    .line 118
    .local v6, tabCount:I
    iget-object v7, p0, Lcom/android/settings/MainSettings$FlingableTabHost$1;->this$1:Lcom/android/settings/MainSettings$FlingableTabHost;

    invoke-virtual {v7}, Lcom/android/settings/MainSettings$FlingableTabHost;->getCurrentTab()I

    move-result v0

    .line 119
    .local v0, currentTab:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v7, v10

    float-to-int v2, v7

    .line 123
    .local v2, dx:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v10, 0x3c

    if-le v7, v10, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_5

    .line 125
    const/4 v7, 0x0

    cmpg-float v7, p3, v7

    if-gez v7, :cond_1

    move v5, v8

    .line 126
    .local v5, right:Z
    :goto_0
    if-eqz v5, :cond_2

    move v7, v8

    :goto_1
    add-int/2addr v7, v0

    .line 127
    add-int/lit8 v10, v6, -0x1

    .line 126
    invoke-static {v7, v9, v10}, Lcom/android/settings/MathUtils;->constrain(III)I

    move-result v3

    .line 128
    .local v3, newTab:I
    if-eq v3, v0, :cond_0

    .line 132
    iget-object v7, p0, Lcom/android/settings/MainSettings$FlingableTabHost$1;->this$1:Lcom/android/settings/MainSettings$FlingableTabHost;

    invoke-virtual {v7}, Lcom/android/settings/MainSettings$FlingableTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 133
    .local v1, currentView:Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/MainSettings$FlingableTabHost$1;->this$1:Lcom/android/settings/MainSettings$FlingableTabHost;

    invoke-virtual {v7, v3}, Lcom/android/settings/MainSettings$FlingableTabHost;->setCurrentTab(I)V

    .line 134
    iget-object v7, p0, Lcom/android/settings/MainSettings$FlingableTabHost$1;->this$1:Lcom/android/settings/MainSettings$FlingableTabHost;

    invoke-virtual {v7}, Lcom/android/settings/MainSettings$FlingableTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v4

    .line 136
    .local v4, newView:Landroid/view/View;
    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/android/settings/MainSettings$FlingableTabHost$1;->this$1:Lcom/android/settings/MainSettings$FlingableTabHost;

    #getter for: Lcom/android/settings/MainSettings$FlingableTabHost;->mRightInAnimation:Landroid/view/animation/Animation;
    invoke-static {v7}, Lcom/android/settings/MainSettings$FlingableTabHost;->access$0(Lcom/android/settings/MainSettings$FlingableTabHost;)Landroid/view/animation/Animation;

    move-result-object v7

    :goto_2
    invoke-virtual {v4, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/android/settings/MainSettings$FlingableTabHost$1;->this$1:Lcom/android/settings/MainSettings$FlingableTabHost;

    #getter for: Lcom/android/settings/MainSettings$FlingableTabHost;->mRightOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v7}, Lcom/android/settings/MainSettings$FlingableTabHost;->access$2(Lcom/android/settings/MainSettings$FlingableTabHost;)Landroid/view/animation/Animation;

    move-result-object v7

    .line 137
    :goto_3
    invoke-virtual {v1, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    .end local v1           #currentView:Landroid/view/View;
    .end local v3           #newTab:I
    .end local v4           #newView:Landroid/view/View;
    .end local v5           #right:Z
    :cond_0
    :goto_4
    return v8

    :cond_1
    move v5, v9

    .line 125
    goto :goto_0

    .line 126
    .restart local v5       #right:Z
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .line 136
    .restart local v1       #currentView:Landroid/view/View;
    .restart local v3       #newTab:I
    .restart local v4       #newView:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/MainSettings$FlingableTabHost$1;->this$1:Lcom/android/settings/MainSettings$FlingableTabHost;

    #getter for: Lcom/android/settings/MainSettings$FlingableTabHost;->mLeftInAnimation:Landroid/view/animation/Animation;
    invoke-static {v7}, Lcom/android/settings/MainSettings$FlingableTabHost;->access$1(Lcom/android/settings/MainSettings$FlingableTabHost;)Landroid/view/animation/Animation;

    move-result-object v7

    goto :goto_2

    .line 138
    :cond_4
    iget-object v7, p0, Lcom/android/settings/MainSettings$FlingableTabHost$1;->this$1:Lcom/android/settings/MainSettings$FlingableTabHost;

    #getter for: Lcom/android/settings/MainSettings$FlingableTabHost;->mLeftOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v7}, Lcom/android/settings/MainSettings$FlingableTabHost;->access$3(Lcom/android/settings/MainSettings$FlingableTabHost;)Landroid/view/animation/Animation;

    move-result-object v7

    goto :goto_3

    .end local v1           #currentView:Landroid/view/View;
    .end local v3           #newTab:I
    .end local v4           #newView:Landroid/view/View;
    .end local v5           #right:Z
    :cond_5
    move v8, v9

    .line 142
    goto :goto_4
.end method
