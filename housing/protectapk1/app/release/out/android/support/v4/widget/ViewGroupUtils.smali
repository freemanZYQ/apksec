.class public Landroid/support/v4/widget/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sMatrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRectF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ViewGroupUtils;->sMatrix:Ljava/lang/ThreadLocal;

    .line 35
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ViewGroupUtils;->sRectF:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/ViewGroupUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private static offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 5

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 82
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1e

    if-eq v0, p0, :cond_1e

    .line 83
    check-cast v0, Landroid/view/View;

    .line 84
    invoke-static {p0, v0, p2}, Landroid/support/v4/widget/ViewGroupUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 88
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-nez p0, :cond_3c

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_3c
    return-void
.end method

.method static offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6

    .line 0
    sget-object v0, Landroid/support/v4/widget/ViewGroupUtils;->sMatrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez v0, :cond_15

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    sget-object v1, Landroid/support/v4/widget/ViewGroupUtils;->sMatrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_18

    .line 52
    :cond_15
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 55
    :goto_18
    invoke-static {p0, p1, v0}, Landroid/support/v4/widget/ViewGroupUtils;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 57
    sget-object p0, Landroid/support/v4/widget/ViewGroupUtils;->sRectF:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    if-nez p0, :cond_2f

    .line 59
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 60
    sget-object p1, Landroid/support/v4/widget/ViewGroupUtils;->sRectF:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    :cond_2f
    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 64
    iget p1, p0, Landroid/graphics/RectF;->left:F

    const/high16 v0, 0x3f000000

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    float-to-int v2, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p2, p1, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
