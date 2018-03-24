.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvSidNidPairType"
.end annotation


# instance fields
.field mNid:S

.field mSid:S


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 281
    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mSid:S

    .line 282
    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mNid:S

    .line 280
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 286
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 287
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mSid:S

    .line 288
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mNid:S

    .line 285
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x4

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 300
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mSid:S

    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mNid:S

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->pack(SS)[B

    move-result-object v0

    return-object v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 296
    const-string/jumbo v0, "SID:%d, NID:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mSid:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSidNidPairType;->mNid:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
