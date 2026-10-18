.class public interface abstract Lorg/apache/commons/io/output/UncheckedAppendable;
.super Ljava/lang/Object;
.source "UncheckedAppendable.java"

# interfaces
.implements Ljava/lang/Appendable;


# direct methods
.method public static on(Ljava/lang/Appendable;)Lorg/apache/commons/io/output/UncheckedAppendable;
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedAppendableImpl;-><init>(Ljava/lang/Appendable;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-interface {p0, p1}, Lorg/apache/commons/io/output/UncheckedAppendable;->append(C)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-interface {p0, p1}, Lorg/apache/commons/io/output/UncheckedAppendable;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedAppendable;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public abstract append(C)Lorg/apache/commons/io/output/UncheckedAppendable;
.end method

.method public abstract append(Ljava/lang/CharSequence;)Lorg/apache/commons/io/output/UncheckedAppendable;
.end method

.method public abstract append(Ljava/lang/CharSequence;II)Lorg/apache/commons/io/output/UncheckedAppendable;
.end method
