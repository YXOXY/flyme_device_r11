.class Lcom/qti/dpm/DpmService$DpmWwanInfo;
.super Lcom/qti/dpm/DpmService$DpmRatInfo;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DpmWwanInfo"
.end annotation


# instance fields
.field apn:I

.field mccMnc:Ljava/lang/String;

.field roaming:I

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method public constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/qti/dpm/DpmService;

    .prologue
    const/4 v1, 0x0

    .line 310
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmWwanInfo;->this$0:Lcom/qti/dpm/DpmService;

    .line 311
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService$DpmRatInfo;-><init>(Lcom/qti/dpm/DpmService;)V

    .line 312
    iput v1, p0, Lcom/qti/dpm/DpmService$DpmWwanInfo;->roaming:I

    .line 313
    const/4 v0, -0x1

    iput v0, p0, Lcom/qti/dpm/DpmService$DpmWwanInfo;->apn:I

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmWwanInfo;->mccMnc:Ljava/lang/String;

    .line 315
    iput v1, p0, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkType:I

    .line 310
    return-void
.end method
