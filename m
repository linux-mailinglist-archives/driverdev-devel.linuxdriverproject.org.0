Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8ABA072F
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 18:21:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3E180250D0;
	Wed, 28 Aug 2019 16:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GXQUd9sQpErE; Wed, 28 Aug 2019 16:21:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 077302314A;
	Wed, 28 Aug 2019 16:21:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23F151BF3FD
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 16:21:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 20AED86B20
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 16:21:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IC3l3lV-QHRd for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 16:21:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 88BE486A10
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 16:21:38 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id l14so87057ljj.9
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 09:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+N7tBNex/H4hmDc+IQsOM6EnalTAb4uBLWHTxE0uTJU=;
 b=UL6qJbYG59njWk9wpZmtaWCjDSowVukiRgqI6eZfRATDD6omgWXjcwfvURosQzytnk
 qlSQrXORYPIMv9ewNsLmHFzXQo4E62XFQfSoowJFzTvkNGuMrCCp3Es+WvAC5C2ba/ep
 V8AwiWqas92kDgDIrosuSlm+02stCGKalJ3X+vcGwhPMeB6dUtl8JNRFbcsESYWwaMMi
 MynTF/NVGS+O6Qbb019LW85OMWKJCe17L3P9hIwjhbhVD23UZGvpIPm1FtjZ2dn5hizZ
 IYCDO60OnZyMh0iVcLMWeBjjc00yVJiHEy0YZdIya4pE2aeNe2gXEDJceTbOV7HS236Y
 mq/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+N7tBNex/H4hmDc+IQsOM6EnalTAb4uBLWHTxE0uTJU=;
 b=LsKLSLWHI2A+BUfpLEnoXuXai+7GkpjvavhHNIoEoGmgisYELB1KudSc80VIfYXBlk
 1rArg9FYkGkl36TFDx6Q+aNFTNLJtHbWPj0LQUsnXZJ104+UasTXD83ecTZM+0chwqNr
 PDyPFc6BQ5LVT/kMKKqdOsRKcy/9K5psCXoNr4UzttALtn8JAn9mkDAhuNrmw5yKUAJI
 VAPTaLyJ9cyr1HruvOWOyV9IZeCVoyINgJ5ySzAZ09cgziIgm8mA+iiZ3YZ8/mfZ8g1i
 oMC7NJuvtjVI0u3QrmYxmM2+kHS3OWjD8AIpMGUNCZuvPXBSyL2A0wCz7e/o2tVnA/Ps
 kjwQ==
X-Gm-Message-State: APjAAAV1ehkdy5ZNGHM0lJlaydLElsDh0Kv4S2XnO0dLcJdgLaDfIlCW
 dtLcnwDGuks4yTLqfliF+pPOKLx1Z/uW1vImt9pBqw==
X-Google-Smtp-Source: APXvYqweDQQOObJCIRc6tBRPRUSByNZcAYffFLSIL93snwSfMmOZsSNiXu0zd+i0q/aNLdhGoT3e4ZGUQeMgdzbIrBo=
X-Received: by 2002:a2e:a313:: with SMTP id l19mr2579738lje.32.1567009296011; 
 Wed, 28 Aug 2019 09:21:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190827204152.114609-1-hridya@google.com>
 <20190827204152.114609-5-hridya@google.com>
 <20190828130759.4b4gtzf2jpi5c46y@wittgenstein>
In-Reply-To: <20190828130759.4b4gtzf2jpi5c46y@wittgenstein>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 28 Aug 2019 09:21:24 -0700
Message-ID: <CAHRSSEw3Z6Wg1dsXmJei-o=FRj1U0Ys9_WHRbB4KTCCwjntjeQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] binder: Add binder_proc logging to binderfs
To: Christian Brauner <christian.brauner@ubuntu.com>
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Android Kernel Team <kernel-team@android.com>, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Joel Fernandes <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 28, 2019 at 6:08 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Tue, Aug 27, 2019 at 01:41:52PM -0700, Hridya Valsaraju wrote:
> > Currently /sys/kernel/debug/binder/proc contains
> > the debug data for every binder_proc instance.
> > This patch makes this information also available
> > in a binderfs instance mounted with a mount option
> > "stats=global" in addition to debugfs. The patch does
> > not affect the presence of the file in debugfs.
> >
> > If a binderfs instance is mounted at path /dev/binderfs,
> > this file would be present at /dev/binderfs/binder_logs/proc.
> > This change provides an alternate way to access this file when debugfs
> > is not mounted.
> >
> > Signed-off-by: Hridya Valsaraju <hridya@google.com>
>
> I'm still wondering whether there's a nicer way to create those debuf
> files per-process without doing it in binder_open() but it has worked
> fine for a long time with debugfs.
>
> Also, one minor question below. Otherwise
>
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

Acked-by: Todd Kjos <tkjos@google.com>

>
> > ---
> >  drivers/android/binder.c          | 38 ++++++++++++++++++-
> >  drivers/android/binder_internal.h | 46 ++++++++++++++++++++++
> >  drivers/android/binderfs.c        | 63 ++++++++++++++-----------------
> >  3 files changed, 111 insertions(+), 36 deletions(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index bed217310197..37189838f32a 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -481,6 +481,7 @@ struct binder_priority {
> >   * @inner_lock:           can nest under outer_lock and/or node lock
> >   * @outer_lock:           no nesting under innor or node lock
> >   *                        Lock order: 1) outer, 2) node, 3) inner
> > + * @binderfs_entry:       process-specific binderfs log file
> >   *
> >   * Bookkeeping structure for binder processes
> >   */
> > @@ -510,6 +511,7 @@ struct binder_proc {
> >       struct binder_context *context;
> >       spinlock_t inner_lock;
> >       spinlock_t outer_lock;
> > +     struct dentry *binderfs_entry;
> >  };
> >
> >  enum {
> > @@ -5347,6 +5349,8 @@ static int binder_open(struct inode *nodp, struct file *filp)
> >  {
> >       struct binder_proc *proc;
> >       struct binder_device *binder_dev;
> > +     struct binderfs_info *info;
> > +     struct dentry *binder_binderfs_dir_entry_proc = NULL;
> >
> >       binder_debug(BINDER_DEBUG_OPEN_CLOSE, "%s: %d:%d\n", __func__,
> >                    current->group_leader->pid, current->pid);
> > @@ -5368,11 +5372,14 @@ static int binder_open(struct inode *nodp, struct file *filp)
> >       }
> >
> >       /* binderfs stashes devices in i_private */
> > -     if (is_binderfs_device(nodp))
> > +     if (is_binderfs_device(nodp)) {
> >               binder_dev = nodp->i_private;
> > -     else
> > +             info = nodp->i_sb->s_fs_info;
> > +             binder_binderfs_dir_entry_proc = info->proc_log_dir;
> > +     } else {
> >               binder_dev = container_of(filp->private_data,
> >                                         struct binder_device, miscdev);
> > +     }
> >       proc->context = &binder_dev->context;
> >       binder_alloc_init(&proc->alloc);
> >
> > @@ -5403,6 +5410,27 @@ static int binder_open(struct inode *nodp, struct file *filp)
> >                       &proc_fops);
> >       }
> >
> > +     if (binder_binderfs_dir_entry_proc) {
> > +             char strbuf[11];
> > +             struct dentry *binderfs_entry;
> > +
> > +             snprintf(strbuf, sizeof(strbuf), "%u", proc->pid);
> > +             /*
> > +              * Similar to debugfs, the process specific log file is shared
> > +              * between contexts. If the file has already been created for a
> > +              * process, the following binderfs_create_file() call will
> > +              * fail if another context of the same process invoked
> > +              * binder_open(). This is ok since same as debugfs,
> > +              * the log file will contain information on all contexts of a
> > +              * given PID.
> > +              */
> > +             binderfs_entry = binderfs_create_file(binder_binderfs_dir_entry_proc,
> > +                     strbuf, &proc_fops, (void *)(unsigned long)proc->pid);
> > +             if (!IS_ERR(binderfs_entry))
> > +                     proc->binderfs_entry = binderfs_entry;
>
> You are sure that you don't want to fail the open, when the debug file
> cannot be created in the binderfs instance? I'm not objecting at all, I
> just want to make sure that this is the semantics you want because it
> would be easy to differentiate between the non-fail-debugfs and the new
> binderfs case.

I don't think we should fail the open, but it would be nice to have
some indication that it failed -- maybe a pr_warn() ?
>
> > +
> > +     }
> > +
> >       return 0;
> >  }
> >
> > @@ -5442,6 +5470,12 @@ static int binder_release(struct inode *nodp, struct file *filp)
> >       struct binder_proc *proc = filp->private_data;
> >
> >       debugfs_remove(proc->debugfs_entry);
> > +
> > +     if (proc->binderfs_entry) {
> > +             binderfs_remove_file(proc->binderfs_entry);
> > +             proc->binderfs_entry = NULL;
> > +     }
> > +
> >       binder_defer_work(proc, BINDER_DEFERRED_RELEASE);
> >
> >       return 0;
> > diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> > index b9be42d9464c..bd47f7f72075 100644
> > --- a/drivers/android/binder_internal.h
> > +++ b/drivers/android/binder_internal.h
> > @@ -35,17 +35,63 @@ struct binder_device {
> >       struct inode *binderfs_inode;
> >  };
> >
> > +/**
> > + * binderfs_mount_opts - mount options for binderfs
> > + * @max: maximum number of allocatable binderfs binder devices
> > + * @stats_mode: enable binder stats in binderfs.
> > + */
> > +struct binderfs_mount_opts {
> > +     int max;
> > +     int stats_mode;
> > +};
> > +
> > +/**
> > + * binderfs_info - information about a binderfs mount
> > + * @ipc_ns:         The ipc namespace the binderfs mount belongs to.
> > + * @control_dentry: This records the dentry of this binderfs mount
> > + *                  binder-control device.
> > + * @root_uid:       uid that needs to be used when a new binder device is
> > + *                  created.
> > + * @root_gid:       gid that needs to be used when a new binder device is
> > + *                  created.
> > + * @mount_opts:     The mount options in use.
> > + * @device_count:   The current number of allocated binder devices.
> > + * @proc_log_dir:   Pointer to the directory dentry containing process-specific
> > + *                  logs.
> > + */
> > +struct binderfs_info {
> > +     struct ipc_namespace *ipc_ns;
> > +     struct dentry *control_dentry;
> > +     kuid_t root_uid;
> > +     kgid_t root_gid;
> > +     struct binderfs_mount_opts mount_opts;
> > +     int device_count;
> > +     struct dentry *proc_log_dir;
> > +};
> > +
> >  extern const struct file_operations binder_fops;
> >
> >  extern char *binder_devices_param;
> >
> >  #ifdef CONFIG_ANDROID_BINDERFS
> >  extern bool is_binderfs_device(const struct inode *inode);
> > +extern struct dentry *binderfs_create_file(struct dentry *dir, const char *name,
> > +                                        const struct file_operations *fops,
> > +                                        void *data);
> > +extern void binderfs_remove_file(struct dentry *dentry);
> >  #else
> >  static inline bool is_binderfs_device(const struct inode *inode)
> >  {
> >       return false;
> >  }
> > +static inline struct dentry *binderfs_create_file(struct dentry *dir,
> > +                                        const char *name,
> > +                                        const struct file_operations *fops,
> > +                                        void *data)
> > +{
> > +     return NULL;
> > +}
> > +static inline void binderfs_remove_file(struct dentry *dentry) {}
> >  #endif
> >
> >  #ifdef CONFIG_ANDROID_BINDERFS
> > diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> > index dc25a7d759c9..c386a3738290 100644
> > --- a/drivers/android/binderfs.c
> > +++ b/drivers/android/binderfs.c
> > @@ -48,16 +48,6 @@ static dev_t binderfs_dev;
> >  static DEFINE_MUTEX(binderfs_minors_mutex);
> >  static DEFINE_IDA(binderfs_minors);
> >
> > -/**
> > - * binderfs_mount_opts - mount options for binderfs
> > - * @max: maximum number of allocatable binderfs binder devices
> > - * @stats_mode: enable binder stats in binderfs.
> > - */
> > -struct binderfs_mount_opts {
> > -     int max;
> > -     int stats_mode;
> > -};
> > -
> >  enum {
> >       Opt_max,
> >       Opt_stats_mode,
> > @@ -75,27 +65,6 @@ static const match_table_t tokens = {
> >       { Opt_err, NULL     }
> >  };
> >
> > -/**
> > - * binderfs_info - information about a binderfs mount
> > - * @ipc_ns:         The ipc namespace the binderfs mount belongs to.
> > - * @control_dentry: This records the dentry of this binderfs mount
> > - *                  binder-control device.
> > - * @root_uid:       uid that needs to be used when a new binder device is
> > - *                  created.
> > - * @root_gid:       gid that needs to be used when a new binder device is
> > - *                  created.
> > - * @mount_opts:     The mount options in use.
> > - * @device_count:   The current number of allocated binder devices.
> > - */
> > -struct binderfs_info {
> > -     struct ipc_namespace *ipc_ns;
> > -     struct dentry *control_dentry;
> > -     kuid_t root_uid;
> > -     kgid_t root_gid;
> > -     struct binderfs_mount_opts mount_opts;
> > -     int device_count;
> > -};
> > -
> >  static inline struct binderfs_info *BINDERFS_I(const struct inode *inode)
> >  {
> >       return inode->i_sb->s_fs_info;
> > @@ -535,7 +504,22 @@ static struct dentry *binderfs_create_dentry(struct dentry *dir,
> >       return dentry;
> >  }
> >
> > -static struct dentry *binderfs_create_file(struct dentry *dir, const char *name,
> > +void binderfs_remove_file(struct dentry *dentry)
> > +{
> > +     struct inode *dir;
> > +
> > +     dir = d_inode(dentry->d_parent);
> > +     inode_lock(dir);
> > +     if (simple_positive(dentry)) {
> > +             dget(dentry);
> > +             simple_unlink(dir, dentry);
> > +             d_delete(dentry);
> > +             dput(dentry);
> > +     }
> > +     inode_unlock(dir);
> > +}
> > +
> > +struct dentry *binderfs_create_file(struct dentry *dir, const char *name,
> >                                   const struct file_operations *fops,
> >                                   void *data)
> >  {
> > @@ -604,7 +588,8 @@ static struct dentry *binderfs_create_dir(struct dentry *parent,
> >
> >  static int init_binder_logs(struct super_block *sb)
> >  {
> > -     struct dentry *binder_logs_root_dir, *file_dentry;
> > +     struct dentry *binder_logs_root_dir, *file_dentry, *proc_log_dir;
> > +     struct binderfs_info *info;
> >       int ret = 0;
> >
> >       binder_logs_root_dir = binderfs_create_dir(sb->s_root,
> > @@ -648,8 +633,18 @@ static int init_binder_logs(struct super_block *sb)
> >                                          "failed_transaction_log",
> >                                          &binder_transaction_log_fops,
> >                                          &binder_transaction_log_failed);
> > -     if (IS_ERR(file_dentry))
> > +     if (IS_ERR(file_dentry)) {
> >               ret = PTR_ERR(file_dentry);
> > +             goto out;
> > +     }
> > +
> > +     proc_log_dir = binderfs_create_dir(binder_logs_root_dir, "proc");
> > +     if (IS_ERR(proc_log_dir)) {
> > +             ret = PTR_ERR(proc_log_dir);
> > +             goto out;
> > +     }
> > +     info = sb->s_fs_info;
> > +     info->proc_log_dir = proc_log_dir;
> >
> >  out:
> >       return ret;
> > --
> > 2.23.0.187.g17f5b7556c-goog
> >
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
