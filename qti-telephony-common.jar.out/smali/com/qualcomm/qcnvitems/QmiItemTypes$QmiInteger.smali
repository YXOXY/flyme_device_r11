.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiInteger;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiInteger"
.end annotation


# instance fields
.field private mVal:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiInteger;->mVal:I

    .line 164
    return-void
.end method

.method constructor <init>(J)V
    .locals 3
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 170
    :try_start_0
    invoke-static {p1, p2}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseInt(J)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiInteger;->mVal:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>([B)V
    .locals 3
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 177
    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 178
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 180
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiInteger;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 181
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiInteger;->mVal:I

    .line 176
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x4

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiInteger;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiInteger;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiInteger;->mVal:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toLong()J
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiInteger;->mVal:I

    invoke-static {v0}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    const-string/jumbo v0, "val=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiInteger;->mVal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
