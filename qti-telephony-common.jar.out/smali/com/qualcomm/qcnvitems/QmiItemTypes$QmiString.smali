.class public Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;
.super Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;
.source "QmiItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QmiItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiString"
.end annotation


# static fields
.field public static final LENGTH_SIZE:I = 0x1


# instance fields
.field private mVal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 263
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->mVal:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "mVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 268
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->mVal:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 274
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 275
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 276
    .local v4, "length":B
    new-array v0, v4, [B

    .line 277
    .local v0, "b":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 278
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v0, v3

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v6, "US-ASCII"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->mVal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return-void

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/security/InvalidParameterException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->mVal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->mVal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->getSize()I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 303
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseByte(S)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->mVal:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->mVal:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/qualcomm/qcnvitems/QmiItemTypes$QmiString;->mVal:Ljava/lang/String;

    return-object v0
.end method
