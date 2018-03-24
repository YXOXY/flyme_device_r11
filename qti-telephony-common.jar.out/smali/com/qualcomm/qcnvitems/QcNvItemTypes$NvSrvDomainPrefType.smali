.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvSrvDomainPrefType"
.end annotation


# instance fields
.field private mSrvDomainPref:S


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "srvDomainPref"    # I

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1103
    invoke-static {p1}, Lcom/qualcomm/qcnvitems/PrimitiveParser;->parseShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;->mSrvDomainPref:S

    .line 1100
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1108
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1112
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;->mSrvDomainPref:S

    .line 1106
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 1117
    const/4 v0, 0x4

    return v0
.end method

.method public getSrvDomainPref()I
    .locals 1

    .prologue
    .line 1133
    iget-short v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;->mSrvDomainPref:S

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 1122
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;->getSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1126
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-short v1, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;->mSrvDomainPref:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1128
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1138
    const-string/jumbo v0, "srv_domain_pref: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvSrvDomainPrefType;->mSrvDomainPref:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
