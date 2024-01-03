.class public Lcom/jhlabs/image/CellularFilter$Point;
.super Ljava/lang/Object;
.source "CellularFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/image/CellularFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Point"
.end annotation


# instance fields
.field public cubeX:F

.field public cubeY:F

.field public distance:F

.field public dx:F

.field public dy:F

.field public index:I

.field final synthetic this$0:Lcom/jhlabs/image/CellularFilter;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/jhlabs/image/CellularFilter;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/jhlabs/image/CellularFilter$Point;->this$0:Lcom/jhlabs/image/CellularFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
