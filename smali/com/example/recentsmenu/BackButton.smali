.class public Lcom/example/recentsmenu/BackButton;
.super Landroid/widget/Button;
.source "BackButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Lcom/example/recentsmenu/BackButton$1;

    invoke-direct {v0, p0, p1}, Lcom/example/recentsmenu/BackButton$1;-><init>(Lcom/example/recentsmenu/BackButton;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/example/recentsmenu/BackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method
