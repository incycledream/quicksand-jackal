.class public Lcom/jhlabs/image/LightFilter$Light;
.super Ljava/lang/Object;
.source "LightFilter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/image/LightFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Light"
.end annotation


# instance fields
.field azimuth:F

.field centreX:F

.field centreY:F

.field color:I

.field coneAngle:F

.field cosConeAngle:F

.field direction:Lcom/jhlabs/vecmath/Vector3f;

.field distance:F

.field elevation:F

.field focus:F

.field intensity:F

.field position:Lcom/jhlabs/vecmath/Vector3f;

.field realColor:Lcom/jhlabs/vecmath/Color4f;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x4096cbe4

    const v1, 0x3f060a92

    const/high16 v2, 0x3f800000    # 1.0f

    .line 534
    invoke-direct {p0, v0, v1, v2}, Lcom/jhlabs/image/LightFilter$Light;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 519
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Light;->type:I

    .line 522
    new-instance v0, Lcom/jhlabs/vecmath/Color4f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Color4f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LightFilter$Light;->realColor:Lcom/jhlabs/vecmath/Color4f;

    const/4 v0, -0x1

    .line 523
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Light;->color:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 527
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Light;->focus:F

    .line 528
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Light;->centreX:F

    iput v0, p0, Lcom/jhlabs/image/LightFilter$Light;->centreY:F

    const v0, 0x3f060a92

    .line 529
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Light;->coneAngle:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 531
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Light;->distance:F

    .line 538
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->azimuth:F

    .line 539
    iput p2, p0, Lcom/jhlabs/image/LightFilter$Light;->elevation:F

    .line 540
    iput p3, p0, Lcom/jhlabs/image/LightFilter$Light;->intensity:F

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 636
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jhlabs/image/LightFilter$Light;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAzimuth()F
    .locals 1

    .line 548
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->azimuth:F

    return v0
.end method

.method public getCentreX()F
    .locals 1

    .line 604
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->centreX:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 612
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->centreY:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 596
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->color:I

    return v0
.end method

.method public getConeAngle()F
    .locals 1

    .line 580
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->coneAngle:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .line 564
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->distance:F

    return v0
.end method

.method public getElevation()F
    .locals 1

    .line 556
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->elevation:F

    return v0
.end method

.method public getFocus()F
    .locals 1

    .line 588
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->focus:F

    return v0
.end method

.method public getIntensity()F
    .locals 1

    .line 572
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->intensity:F

    return v0
.end method

.method public prepare(II)V
    .locals 5

    .line 616
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->azimuth:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/jhlabs/image/LightFilter$Light;->elevation:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 617
    iget v1, p0, Lcom/jhlabs/image/LightFilter$Light;->azimuth:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget v3, p0, Lcom/jhlabs/image/LightFilter$Light;->elevation:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 618
    iget v2, p0, Lcom/jhlabs/image/LightFilter$Light;->elevation:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 619
    new-instance v3, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v3, v0, v1, v2}, Lcom/jhlabs/vecmath/Vector3f;-><init>(FFF)V

    iput-object v3, p0, Lcom/jhlabs/image/LightFilter$Light;->direction:Lcom/jhlabs/vecmath/Vector3f;

    .line 620
    iget-object v3, p0, Lcom/jhlabs/image/LightFilter$Light;->direction:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v3}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 621
    iget v3, p0, Lcom/jhlabs/image/LightFilter$Light;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 622
    iget v3, p0, Lcom/jhlabs/image/LightFilter$Light;->distance:F

    mul-float v0, v0, v3

    mul-float v1, v1, v3

    mul-float v2, v2, v3

    int-to-float p1, p1

    .line 625
    iget v3, p0, Lcom/jhlabs/image/LightFilter$Light;->centreX:F

    mul-float p1, p1, v3

    add-float/2addr v0, p1

    int-to-float p1, p2

    .line 626
    iget p2, p0, Lcom/jhlabs/image/LightFilter$Light;->centreY:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 628
    :cond_0
    new-instance p1, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {p1, v0, v1, v2}, Lcom/jhlabs/vecmath/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jhlabs/image/LightFilter$Light;->position:Lcom/jhlabs/vecmath/Vector3f;

    .line 629
    iget-object p1, p0, Lcom/jhlabs/image/LightFilter$Light;->realColor:Lcom/jhlabs/vecmath/Color4f;

    new-instance p2, Ljava/awt/Color;

    iget v0, p0, Lcom/jhlabs/image/LightFilter$Light;->color:I

    invoke-direct {p2, v0}, Ljava/awt/Color;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/jhlabs/vecmath/Color4f;->set(Ljava/awt/Color;)V

    .line 630
    iget-object p1, p0, Lcom/jhlabs/image/LightFilter$Light;->realColor:Lcom/jhlabs/vecmath/Color4f;

    iget p2, p0, Lcom/jhlabs/image/LightFilter$Light;->intensity:F

    invoke-virtual {p1, p2}, Lcom/jhlabs/vecmath/Color4f;->scale(F)V

    .line 631
    iget p1, p0, Lcom/jhlabs/image/LightFilter$Light;->coneAngle:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->cosConeAngle:F

    return-void
.end method

.method public setAzimuth(F)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->azimuth:F

    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .line 600
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->centreX:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 608
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->centreY:F

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 592
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->color:I

    return-void
.end method

.method public setConeAngle(F)V
    .locals 0

    .line 576
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->coneAngle:F

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 560
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->distance:F

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 552
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->elevation:F

    return-void
.end method

.method public setFocus(F)V
    .locals 0

    .line 584
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->focus:F

    return-void
.end method

.method public setIntensity(F)V
    .locals 0

    .line 568
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Light;->intensity:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Light"

    return-object v0
.end method
