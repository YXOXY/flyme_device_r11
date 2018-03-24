.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvPrefVoiceSoType"
.end annotation


# instance fields
.field mEvrcCapabilityEnabled:Z

.field mHomeOrigVoiceSo:S

.field mHomePageVoiceSo:S

.field mNam:B

.field mRoamOrigVoiceSo:S


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 724
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mNam:B

    .line 723
    return-void
.end method

.method constructor <init>([B)V
    .locals 3
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 728
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 729
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mNam:B

    .line 730
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mEvrcCapabilityEnabled:Z

    .line 731
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mHomePageVoiceSo:S

    .line 732
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mHomeOrigVoiceSo:S

    .line 733
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mRoamOrigVoiceSo:S

    .line 727
    return-void

    .line 730
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 747
    const/16 v0, 0x8

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 738
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mNam:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 739
    iget-boolean v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mEvrcCapabilityEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 740
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mHomePageVoiceSo:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 741
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mHomeOrigVoiceSo:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 742
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mRoamOrigVoiceSo:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 743
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 739
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 753
    const-string/jumbo v0, "nam:%x, evrc_capability_enabled:%s, home_page_voice_so=%d, home_orig_voice_so=%d, roam_orig_voice_so=%d"

    .line 751
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 754
    iget-byte v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mNam:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mEvrcCapabilityEnabled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mHomePageVoiceSo:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 755
    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mHomeOrigVoiceSo:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvPrefVoiceSoType;->mRoamOrigVoiceSo:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 751
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
