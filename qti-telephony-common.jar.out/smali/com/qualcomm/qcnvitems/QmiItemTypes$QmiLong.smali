.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiLong"
.end annotation


# instance fields
.field private mVal:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->mVal:J

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "mVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 212
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->mVal:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 219
    array-length v1, p1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 220
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 222
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 223
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->mVal:J

    .line 218
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 236
    const/16 v0, 0x8

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 242
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->mVal:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->mVal:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 228
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 230
    iget-wide v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiLong;->mVal:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 231
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
