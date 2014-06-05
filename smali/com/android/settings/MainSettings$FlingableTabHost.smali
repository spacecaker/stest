.class public Lcom/android/settings/MainSettings$FlingableTabHost;
.super Landroid/widget/TabHost;
.source "MainSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MainSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlingableTabHost"
.end annotation


# static fields
.field private static final MAJOR_MOVE:I = 0x3c


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLeftInAnimation:Landroid/view/animation/Animation;

.field private mLeftOutAnimation:Landroid/view/animation/Animation;

.field private mRightInAnimation:Landroid/view/animation/Animation;

.field private mRightOutAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    const v0, 0x7f0c0006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mRightInAnimation:Landroid/view/animation/Animation;

    .line 108
    const v0, 0x7f0c0007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mRightOutAnimation:Landroid/view/animation/Animation;

    .line 109
    const v0, 0x7f0c0004

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mLeftInAnimation:Landroid/view/animation/Animation;

    .line 110
    const v0, 0x7f0c0005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mLeftOutAnimation:Landroid/view/animation/Animation;

    .line 112
    invoke-virtual {p0, p0}, Lcom/android/settings/MainSettings$FlingableTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 114
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/settings/MainSettings$FlingableTabHost$1;

    invoke-direct {v1, p0}, Lcom/android/settings/MainSettings$FlingableTabHost$1;-><init>(Lcom/android/settings/MainSettings$FlingableTabHost;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mGestureDetector:Landroid/view/GestureDetector;

    .line 146
    return-void
.end method

.method static synthetic access$0(Lcom/android/settings/MainSettings$FlingableTabHost;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mRightInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/settings/MainSettings$FlingableTabHost;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mLeftInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/settings/MainSettings$FlingableTabHost;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mRightOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/settings/MainSettings$FlingableTabHost;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mLeftOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "tabId"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/settings/MainSettings$FlingableTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, tabView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/MainSettings;->access$0()Landroid/widget/HorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    .line 152
    .local v2, width:I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 153
    .local v0, scrollPos:I
    invoke-static {}, Lcom/android/settings/MainSettings;->access$0()Landroid/widget/HorizontalScrollView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 154
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/MainSettings$FlingableTabHost;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 159
    const/4 v0, 0x1

    return v0
.end method
