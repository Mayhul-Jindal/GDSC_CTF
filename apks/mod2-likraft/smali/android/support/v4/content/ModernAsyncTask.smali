.class abstract Landroid/support/v4/content/ModernAsyncTask;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;,
        Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;,
        Landroid/support/v4/content/ModernAsyncTask$InternalHandler;,
        Landroid/support/v4/content/ModernAsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static sHandler:Landroid/support/v4/content/ModernAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 55
    new-instance v7, Landroid/support/v4/content/ModernAsyncTask$1;

    invoke-direct {v7}, Landroid/support/v4/content/ModernAsyncTask$1;-><init>()V

    sput-object v7, Landroid/support/v4/content/ModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 63
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v6, Landroid/support/v4/content/ModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 69
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Landroid/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 78
    sput-object v8, Landroid/support/v4/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$2;

    invoke-direct {v0, p0}, Landroid/support/v4/content/ModernAsyncTask$2;-><init>(Landroid/support/v4/content/ModernAsyncTask;)V

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mWorker:Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;

    .line 132
    new-instance v1, Landroid/support/v4/content/ModernAsyncTask$3;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/content/ModernAsyncTask$3;-><init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 48
    iget-object p0, p0, Landroid/support/v4/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 438
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 468
    :goto_0
    sget-object p1, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;

    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .line 106
    const-class v0, Landroid/support/v4/content/ModernAsyncTask;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Landroid/support/v4/content/ModernAsyncTask;->sHandler:Landroid/support/v4/content/ModernAsyncTask$InternalHandler;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Landroid/support/v4/content/ModernAsyncTask$InternalHandler;

    invoke-direct {v1}, Landroid/support/v4/content/ModernAsyncTask$InternalHandler;-><init>()V

    sput-object v1, Landroid/support/v4/content/ModernAsyncTask;->sHandler:Landroid/support/v4/content/ModernAsyncTask$InternalHandler;

    .line 110
    :cond_0
    sget-object v1, Landroid/support/v4/content/ModernAsyncTask;->sHandler:Landroid/support/v4/content/ModernAsyncTask$InternalHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 162
    invoke-static {}, Landroid/support/v4/content/ModernAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;-><init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 116
    sput-object p0, Landroid/support/v4/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 311
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Landroid/support/v4/content/ModernAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 376
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/content/ModernAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroid/support/v4/content/ModernAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;

    sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 412
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I

    iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v1}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_2
    :goto_0
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;

    .line 425
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->onPreExecute()V

    .line 427
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mWorker:Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;

    iput-object p2, v0, Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 428
    iget-object p2, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getStatus()Landroid/support/v4/content/ModernAsyncTask$Status;
    .locals 1

    .line 174
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mStatus:Landroid/support/v4/content/ModernAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 278
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-static {}, Landroid/support/v4/content/ModernAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;-><init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
