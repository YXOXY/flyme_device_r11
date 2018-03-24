.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvAutoAnswerType;
.super Ljava/lang/Object;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvAutoAnswerType"
.end annotation


# instance fields
.field enable:Z

.field rings:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSize()I
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x2

    return v0
.end method
