.class public Lcom/jhlabs/image/LightFilter$Material;
.super Ljava/lang/Object;
.source "LightFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/image/LightFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Material"
.end annotation


# instance fields
.field ambientIntensity:F

.field diffuseColor:I

.field diffuseReflectivity:F

.field highlight:F

.field reflectivity:F

.field specularColor:I

.field specularReflectivity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 493
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Material;->ambientIntensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 494
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Material;->diffuseReflectivity:F

    .line 495
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Material;->specularReflectivity:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 496
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Material;->highlight:F

    const/4 v0, 0x0

    .line 497
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Material;->reflectivity:F

    const v0, -0x777778

    .line 498
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Material;->diffuseColor:I

    const/4 v0, -0x1

    .line 499
    iput v0, p0, Lcom/jhlabs/image/LightFilter$Material;->specularColor:I

    return-void
.end method


# virtual methods
.method public getDiffuseColor()I
    .locals 1

    .line 507
    iget v0, p0, Lcom/jhlabs/image/LightFilter$Material;->diffuseColor:I

    return v0
.end method

.method public setDiffuseColor(I)V
    .locals 0

    .line 503
    iput p1, p0, Lcom/jhlabs/image/LightFilter$Material;->diffuseColor:I

    return-void
.end method
