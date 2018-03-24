.class public interface abstract Lcom/qualcomm/qcnvitems/IQcNvItems;
.super Ljava/lang/Object;
.source "IQcNvItems.java"


# static fields
.field public static final NV_BACKUP_INDEX:I = 0x0

.field public static final NV_CRRIER_VERSION_SIZE:I = 0x7c

.field public static final NV_DIR_NUMB_SIZ:I = 0xa

.field public static final NV_ECC_NUMBER_SIZE:I = 0x3

.field public static final NV_ENCRYPT_IMEI_NUMBER_SIZE:I = 0xf

.field public static final NV_FACTORY_DATA_SIZE:I = 0x80

.field public static final NV_GPS_SNR_SIZE:I = 0x7c

.field public static final NV_LIGHT_SENSOR_SIZE:I = 0x3

.field public static final NV_LOCK_CODE_SIZE:I = 0x4

.field public static final NV_MAX_HOME_SID_NID:I = 0x14

.field public static final NV_MAX_MINS:I = 0x2

.field public static final NV_MAX_NUM_OF_ECC_NUMBER:I = 0xa

.field public static final NV_MAX_SID_NID:I = 0x1

.field public static final NV_OEM_BYTE_SIZE:I = 0x7c

.field public static final NV_OEM_ITEM_SIZE:I = 0x1f

.field public static final NV_PCB_NUMBER_SIZE:I = 0x20

.field public static final NV_SEC_CODE_SIZE:I = 0x6

.field public static final NV_SRV_DOMAIN_PREF_CS_ONLY:I = 0x0

.field public static final NV_SRV_DOMAIN_PREF_CS_PS:I = 0x2

.field public static final NV_SRV_DOMAIN_PREF_PS_ONLY:I = 0x1

.field public static final P_REV_IS2000:I = 0x6

.field public static final P_REV_IS2000_RELA:I = 0x7

.field public static final P_REV_IS2000_RELB:I = 0x8

.field public static final P_REV_IS2000_RELC:I = 0x9

.field public static final P_REV_IS2000_RELC_MI:I = 0xa

.field public static final P_REV_IS2000_RELD:I = 0xb

.field public static final P_REV_IS95A:I = 0x3

.field public static final P_REV_IS95B:I = 0x4

.field public static final P_REV_JSTD008:I = 0x1


# virtual methods
.method public abstract disableAutoAnswer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract dispose()V
.end method

.method public abstract enableAutoAnswer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract get3gpp2SubscriptionInfo()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAirTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAmrStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AmrStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAnalogHomeSid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAutoAnswerStatus()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCdmaChannels()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCurrentTtyMode()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultBaudRate()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDeviceSerials()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDirectoryNumber()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getEccList()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getEmailGateway()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFtmMode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getGpsOnePdeAddress()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getGpsOnePdePort()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHomeSidNid()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getImsi11_12()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getImsiMcc()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getImsiMin1()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getImsiMin2()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLockCode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMinImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMinImsiNumber()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMobCaiRev()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getNamName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPreferredVoiceSo()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPrimaryCdmaChannels()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRoamTimerCount()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRtreConfig()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSecCode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSecondaryCdmaChannels()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSpcChangeEnabled()Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSwVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTrueImsi()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTrueImsi11_12()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTrueImsiAddrNum()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTrueImsiMcc()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTrueImsiNumber()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getVoiceConfig()Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getVoicePrivacyPref()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract set3gpp2SubscriptionInfo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$Threegpp2Info;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setAirTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setAnalogHomeSid(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAutoAnswerStatus(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$AutoAnswer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setCdmaChannels(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$CdmaChannels;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setCurrentTtyMode(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setDefaultBaudRate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setDirectoryNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setEccList([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setEmailGateway(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setGpsOnePdeAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setGpsOnePdePort(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setHomeSidNid(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$SidNid;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setImsi11_12(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setImsiMcc(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setImsiMin1([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setImsiMin2([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setLockCode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setMinImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$MinImsi;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setMinImsiNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setMobCaiRev(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPreferredVoiceSo(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$PreferredVoiceSo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setPrimaryCdmaChannels([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setRoamTimerCount(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TimerCount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setRtreConfig(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setSecCode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setSecondaryCdmaChannels([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setSpcChangeEnabled(Ljava/lang/Boolean;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setTrueImsi(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$TrueImsi;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setTrueImsi11_12(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setTrueImsiAddrNum(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setTrueImsiMcc(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setTrueImsiNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract setVoiceConfig(Lcom/qualcomm/qcnvitems/QmiNvItemTypes$VoiceConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract updateAkey(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract updateSpCode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
