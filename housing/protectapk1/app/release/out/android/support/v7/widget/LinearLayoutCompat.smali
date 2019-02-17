.class public Landroid/support/v7/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;,
        Landroid/support/v7/widget/LinearLayoutCompat$DividerMode;,
        Landroid/support/v7/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 0
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 0
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 108
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 115
    iput v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    const v3, 0x800033

    .line 119
    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 154
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    .line 157
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_22

    .line 159
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 162
    :cond_22
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2d

    .line 164
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 167
    :cond_2d
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_38

    .line 169
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 172
    :cond_38
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 p3, -0x40800000

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 174
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 175
    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 177
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 179
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 181
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 183
    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 13

    .line 0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    .line 1319
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1320
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    .line 1321
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1323
    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 1326
    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1327
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 1330
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1331
    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 13

    .line 0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    .line 897
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 898
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    .line 899
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 901
    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 904
    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 905
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 908
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 909
    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 6

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 0
    instance-of p1, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    return p1
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 8

    .line 0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 322
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3f

    .line 324
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 326
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 327
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_2f

    .line 331
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_39

    .line 333
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .line 335
    :goto_39
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 340
    :cond_3f
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    add-int/lit8 v0, v0, -0x1

    .line 341
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_61

    if-eqz v1, :cond_54

    .line 345
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    goto :goto_7b

    .line 347
    :cond_54
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_7b

    .line 350
    :cond_61
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_74

    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_7b

    .line 354
    :cond_74
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 357
    :goto_7b
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_7e
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 7

    .line 0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    .line 296
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 298
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 299
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 300
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 301
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 302
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 307
    :cond_31
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    add-int/lit8 v0, v0, -0x1

    .line 308
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_59

    .line 313
    :cond_4c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 316
    :goto_59
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_5c
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 363
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 362
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    .line 0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 369
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 368
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 370
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1734
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1735
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 1736
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .line 0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    .line 0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .registers 6

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 423
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 426
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_79

    .line 431
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 435
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v0, :cond_23

    return v2

    .line 441
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_2b
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 453
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6e

    .line 454
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6e

    const/16 v4, 0x10

    if-eq v3, v4, :cond_55

    const/16 v4, 0x50

    if-eq v3, v4, :cond_43

    goto :goto_6e

    .line 458
    :cond_43
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, v3

    goto :goto_6e

    .line 462
    :cond_55
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 469
    :cond_6e
    :goto_6e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 470
    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 427
    :cond_79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getVirtualChildCount()I
    .registers 2

    .line 0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 0
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr p1, v1

    .line 567
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    .line 568
    move-result v2

    if-ne p1, v2, :cond_19

    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 p1, p1, 0x4

    .line 569
    if-eqz p1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_34

    .line 572
    sub-int/2addr p1, v1

    :goto_20
    if-ltz p1, :cond_33

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_30

    const/4 v0, 0x1

    goto :goto_33

    :cond_30
    add-int/lit8 p1, p1, -0x1

    goto :goto_20

    :cond_33
    :goto_33
    return v0

    :cond_34
    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 32

    move-object/from16 v6, p0

    .line 0
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 1521
    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v7

    .line 1528
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int v8, v3, v4

    .line 1531
    sub-int/2addr v3, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    .line 1533
    sub-int v9, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 1535
    move-result v10

    iget v3, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    .line 1536
    and-int/2addr v3, v4

    iget v4, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1538
    and-int/lit8 v11, v4, 0x70

    .line 1540
    iget-boolean v12, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1541
    iget-object v13, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1543
    iget-object v14, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 1544
    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4e

    const/4 v4, 0x5

    .line 1557
    if-eq v3, v4, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    .line 1547
    move-result v0

    goto :goto_59

    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p3

    sub-int v3, v3, p1

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v0, v3, v0

    .line 1552
    goto :goto_59

    :cond_4e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    sub-int v0, p3, p1

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v15

    add-int/2addr v0, v3

    :goto_59
    const/4 v1, 0x0

    if-eqz v2, :cond_63

    add-int/lit8 v2, v10, -0x1

    move/from16 v16, v2

    const/16 v17, -0x1

    goto :goto_67

    :cond_63
    const/16 v16, 0x0

    const/16 v17, 0x1

    :goto_67
    const/4 v3, 0x0

    :goto_68
    if-ge v3, v10, :cond_14b

    mul-int v1, v17, v3

    .line 1571
    add-int v2, v16, v1

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1574
    if-nez v1, :cond_85

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_79
    move/from16 v26, v7

    move/from16 v23, v10

    move/from16 v24, v11

    const/16 v18, 0x1

    const/16 v20, -0x1

    .line 1575
    goto/16 :goto_13f

    :cond_85
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    .line 1576
    if-eq v5, v15, :cond_13b

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 1577
    move-result v15

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 1581
    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v12, :cond_ad

    .line 1583
    move/from16 v22, v3

    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v23, v10

    const/4 v10, -0x1

    .line 1584
    if-eq v3, v10, :cond_b1

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_b2

    :cond_ad
    move/from16 v22, v3

    move/from16 v23, v10

    .line 1587
    :cond_b1
    const/4 v3, -0x1

    :goto_b2
    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v10, :cond_b7

    move v10, v11

    :cond_b7
    and-int/lit8 v10, v10, 0x70

    move/from16 v24, v11

    const/16 v11, 0x10

    if-eq v10, v11, :cond_f6

    const/16 v11, 0x30

    if-eq v10, v11, :cond_e3

    const/16 v11, 0x50

    if-eq v10, v11, :cond_cc

    move v3, v7

    const/4 v11, -0x1

    :goto_c9
    const/16 v18, 0x1

    goto :goto_104

    .line 1617
    :cond_cc
    sub-int v10, v8, v5

    iget v11, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    const/4 v11, -0x1

    .line 1619
    if-eq v3, v11, :cond_e1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    sub-int v20, v20, v3

    .line 1620
    const/4 v3, 0x2

    aget v21, v14, v3

    sub-int v21, v21, v20

    sub-int v10, v10, v21

    :cond_e1
    move v3, v10

    .line 1594
    goto :goto_c9

    :cond_e3
    const/4 v11, -0x1

    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v10, v7

    if-eq v3, v11, :cond_f2

    .line 1596
    const/16 v18, 0x1

    aget v20, v13, v18

    sub-int v20, v20, v3

    add-int v10, v10, v20

    goto :goto_f4

    :cond_f2
    const/16 v18, 0x1

    :goto_f4
    move v3, v10

    goto :goto_104

    :cond_f6
    const/4 v11, -0x1

    const/16 v18, 0x1

    sub-int v3, v9, v5

    .line 1612
    const/4 v10, 0x2

    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    .line 1628
    sub-int/2addr v3, v10

    :goto_104
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v10

    .line 1629
    if-eqz v10, :cond_10d

    iget v10, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 1632
    add-int/2addr v0, v10

    :cond_10d
    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    .line 1633
    add-int/2addr v10, v0

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v19, v10, v0

    move-object/from16 v0, p0

    move-object/from16 v25, v1

    move v11, v2

    move/from16 v2, v19

    move/from16 v19, v22

    move/from16 v26, v7

    const/16 v20, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1635
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    .line 1636
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    .line 1638
    add-int/2addr v15, v1

    add-int/2addr v10, v15

    invoke-virtual {v6, v0, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v19, v0

    move v0, v10

    goto :goto_13f

    :cond_13b
    move/from16 v19, v3

    goto/16 :goto_79

    :goto_13f
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v7, v26

    const/4 v5, 0x1

    const/4 v15, 0x2

    goto/16 :goto_68

    :cond_14b
    return-void
.end method

.method layoutVertical(IIII)V
    .registers 22

    move-object/from16 v6, p0

    .line 0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    .line 1432
    sub-int v2, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int v8, v2, v3

    .line 1435
    sub-int/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    .line 1437
    sub-int v9, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 1439
    move-result v10

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1440
    and-int/lit8 v2, v2, 0x70

    iget v3, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    and-int v11, v3, v4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x50

    .line 1455
    if-eq v2, v3, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    .line 1445
    move-result v0

    goto :goto_4a

    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    add-int v2, v2, p4

    sub-int v2, v2, p2

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v0, v2, v0

    .line 1450
    goto :goto_4a

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    sub-int v0, p4, p2

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    :goto_4a
    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 1460
    :goto_4c
    if-ge v12, v10, :cond_cf

    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    .line 1462
    if-nez v13, :cond_5d

    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5a
    :goto_5a
    const/4 v1, 0x1

    .line 1463
    goto/16 :goto_cc

    :cond_5d
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    .line 1464
    if-eq v1, v2, :cond_5a

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 1465
    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 1468
    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    .line 1470
    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v1, :cond_79

    .line 1474
    move v1, v11

    :cond_79
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 1475
    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_93

    const/4 v2, 0x5

    .line 1489
    if-eq v1, v2, :cond_8d

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    :goto_8b
    move v2, v1

    goto :goto_9f

    .line 1484
    :cond_8d
    sub-int v1, v8, v4

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    goto :goto_8b

    .line 1479
    :cond_93
    sub-int v1, v9, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    .line 1493
    sub-int/2addr v1, v2

    goto :goto_8b

    :goto_9f
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    .line 1494
    if-eqz v1, :cond_a8

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 1497
    add-int/2addr v0, v1

    :cond_a8
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    .line 1498
    add-int v16, v0, v1

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1500
    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    .line 1502
    add-int v16, v16, v15

    invoke-virtual {v6, v13, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    goto :goto_5a

    :goto_cc
    add-int/2addr v12, v1

    goto/16 :goto_4c

    :cond_cf
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 0
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .registers 47

    move-object/from16 v7, p0

    .line 935
    move/from16 v8, p1

    move/from16 v9, p2

    .line 937
    const/4 v10, 0x0

    .line 0
    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 938
    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 943
    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    iget-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 944
    const/4 v14, 0x4

    if-eqz v0, :cond_1e

    iget-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 945
    if-nez v0, :cond_26

    :cond_1e
    new-array v0, v14, [I

    .line 948
    iput-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 949
    new-array v0, v14, [I

    iput-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 951
    :cond_26
    iget-object v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    iget-object v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    aput v5, v15, v16

    const/16 v17, 0x2

    aput v5, v15, v17

    .line 952
    const/16 v18, 0x1

    aput v5, v15, v18

    aput v5, v15, v10

    aput v5, v6, v16

    .line 954
    aput v5, v6, v17

    .line 955
    aput v5, v6, v18

    aput v5, v6, v10

    iget-boolean v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    iget-boolean v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/high16 v2, 0x40000000

    if-ne v12, v2, :cond_4c

    const/16 v19, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v19, 0x0

    :goto_4e
    const/16 v20, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    .line 963
    :goto_61
    move-object/from16 v29, v6

    const/16 v5, 0x8

    if-ge v1, v11, :cond_205

    .line 966
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7c

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 970
    :goto_76
    move/from16 v32, v3

    move/from16 v36, v4

    goto/16 :goto_1f5

    .line 971
    :cond_7c
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v5, :cond_88

    .line 975
    invoke-virtual {v7, v6, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v5

    add-int/2addr v1, v5

    .line 976
    goto :goto_76

    :cond_88
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 980
    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v5, v10

    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 982
    :cond_95
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 984
    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v31, v0, v5

    if-ne v12, v2, :cond_eb

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_eb

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 989
    cmpl-float v0, v0, v20

    if-lez v0, :cond_eb

    if-eqz v19, :cond_b9

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    .line 991
    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    .line 992
    add-int/2addr v5, v2

    add-int/2addr v0, v5

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_c7

    :cond_b9
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 1002
    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1003
    :goto_c7
    if-eqz v4, :cond_dc

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    move/from16 v34, v1

    move/from16 v32, v3

    move/from16 v36, v4

    move-object v3, v6

    const/16 v30, -0x2

    goto/16 :goto_165

    :cond_dc
    move/from16 v34, v1

    move/from16 v32, v3

    move/from16 v36, v4

    move-object v3, v6

    const/high16 v1, 0x40000000

    .line 1010
    const/16 v22, 0x1

    const/16 v30, -0x2

    goto/16 :goto_167

    :cond_eb
    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_fa

    .line 1016
    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_fa

    const/4 v5, -0x2

    iput v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v2, 0x0

    goto :goto_fd

    .line 1023
    :cond_fa
    const/4 v5, -0x2

    const/high16 v2, -0x80000000

    :goto_fd
    cmpl-float v0, v31, v20

    if-nez v0, :cond_106

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v30, v0

    goto :goto_108

    :cond_106
    const/16 v30, 0x0

    :goto_108
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v34, v1

    move-object v1, v6

    move/from16 v35, v2

    move/from16 v2, v34

    move/from16 v32, v3

    move/from16 v3, p1

    move/from16 v36, v4

    move/from16 v4, v30

    const/4 v9, -0x1

    const/16 v30, -0x2

    move/from16 v5, p2

    move-object/from16 v37, v6

    const/high16 v9, -0x80000000

    move/from16 v6, v33

    .line 1028
    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1031
    move/from16 v0, v35

    if-eq v0, v9, :cond_12f

    iput v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1033
    :cond_12f
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v19, :cond_148

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    .line 1034
    add-int/2addr v2, v0

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v37

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .line 1036
    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1037
    goto :goto_15f

    :cond_148
    move-object/from16 v3, v37

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v2, v1, v0

    .line 1038
    iget v4, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    .line 1037
    add-int/2addr v2, v4

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 1042
    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_15f
    if-eqz v32, :cond_165

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    .line 1047
    move-result v14

    :cond_165
    :goto_165
    const/high16 v1, 0x40000000

    :goto_167
    if-eq v13, v1, :cond_172

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, -0x1

    .line 1055
    if-ne v0, v2, :cond_172

    const/4 v0, 0x1

    const/16 v28, 0x1

    .line 1056
    goto :goto_173

    :cond_172
    const/4 v0, 0x0

    :goto_173
    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v4, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    .line 1057
    add-int/2addr v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v26

    .line 1060
    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    if-eqz v36, :cond_1b5

    .line 1064
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_1b5

    iget v9, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v9, :cond_197

    iget v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_199

    :cond_197
    iget v9, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_199
    and-int/lit8 v9, v9, 0x70

    const/16 v25, 0x4

    .line 1069
    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, -0x2

    shr-int/lit8 v9, v9, 0x1

    aget v1, v15, v9

    .line 1070
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v15, v9

    aget v1, v29, v9

    sub-int v6, v4, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 1074
    move-result v1

    aput v1, v29, v9

    :cond_1b5
    move/from16 v1, v21

    .line 1076
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v27, :cond_1c4

    iget v6, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1077
    const/4 v9, -0x1

    if-ne v6, v9, :cond_1c4

    const/4 v6, 0x1

    goto :goto_1c5

    :cond_1c4
    const/4 v6, 0x0

    :goto_1c5
    iget v9, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v20

    if-lez v9, :cond_1d9

    .line 1082
    if-eqz v0, :cond_1d0

    :goto_1cd
    move/from16 v10, v24

    goto :goto_1d2

    :cond_1d0
    move v2, v4

    goto :goto_1cd

    :goto_1d2
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    :goto_1d6
    move/from16 v10, v34

    goto :goto_1e7

    .line 1085
    :cond_1d9
    move/from16 v10, v24

    if-eqz v0, :cond_1de

    move v4, v2

    :cond_1de
    move/from16 v2, v23

    .line 1089
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v24, v10

    goto :goto_1d6

    :goto_1e7
    invoke-virtual {v7, v3, v10}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v10

    move/from16 v21, v1

    move/from16 v26, v5

    move/from16 v27, v6

    move v1, v0

    move/from16 v0, v31

    :goto_1f5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v29

    move/from16 v3, v32

    move/from16 v4, v36

    const/high16 v2, 0x40000000

    const/4 v5, -0x1

    move/from16 v9, p2

    const/4 v10, 0x0

    goto/16 :goto_61

    :cond_205
    move/from16 v32, v3

    move/from16 v36, v4

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v10, v24

    .line 1092
    move/from16 v6, v26

    const/high16 v9, -0x80000000

    const/16 v30, -0x2

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_226

    .line 1093
    invoke-virtual {v7, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_226

    .line 1098
    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v4

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :cond_226
    aget v3, v15, v18

    const/4 v4, -0x1

    if-ne v3, v4, :cond_23c

    const/4 v3, 0x0

    aget v5, v15, v3

    if-ne v5, v4, :cond_23c

    aget v3, v15, v17

    if-ne v3, v4, :cond_23c

    aget v3, v15, v16

    .line 1102
    if-eq v3, v4, :cond_239

    goto :goto_23c

    :cond_239
    move/from16 v38, v6

    goto :goto_26f

    :cond_23c
    :goto_23c
    aget v3, v15, v16

    .line 1104
    const/4 v4, 0x0

    aget v5, v15, v4

    aget v9, v15, v18

    .line 1103
    aget v4, v15, v17

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 1102
    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 1105
    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget v4, v29, v16

    const/4 v5, 0x0

    aget v9, v29, v5

    .line 1107
    aget v5, v29, v18

    move/from16 v38, v6

    .line 1106
    aget v6, v29, v17

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 1105
    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 1108
    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v1, v21

    :goto_26f
    if-eqz v32, :cond_2d2

    .line 1113
    const/high16 v3, -0x80000000

    if-eq v12, v3, :cond_277

    if-nez v12, :cond_2d2

    .line 1116
    :cond_277
    const/4 v3, 0x0

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v3, 0x0

    :goto_27b
    if-ge v3, v11, :cond_2d2

    .line 1119
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_28d

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    .line 1123
    move-result v5

    add-int/2addr v4, v5

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_29a

    :cond_28d
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 1124
    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_29d

    invoke-virtual {v7, v4, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 1129
    move-result v4

    add-int/2addr v3, v4

    :goto_29a
    move/from16 v39, v1

    goto :goto_2cd

    :cond_29d
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1131
    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v19, :cond_2b6

    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1132
    iget v9, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v14

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v9, v5

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 1134
    move-result v4

    add-int/2addr v9, v4

    add-int/2addr v6, v9

    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1135
    goto :goto_29a

    :cond_2b6
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v9, v6, v14

    move/from16 v39, v1

    .line 1136
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    .line 1135
    add-int/2addr v9, v1

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v9, v1

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1142
    :goto_2cd
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v39

    goto :goto_27b

    :cond_2d2
    move/from16 v39, v1

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    .line 1144
    .line 1147
    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    .line 1150
    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v8, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1156
    move-result v1

    const v3, 0xffffff

    and-int/2addr v3, v1

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v4

    if-nez v22, :cond_343

    .line 1268
    if-eqz v3, :cond_301

    cmpl-float v5, v0, v20

    if-lez v5, :cond_301

    goto :goto_343

    :cond_301
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v32, :cond_33d

    .line 1274
    const/high16 v2, 0x40000000

    if-eq v12, v2, :cond_33d

    const/4 v2, 0x0

    :goto_30c
    if-ge v2, v11, :cond_33d

    .line 1276
    invoke-virtual {v7, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_33a

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 1281
    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_31d

    .line 1283
    goto :goto_33a

    :cond_31d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1286
    cmpl-float v5, v5, v20

    if-lez v5, :cond_33a

    .line 1287
    const/high16 v5, 0x40000000

    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 1285
    move-result v9

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v3, v6, v9}, Landroid/view/View;->measure(II)V

    :cond_33a
    :goto_33a
    add-int/lit8 v2, v2, 0x1

    .line 1158
    goto :goto_30c

    :cond_33d
    move/from16 v42, v11

    move/from16 v3, p2

    goto/16 :goto_4eb

    :cond_343
    :goto_343
    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 1160
    cmpl-float v5, v5, v20

    if-lez v5, :cond_34b

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    :cond_34b
    const/4 v5, -0x1

    aput v5, v15, v16

    .line 1161
    aput v5, v15, v17

    aput v5, v15, v18

    const/4 v6, 0x0

    aput v5, v15, v6

    aput v5, v29, v16

    .line 1164
    aput v5, v29, v17

    aput v5, v29, v18

    aput v5, v29, v6

    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v10, v2

    .line 1167
    move/from16 v9, v38

    const/4 v6, -0x1

    move v2, v0

    const/4 v0, 0x0

    :goto_365
    if-ge v0, v11, :cond_491

    .line 1169
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_480

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 1174
    move-result v5

    const/16 v4, 0x8

    if-ne v5, v4, :cond_377

    goto/16 :goto_480

    .line 1176
    :cond_377
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v4, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v21, v4, v20

    if-lez v21, :cond_3e0

    .line 1185
    int-to-float v8, v3

    mul-float v8, v8, v4

    div-float/2addr v8, v2

    float-to-int v8, v8

    sub-float/2addr v2, v4

    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v21

    add-int v4, v4, v21

    move/from16 v40, v2

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1183
    move/from16 v41, v3

    move/from16 v42, v11

    .line 1190
    move/from16 v3, p2

    const/4 v11, -0x1

    invoke-static {v3, v4, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v2

    iget v4, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v4, :cond_3be

    const/high16 v4, 0x40000000

    .line 1203
    if-eq v12, v4, :cond_3b2

    goto :goto_3c0

    :cond_3b2
    if-lez v8, :cond_3b5

    goto :goto_3b6

    :cond_3b5
    const/4 v8, 0x0

    :goto_3b6
    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1193
    move-result v8

    invoke-virtual {v14, v8, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3d0

    :cond_3be
    const/high16 v4, 0x40000000

    :goto_3c0
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 1199
    move-result v21

    add-int v8, v21, v8

    .line 1198
    if-gez v8, :cond_3c9

    const/4 v8, 0x0

    .line 1210
    :cond_3c9
    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v14, v8, v2}, Landroid/view/View;->measure(II)V

    .line 1209
    :goto_3d0
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    invoke-static {v9, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    move/from16 v2, v40

    move/from16 v4, v41

    goto :goto_3e6

    :cond_3e0
    move v4, v3

    .line 1214
    move/from16 v42, v11

    move/from16 v3, p2

    const/4 v11, -0x1

    :goto_3e6
    if-eqz v19, :cond_405

    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    iget v11, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    .line 1215
    add-int v21, v21, v11

    iget v11, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v21, v21, v11

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int v21, v21, v11

    add-int v8, v8, v21

    .line 1217
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1218
    move/from16 v43, v2

    :goto_402
    const/high16 v2, 0x40000000

    goto :goto_420

    :cond_405
    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v8

    move/from16 v43, v2

    .line 1219
    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v11, v2

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    .line 1218
    add-int/2addr v11, v2

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v11, v2

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    .line 1222
    move-result v2

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_402

    :goto_420
    if-eq v13, v2, :cond_429

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1225
    const/4 v8, -0x1

    if-ne v2, v8, :cond_429

    const/4 v2, 0x1

    .line 1226
    goto :goto_42a

    :cond_429
    const/4 v2, 0x0

    :goto_42a
    iget v8, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v11, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    .line 1227
    add-int/2addr v8, v11

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v8

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    .line 1228
    move-result v6

    if-eqz v2, :cond_43b

    goto :goto_43c

    .line 1231
    :cond_43b
    move v8, v11

    :goto_43c
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v27, :cond_449

    iget v8, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_44a

    .line 1234
    const/4 v8, 0x1

    goto :goto_44b

    :cond_449
    const/4 v10, -0x1

    :cond_44a
    const/4 v8, 0x0

    :goto_44b
    if-eqz v36, :cond_478

    .line 1237
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v14

    if-eq v14, v10, :cond_478

    iget v10, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v10, :cond_45a

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_45c

    :cond_45a
    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_45c
    and-int/lit8 v5, v5, 0x70

    const/16 v21, 0x4

    .line 1242
    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, -0x2

    shr-int/lit8 v5, v5, 0x1

    aget v10, v15, v5

    .line 1243
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v15, v5

    aget v10, v29, v5

    sub-int/2addr v11, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v29, v5

    goto :goto_47a

    :cond_478
    const/16 v21, 0x4

    :goto_47a
    move v10, v2

    move/from16 v27, v8

    move/from16 v2, v43

    goto :goto_487

    :cond_480
    :goto_480
    move v4, v3

    move/from16 v42, v11

    move/from16 v3, p2

    const/16 v21, 0x4

    :goto_487
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    move/from16 v11, v42

    const/4 v5, -0x1

    move/from16 v8, p1

    .line 1250
    goto/16 :goto_365

    :cond_491
    move/from16 v42, v11

    move/from16 v3, p2

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    .line 1255
    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    aget v0, v15, v18

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4b8

    const/4 v0, 0x0

    aget v4, v15, v0

    if-ne v4, v2, :cond_4b8

    aget v0, v15, v17

    if-ne v0, v2, :cond_4b8

    .line 1259
    aget v0, v15, v16

    if-eq v0, v2, :cond_4b6

    goto :goto_4b8

    :cond_4b6
    move v0, v6

    goto :goto_4e6

    :cond_4b8
    :goto_4b8
    aget v0, v15, v16

    .line 1261
    const/4 v2, 0x0

    aget v4, v15, v2

    aget v5, v15, v18

    .line 1260
    aget v8, v15, v17

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 1259
    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 1262
    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v4, v29, v16

    .line 1264
    aget v2, v29, v2

    aget v5, v29, v18

    .line 1263
    aget v8, v29, v17

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 1262
    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 1265
    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4e6
    move/from16 v39, v0

    move/from16 v38, v9

    move v0, v10

    :goto_4eb
    if-nez v27, :cond_4f3

    .line 1298
    const/high16 v2, 0x40000000

    if-eq v13, v2, :cond_4f3

    move/from16 v39, v0

    :cond_4f3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    .line 1301
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int v0, v39, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1304
    const/high16 v2, -0x1000000

    and-int v2, v38, v2

    .line 1303
    or-int/2addr v1, v2

    shl-int/lit8 v2, v38, 0x10

    invoke-static {v0, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1308
    if-eqz v28, :cond_51d

    move/from16 v1, v42

    move/from16 v0, p1

    invoke-direct {v7, v1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    :cond_51d
    return-void
.end method

.method measureNullChild(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method measureVertical(II)V
    .registers 43

    move-object/from16 v7, p0

    .line 602
    move/from16 v8, p1

    move/from16 v9, p2

    .line 604
    const/4 v10, 0x0

    .line 0
    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 605
    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 610
    .line 611
    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    iget v14, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    iget-boolean v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    .line 617
    :goto_2a
    const/16 v10, 0x8

    move/from16 v22, v4

    if-ge v6, v11, :cond_19d

    .line 620
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_47

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v10

    add-int/2addr v4, v10

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v11

    move/from16 v31, v13

    .line 624
    move/from16 v4, v22

    goto/16 :goto_191

    :cond_47
    move/from16 v24, v1

    .line 625
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_5e

    invoke-virtual {v7, v4, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v6, v1

    move/from16 v32, v11

    move/from16 v31, v13

    .line 629
    move/from16 v4, v22

    move/from16 v1, v24

    goto/16 :goto_191

    .line 630
    :cond_5e
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 633
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v10

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 635
    :cond_6b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v1, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 637
    add-float v25, v0, v1

    const/high16 v1, 0x40000000

    if-ne v13, v1, :cond_a7

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_a7

    .line 641
    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 642
    cmpl-float v0, v0, v16

    if-lez v0, :cond_a7

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v26, v2

    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v0, v3

    move-object v3, v4

    move/from16 v33, v5

    move/from16 v32, v11

    move/from16 v31, v13

    move/from16 v13, v22

    move/from16 v8, v24

    move/from16 v29, v26

    .line 647
    const/16 v18, 0x1

    move v11, v6

    goto/16 :goto_117

    :cond_a7
    move/from16 v26, v2

    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_b8

    .line 653
    iget v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_b8

    const/4 v0, -0x2

    iput v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, 0x0

    goto :goto_ba

    :cond_b8
    const/high16 v2, -0x80000000

    .line 660
    :goto_ba
    const/16 v23, 0x0

    cmpl-float v0, v25, v16

    if-nez v0, :cond_c5

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v27, v0

    goto :goto_c7

    :cond_c5
    const/16 v27, 0x0

    :goto_c7
    move-object/from16 v0, p0

    move/from16 v8, v24

    const/high16 v24, 0x40000000

    move-object v1, v4

    move/from16 v28, v2

    move/from16 v29, v26

    move v2, v6

    move v9, v3

    move/from16 v3, p1

    move-object/from16 v30, v4

    move/from16 v32, v11

    move/from16 v31, v13

    move/from16 v13, v22

    const/high16 v11, 0x40000000

    move/from16 v4, v23

    move/from16 v33, v5

    move/from16 v5, p2

    move v11, v6

    move/from16 v6, v27

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 665
    move/from16 v0, v28

    .line 668
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_f4

    .line 669
    iput v0, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_f4
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    .line 670
    move-result v0

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v2, v1, v0

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    .line 671
    add-int/2addr v2, v3

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 670
    move-object/from16 v3, v30

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 674
    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-eqz v15, :cond_116

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_117

    .line 683
    :cond_116
    move v0, v9

    :goto_117
    if-ltz v14, :cond_121

    add-int/lit8 v6, v11, 0x1

    if-ne v14, v6, :cond_121

    .line 689
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    :cond_121
    if-ge v11, v14, :cond_132

    .line 690
    iget v1, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v16

    if-gtz v1, :cond_12a

    goto :goto_132

    :cond_12a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 697
    throw v0

    :cond_132
    :goto_132
    const/high16 v1, 0x40000000

    if-eq v12, v1, :cond_13f

    iget v1, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v2, -0x1

    .line 706
    if-ne v1, v2, :cond_13f

    const/4 v1, 0x1

    const/16 v20, 0x1

    .line 707
    goto :goto_140

    :cond_13f
    const/4 v1, 0x0

    :goto_140
    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v4, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 708
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 710
    add-int/2addr v4, v2

    move/from16 v5, v29

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 709
    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    .line 712
    move-result v6

    invoke-static {v8, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v19, :cond_161

    iget v8, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 713
    const/4 v9, -0x1

    if-ne v8, v9, :cond_161

    const/4 v8, 0x1

    goto :goto_162

    :cond_161
    const/4 v8, 0x0

    :goto_162
    iget v9, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    .line 718
    if-lez v9, :cond_174

    if-eqz v1, :cond_16b

    goto :goto_16c

    :cond_16b
    move v2, v4

    :goto_16c
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v13, v4

    move/from16 v1, v33

    goto :goto_17f

    .line 721
    :cond_174
    if-eqz v1, :cond_179

    :goto_176
    move/from16 v1, v33

    .line 725
    goto :goto_17b

    :cond_179
    move v2, v4

    goto :goto_176

    :goto_17b
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_17f
    invoke-virtual {v7, v3, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v11

    move v3, v0

    move/from16 v19, v8

    move v4, v13

    move/from16 v0, v25

    move/from16 v39, v5

    move v5, v1

    move v1, v6

    move v6, v2

    move/from16 v2, v39

    :goto_191
    add-int/lit8 v6, v6, 0x1

    move/from16 v13, v31

    move/from16 v11, v32

    move/from16 v8, p1

    move/from16 v9, p2

    goto/16 :goto_2a

    :cond_19d
    move v8, v1

    move v9, v3

    move v1, v5

    .line 728
    move/from16 v32, v11

    move/from16 v31, v13

    move/from16 v13, v22

    move v5, v2

    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v2, :cond_1bb

    move/from16 v2, v32

    .line 729
    invoke-virtual {v7, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1bd

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v4

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1bd

    :cond_1bb
    move/from16 v2, v32

    :cond_1bd
    :goto_1bd
    if-eqz v15, :cond_20c

    move/from16 v3, v31

    .line 734
    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1c7

    if-nez v3, :cond_20e

    .line 737
    :cond_1c7
    const/4 v4, 0x0

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v4, 0x0

    :goto_1cb
    if-ge v4, v2, :cond_20e

    .line 740
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1dd

    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    .line 744
    move-result v11

    add-int/2addr v6, v11

    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 745
    goto :goto_207

    :cond_1dd
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v10, :cond_1e9

    .line 750
    invoke-virtual {v7, v6, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v6

    add-int/2addr v4, v6

    .line 752
    goto :goto_207

    :cond_1e9
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 753
    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v14, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v21, v14, v9

    iget v10, v11, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    .line 754
    add-int v21, v21, v10

    iget v10, v11, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v21, v21, v10

    .line 753
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int v6, v21, v6

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 759
    :goto_207
    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0x8

    goto :goto_1cb

    :cond_20c
    move/from16 v3, v31

    :cond_20e
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    .line 761
    .line 764
    move-result v10

    add-int/2addr v6, v10

    add-int/2addr v4, v6

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 767
    move-result v4

    move v10, v9

    move/from16 v6, p2

    const/4 v9, 0x0

    invoke-static {v4, v6, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 773
    move-result v4

    const v9, 0xffffff

    and-int/2addr v9, v4

    iget v11, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v9, v11

    if-nez v18, :cond_27f

    .line 846
    if-eqz v9, :cond_23e

    cmpl-float v11, v0, v16

    if-lez v11, :cond_23e

    goto :goto_27f

    :cond_23e
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_27a

    .line 854
    const/high16 v1, 0x40000000

    if-eq v3, v1, :cond_27a

    const/4 v1, 0x0

    :goto_249
    if-ge v1, v2, :cond_27a

    .line 856
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_277

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 861
    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_25a

    .line 863
    goto :goto_277

    :cond_25a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 866
    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_277

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 868
    move-result v9

    const/high16 v11, 0x40000000

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 865
    move-result v9

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v3, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_277
    :goto_277
    add-int/lit8 v1, v1, 0x1

    .line 775
    goto :goto_249

    :cond_27a
    move v1, v8

    move/from16 v11, p1

    goto/16 :goto_37d

    :cond_27f
    :goto_27f
    iget v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 777
    cmpl-float v10, v10, v16

    if-lez v10, :cond_287

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    :cond_287
    const/4 v10, 0x0

    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v11, v0

    const/4 v0, 0x0

    .line 780
    move/from16 v39, v8

    move v8, v1

    move/from16 v1, v39

    .line 782
    :goto_291
    if-ge v0, v2, :cond_36c

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_2a6

    .line 786
    move/from16 v38, v3

    move v10, v11

    move/from16 v11, p1

    goto/16 :goto_364

    .line 788
    :cond_2a6
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iget v10, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v18, v10, v16

    if-lez v18, :cond_30b

    .line 796
    int-to-float v15, v9

    mul-float v15, v15, v10

    div-float/2addr v15, v11

    float-to-int v15, v15

    sub-float/2addr v11, v10

    sub-int/2addr v9, v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v18

    add-int v10, v10, v18

    move/from16 v34, v9

    iget v9, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v10, v9

    iget v9, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    .line 795
    add-int/2addr v10, v9

    iget v9, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v35, v11

    .line 801
    move/from16 v11, p1

    invoke-static {v11, v10, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v9

    iget v10, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v10, :cond_2ea

    const/high16 v10, 0x40000000

    .line 815
    if-eq v3, v10, :cond_2de

    goto :goto_2ec

    :cond_2de
    if-lez v15, :cond_2e1

    .line 814
    goto :goto_2e2

    :cond_2e1
    const/4 v15, 0x0

    :goto_2e2
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 804
    move-result v15

    invoke-virtual {v13, v9, v15}, Landroid/view/View;->measure(II)V

    goto :goto_2fc

    :cond_2ea
    const/high16 v10, 0x40000000

    :goto_2ec
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 810
    move-result v18

    add-int v15, v18, v15

    .line 809
    if-gez v15, :cond_2f5

    const/4 v15, 0x0

    .line 821
    :cond_2f5
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v9, v15}, Landroid/view/View;->measure(II)V

    .line 820
    :goto_2fc
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    and-int/lit16 v9, v9, -0x100

    invoke-static {v1, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move/from16 v9, v34

    .line 825
    move/from16 v10, v35

    goto :goto_30e

    :cond_30b
    move v10, v11

    move/from16 v11, p1

    .line 826
    :goto_30e
    iget v15, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v36, v1

    iget v1, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    .line 827
    add-int/2addr v15, v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v15

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 829
    move-result v5

    move/from16 v37, v1

    const/high16 v1, 0x40000000

    if-eq v12, v1, :cond_32d

    iget v1, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v38, v3

    const/4 v3, -0x1

    if-ne v1, v3, :cond_330

    const/4 v1, 0x1

    goto :goto_331

    :cond_32d
    move/from16 v38, v3

    .line 832
    const/4 v3, -0x1

    :cond_330
    const/4 v1, 0x0

    :goto_331
    if-eqz v1, :cond_334

    goto :goto_336

    :cond_334
    move/from16 v15, v37

    .line 835
    :goto_336
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v19, :cond_342

    .line 837
    iget v8, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 838
    if-ne v8, v3, :cond_342

    const/4 v8, 0x1

    goto :goto_343

    :cond_342
    const/4 v8, 0x0

    :goto_343
    iget v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v18, v15, v18

    iget v3, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    .line 839
    add-int v18, v18, v3

    iget v3, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v18, v18, v3

    .line 838
    invoke-virtual {v7, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v3, v18, v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v19, v8

    move v8, v1

    move/from16 v1, v36

    :goto_364
    add-int/lit8 v0, v0, 0x1

    move v11, v10

    .line 843
    move/from16 v3, v38

    const/4 v10, 0x0

    goto/16 :goto_291

    :cond_36c
    move/from16 v11, p1

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v9

    add-int/2addr v3, v9

    add-int/2addr v0, v3

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v0, v8

    :goto_37d
    if-nez v19, :cond_384

    .line 879
    const/high16 v3, 0x40000000

    if-eq v12, v3, :cond_384

    goto :goto_385

    :cond_384
    move v0, v5

    :goto_385
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    .line 882
    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    .line 884
    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v11, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 888
    move-result v0

    invoke-virtual {v7, v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v20, :cond_3a3

    invoke-direct {v7, v2, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    :cond_3a3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 286
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 287
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 289
    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1756
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1762
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 0
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 1406
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_c

    .line 1408
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 550
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_c

    .line 552
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureHorizontal(II)V

    :goto_c
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 4

    if-ltz p1, :cond_b

    .line 0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    .line 491
    if-ge p1, v0, :cond_b

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 488
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    .line 234
    :cond_5
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 236
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 237
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1b

    .line 239
    :cond_17
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 240
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    .line 242
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 243
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .registers 2

    .line 0
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x30

    .line 1687
    :cond_14
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1688
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 0
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1705
    and-int/2addr v0, v1

    if-eq v0, p1, :cond_15

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v1, -0x800008

    .line 1706
    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_15
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1654
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    .line 1655
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 195
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 197
    :cond_7
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 3

    and-int/lit8 p1, p1, 0x70

    .line 0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    .line 1713
    if-eq v0, p1, :cond_12

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 1714
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3

    const/4 v0, 0x0

    .line 0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
