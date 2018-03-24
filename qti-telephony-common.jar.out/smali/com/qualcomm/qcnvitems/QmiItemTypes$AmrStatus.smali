.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmrStatus"
.end annotation


# static fields
.field public static final GSM_AMR_STATUS_SIZE:I = 0x1

.field public static final WCDMA_AMR_STATUS_SIZE:I = 0x1


# instance fields
.field private gsmAmrStatus:S

.field private wcdmaAmrStatus:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1430
    invoke-direct {p0, v0, v0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;-><init>(SS)V

    .line 1429
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 3
    .param p1, "gsmAmrStatus"    # S
    .param p2, "wcdmaAmrStatus"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1433
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 1435
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkByte(S)V

    .line 1436
    invoke-static {p2}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->checkByte(S)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    iput-short p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->gsmAmrStatus:S

    .line 1441
    iput-short p2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->wcdmaAmrStatus:S

    .line 1433
    return-void

    .line 1437
    :catch_0
    move-exception v0

    .line 1438
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 1444
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 1445
    array-length v1, p1

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1446
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 1448
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1449
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->gsmAmrStatus:S

    .line 1450
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->wcdmaAmrStatus:S

    .line 1444
    return-void
.end method


# virtual methods
.method public getGsmAmrStatus()S
    .locals 1

    .prologue
    .line 1454
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->gsmAmrStatus:S

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1463
    const/4 v0, 0x2

    return v0
.end method

.method public getWcdmaAmrStatus()S
    .locals 1

    .prologue
    .line 1458
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->wcdmaAmrStatus:S

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1469
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->gsmAmrStatus:S

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseByte(S)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1470
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->gsmAmrStatus:S

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseByte(S)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1471
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1477
    const-string/jumbo v0, "gsmAmrStatus=%d, wcdmaAmrStatus=%d"

    .line 1476
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1477
    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->gsmAmrStatus:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$AmrStatus;->wcdmaAmrStatus:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1476
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
