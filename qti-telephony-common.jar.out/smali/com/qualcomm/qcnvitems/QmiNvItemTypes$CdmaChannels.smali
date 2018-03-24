.class public Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "QmiNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaChannels"
.end annotation


# static fields
.field public static final PRIMARY_A_SIZE:I = 0x2

.field public static final PRIMARY_B_SIZE:I = 0x2

.field public static final SECONDARY_A_SIZE:I = 0x2

.field public static final SECONDARY_B_SIZE:I = 0x2


# instance fields
.field private primaryA:I

.field private primaryB:I

.field private secondaryA:I

.field private secondaryB:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "primaryA"    # I
    .param p2, "primaryB"    # I
    .param p3, "secondaryA"    # I
    .param p4, "secondaryB"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 523
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->setPrimaryChannelA(I)V

    .line 524
    invoke-virtual {p0, p2}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->setPrimaryChannelB(I)V

    .line 525
    invoke-virtual {p0, p3}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->setSecondaryChannelA(I)V

    .line 526
    invoke-virtual {p0, p4}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->setSecondaryChannelB(I)V

    .line 522
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 530
    array-length v1, p1

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 531
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 533
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 534
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->primaryA:I

    .line 535
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->primaryB:I

    .line 536
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->secondaryA:I

    .line 537
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->secondaryB:I

    .line 529
    return-void
.end method


# virtual methods
.method public getPrimaryChannelA()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->primaryA:I

    return v0
.end method

.method public getPrimaryChannelB()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->primaryB:I

    return v0
.end method

.method public getSecondaryChannelA()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->secondaryA:I

    return v0
.end method

.method public getSecondaryChannelB()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->secondaryB:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 594
    const/16 v0, 0x8

    return v0
.end method

.method public setPrimaryChannelA(I)V
    .locals 3
    .param p1, "primaryA"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 546
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->primaryA:I

    .line 544
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPrimaryChannelB(I)V
    .locals 3
    .param p1, "primaryB"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 559
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->primaryB:I

    .line 557
    return-void

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSecondaryChannelA(I)V
    .locals 3
    .param p1, "secondaryA"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 572
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->secondaryA:I

    .line 570
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSecondaryChannelB(I)V
    .locals 3
    .param p1, "secondaryB"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 585
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkShort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    iput p1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->secondaryB:I

    .line 583
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 600
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->primaryA:I

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 601
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->primaryB:I

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 602
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->secondaryA:I

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 603
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->secondaryB:I

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 604
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 609
    const-string/jumbo v0, "primaryA=%d, primaryB=%d, secondaryA=%d, secondaryB=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 610
    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->primaryA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->primaryB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->secondaryA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;->secondaryB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 609
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
