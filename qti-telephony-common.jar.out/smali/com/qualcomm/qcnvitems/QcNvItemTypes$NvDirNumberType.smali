.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvDirNumberType"
.end annotation


# instance fields
.field mDirNumber:[B

.field mNam:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 225
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 223
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mDirNumber:[B

    .line 226
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mNam:B

    .line 227
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mDirNumber:[B

    .line 225
    return-void
.end method

.method constructor <init>([B)V
    .locals 5
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 230
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 223
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mDirNumber:[B

    .line 231
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 232
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mNam:B

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 234
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mDirNumber:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public getDirNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    const-string/jumbo v1, ""

    .line 252
    .local v1, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mDirNumber:[B

    aget-byte v3, v3, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0xb

    return v0
.end method

.method public setDirNumber(Ljava/lang/String;)V
    .locals 5
    .param p1, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 240
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 242
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 243
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 244
    .local v0, "c":Ljava/lang/Character;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mDirNumber:[B

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "c":Ljava/lang/Character;
    :cond_2
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->getSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 259
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mNam:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mDirNumber:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    const-string/jumbo v0, "nam:%x, dir_number:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->mNam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvDirNumberType;->getDirNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
