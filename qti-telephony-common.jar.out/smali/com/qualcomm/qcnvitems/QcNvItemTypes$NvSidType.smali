.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvSidType"
.end annotation


# instance fields
.field mNam:B

.field mSid:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 311
    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->mNam:B

    .line 312
    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->mSid:S

    .line 310
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bArray"    # [B

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 316
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 317
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->mNam:B

    .line 318
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->skipPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 319
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->mSid:S

    .line 315
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x4

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 332
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->mNam:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 333
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->addPaddingBytes(Ljava/nio/ByteBuffer;I)V

    .line 334
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->mSid:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 327
    const-string/jumbo v0, "NAM: %d, SID: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->mNam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidType;->mSid:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method