.class public Lcom/jhlabs/image/TransitionFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "TransitionFilter.java"


# instance fields
.field private destination:Ljava/awt/image/BufferedImage;

.field protected filter:Ljava/awt/image/BufferedImageOp;

.field protected maxValue:F

.field private method:Ljava/lang/reflect/Method;

.field protected minValue:F

.field private property:Ljava/lang/String;

.field private transition:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/jhlabs/image/TransitionFilter;->transition:F

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImageOp;Ljava/lang/String;FF)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/jhlabs/image/TransitionFilter;->transition:F

    .line 42
    iput-object p1, p0, Lcom/jhlabs/image/TransitionFilter;->filter:Ljava/awt/image/BufferedImageOp;

    .line 43
    iput-object p2, p0, Lcom/jhlabs/image/TransitionFilter;->property:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/jhlabs/image/TransitionFilter;->minValue:F

    .line 45
    iput p4, p0, Lcom/jhlabs/image/TransitionFilter;->maxValue:F

    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object p1

    const/4 p3, 0x0

    .line 49
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_1

    .line 50
    aget-object p4, p1, p3

    .line 51
    invoke-virtual {p4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p4}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/jhlabs/image/TransitionFilter;->method:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/jhlabs/image/TransitionFilter;->method:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2

    return-void

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No such property in object: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 60
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/beans/IntrospectionException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 6

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/jhlabs/image/TransitionFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/jhlabs/image/TransitionFilter;->destination:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_1

    return-object p2

    .line 109
    :cond_1
    iget v0, p0, Lcom/jhlabs/image/TransitionFilter;->transition:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 111
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    .line 112
    iget v3, p0, Lcom/jhlabs/image/TransitionFilter;->transition:F

    const/4 v4, 0x0

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_2

    .line 113
    iget v1, p0, Lcom/jhlabs/image/TransitionFilter;->minValue:F

    iget v5, p0, Lcom/jhlabs/image/TransitionFilter;->maxValue:F

    sub-float/2addr v5, v1

    mul-float v3, v3, v5

    add-float/2addr v1, v3

    .line 114
    invoke-virtual {p0, v1}, Lcom/jhlabs/image/TransitionFilter;->prepareFilter(F)V

    .line 115
    iget-object v1, p0, Lcom/jhlabs/image/TransitionFilter;->filter:Ljava/awt/image/BufferedImageOp;

    invoke-virtual {v2, p1, v1, v4, v4}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V

    .line 117
    :cond_2
    iget p1, p0, Lcom/jhlabs/image/TransitionFilter;->transition:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 118
    invoke-static {v1, p1}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 119
    iget p1, p0, Lcom/jhlabs/image/TransitionFilter;->minValue:F

    iget v1, p0, Lcom/jhlabs/image/TransitionFilter;->maxValue:F

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    .line 120
    invoke-virtual {p0, p1}, Lcom/jhlabs/image/TransitionFilter;->prepareFilter(F)V

    .line 121
    iget-object p1, p0, Lcom/jhlabs/image/TransitionFilter;->destination:Ljava/awt/image/BufferedImage;

    iget-object v0, p0, Lcom/jhlabs/image/TransitionFilter;->filter:Ljava/awt/image/BufferedImageOp;

    invoke-virtual {v2, p1, v0, v4, v4}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V

    .line 123
    :cond_3
    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2
.end method

.method public getDestination()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/jhlabs/image/TransitionFilter;->destination:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getTransition()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/jhlabs/image/TransitionFilter;->transition:F

    return v0
.end method

.method public prepareFilter(F)V
    .locals 5

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/jhlabs/image/TransitionFilter;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/jhlabs/image/TransitionFilter;->filter:Ljava/awt/image/BufferedImageOp;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 99
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error setting value for property: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jhlabs/image/TransitionFilter;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDestination(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/jhlabs/image/TransitionFilter;->destination:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setTransition(F)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/jhlabs/image/TransitionFilter;->transition:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Transitions/Transition..."

    return-object v0
.end method
