.class Lcom/jhlabs/math/CellularFunction2D$Point;
.super Ljava/lang/Object;
.source "CellularFunction2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/math/CellularFunction2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field distance:F

.field index:I

.field final synthetic this$0:Lcom/jhlabs/math/CellularFunction2D;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/jhlabs/math/CellularFunction2D;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/jhlabs/math/CellularFunction2D$Point;->this$0:Lcom/jhlabs/math/CellularFunction2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
