.class public Lcom/spacecaker/coee/mws/ImageSpace;
.super Landroid/widget/ImageView;
.source "ImageSpace.java"


# instance fields
.field image:Landroid/widget/ImageView;

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.spacecaker.FLIP_TO_NOTIF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 25
    const v1, 0x7f0b0122

    invoke-virtual {p0, v1}, Lcom/spacecaker/coee/mws/ImageSpace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spacecaker/coee/mws/ImageSpace;->image:Landroid/widget/ImageView;

    .line 26
    iget-object v1, p0, Lcom/spacecaker/coee/mws/ImageSpace;->image:Landroid/widget/ImageView;

    const v2, 0x7f0200e0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v1, p0, Lcom/spacecaker/coee/mws/ImageSpace;->image:Landroid/widget/ImageView;

    new-instance v2, Lcom/spacecaker/coee/mws/ImageSpace$1;

    invoke-direct {v2, p0, p1}, Lcom/spacecaker/coee/mws/ImageSpace$1;-><init>(Lcom/spacecaker/coee/mws/ImageSpace;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
