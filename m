Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB87A02A5
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 15:08:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D7B4922B25;
	Wed, 28 Aug 2019 13:08:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8754Ot8P7ztV; Wed, 28 Aug 2019 13:08:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ADF2E20C45;
	Wed, 28 Aug 2019 13:08:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 188F41BF286
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 13:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1569E8885E
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 13:08:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yRYXq8qGvKl6 for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 13:08:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2237588852
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 13:08:04 +0000 (UTC)
Received: from [213.220.153.21] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <christian.brauner@ubuntu.com>)
 id 1i2xg8-0004cW-U1; Wed, 28 Aug 2019 13:08:01 +0000
Date: Wed, 28 Aug 2019 15:08:00 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Hridya Valsaraju <hridya@google.com>
Subject: Re: [PATCH 4/4] binder: Add binder_proc logging to binderfs
Message-ID: <20190828130759.4b4gtzf2jpi5c46y@wittgenstein>
References: <20190827204152.114609-1-hridya@google.com>
 <20190827204152.114609-5-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827204152.114609-5-hridya@google.com>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, kernel-team@android.com,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 27, 2019 at 01:41:52PM -0700, Hridya Valsaraju wrote:
> Currently /sys/kernel/debug/binder/proc contains
> the debug data for every binder_proc instance.
> This patch makes this information also available
> in a binderfs instance mounted with a mount option
> "stats=global" in addition to debugfs. The patch does
> not affect the presence of the file in debugfs.
> 
> If a binderfs instance is mounted at path /dev/binderfs,
> this file would be present at /dev/binderfs/binder_logs/proc.
> This change provides an alternate way to access this file when debugfs
> is not mounted.
> 
> Signed-off-by: Hridya Valsaraju <hridya@google.com>

I'm still wondering whether there's a nicer way to create those debuf
files per-process without doing it in binder_open() but it has worked
fine for a long time with debugfs.

Also, one minor question below. Otherwise

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

> ---
>  drivers/android/binder.c          | 38 ++++++++++++++++++-
>  drivers/android/binder_internal.h | 46 ++++++++++++++++++++++
>  drivers/android/binderfs.c        | 63 ++++++++++++++-----------------
>  3 files changed, 111 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index bed217310197..37189838f32a 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -481,6 +481,7 @@ struct binder_priority {
>   * @inner_lock:           can nest under outer_lock and/or node lock
>   * @outer_lock:           no nesting under innor or node lock
>   *                        Lock order: 1) outer, 2) node, 3) inner
> + * @binderfs_entry:       process-specific binderfs log file
>   *
>   * Bookkeeping structure for binder processes
>   */
> @@ -510,6 +511,7 @@ struct binder_proc {
>  	struct binder_context *context;
>  	spinlock_t inner_lock;
>  	spinlock_t outer_lock;
> +	struct dentry *binderfs_entry;
>  };
>  
>  enum {
> @@ -5347,6 +5349,8 @@ static int binder_open(struct inode *nodp, struct file *filp)
>  {
>  	struct binder_proc *proc;
>  	struct binder_device *binder_dev;
> +	struct binderfs_info *info;
> +	struct dentry *binder_binderfs_dir_entry_proc = NULL;
>  
>  	binder_debug(BINDER_DEBUG_OPEN_CLOSE, "%s: %d:%d\n", __func__,
>  		     current->group_leader->pid, current->pid);
> @@ -5368,11 +5372,14 @@ static int binder_open(struct inode *nodp, struct file *filp)
>  	}
>  
>  	/* binderfs stashes devices in i_private */
> -	if (is_binderfs_device(nodp))
> +	if (is_binderfs_device(nodp)) {
>  		binder_dev = nodp->i_private;
> -	else
> +		info = nodp->i_sb->s_fs_info;
> +		binder_binderfs_dir_entry_proc = info->proc_log_dir;
> +	} else {
>  		binder_dev = container_of(filp->private_data,
>  					  struct binder_device, miscdev);
> +	}
>  	proc->context = &binder_dev->context;
>  	binder_alloc_init(&proc->alloc);
>  
> @@ -5403,6 +5410,27 @@ static int binder_open(struct inode *nodp, struct file *filp)
>  			&proc_fops);
>  	}
>  
> +	if (binder_binderfs_dir_entry_proc) {
> +		char strbuf[11];
> +		struct dentry *binderfs_entry;
> +
> +		snprintf(strbuf, sizeof(strbuf), "%u", proc->pid);
> +		/*
> +		 * Similar to debugfs, the process specific log file is shared
> +		 * between contexts. If the file has already been created for a
> +		 * process, the following binderfs_create_file() call will
> +		 * fail if another context of the same process invoked
> +		 * binder_open(). This is ok since same as debugfs,
> +		 * the log file will contain information on all contexts of a
> +		 * given PID.
> +		 */
> +		binderfs_entry = binderfs_create_file(binder_binderfs_dir_entry_proc,
> +			strbuf, &proc_fops, (void *)(unsigned long)proc->pid);
> +		if (!IS_ERR(binderfs_entry))
> +			proc->binderfs_entry = binderfs_entry;

You are sure that you don't want to fail the open, when the debug file
cannot be created in the binderfs instance? I'm not objecting at all, I
just want to make sure that this is the semantics you want because it
would be easy to differentiate between the non-fail-debugfs and the new
binderfs case.

> +
> +	}
> +
>  	return 0;
>  }
>  
> @@ -5442,6 +5470,12 @@ static int binder_release(struct inode *nodp, struct file *filp)
>  	struct binder_proc *proc = filp->private_data;
>  
>  	debugfs_remove(proc->debugfs_entry);
> +
> +	if (proc->binderfs_entry) {
> +		binderfs_remove_file(proc->binderfs_entry);
> +		proc->binderfs_entry = NULL;
> +	}
> +
>  	binder_defer_work(proc, BINDER_DEFERRED_RELEASE);
>  
>  	return 0;
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index b9be42d9464c..bd47f7f72075 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -35,17 +35,63 @@ struct binder_device {
>  	struct inode *binderfs_inode;
>  };
>  
> +/**
> + * binderfs_mount_opts - mount options for binderfs
> + * @max: maximum number of allocatable binderfs binder devices
> + * @stats_mode: enable binder stats in binderfs.
> + */
> +struct binderfs_mount_opts {
> +	int max;
> +	int stats_mode;
> +};
> +
> +/**
> + * binderfs_info - information about a binderfs mount
> + * @ipc_ns:         The ipc namespace the binderfs mount belongs to.
> + * @control_dentry: This records the dentry of this binderfs mount
> + *                  binder-control device.
> + * @root_uid:       uid that needs to be used when a new binder device is
> + *                  created.
> + * @root_gid:       gid that needs to be used when a new binder device is
> + *                  created.
> + * @mount_opts:     The mount options in use.
> + * @device_count:   The current number of allocated binder devices.
> + * @proc_log_dir:   Pointer to the directory dentry containing process-specific
> + *                  logs.
> + */
> +struct binderfs_info {
> +	struct ipc_namespace *ipc_ns;
> +	struct dentry *control_dentry;
> +	kuid_t root_uid;
> +	kgid_t root_gid;
> +	struct binderfs_mount_opts mount_opts;
> +	int device_count;
> +	struct dentry *proc_log_dir;
> +};
> +
>  extern const struct file_operations binder_fops;
>  
>  extern char *binder_devices_param;
>  
>  #ifdef CONFIG_ANDROID_BINDERFS
>  extern bool is_binderfs_device(const struct inode *inode);
> +extern struct dentry *binderfs_create_file(struct dentry *dir, const char *name,
> +					   const struct file_operations *fops,
> +					   void *data);
> +extern void binderfs_remove_file(struct dentry *dentry);
>  #else
>  static inline bool is_binderfs_device(const struct inode *inode)
>  {
>  	return false;
>  }
> +static inline struct dentry *binderfs_create_file(struct dentry *dir,
> +					   const char *name,
> +					   const struct file_operations *fops,
> +					   void *data)
> +{
> +	return NULL;
> +}
> +static inline void binderfs_remove_file(struct dentry *dentry) {}
>  #endif
>  
>  #ifdef CONFIG_ANDROID_BINDERFS
> diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> index dc25a7d759c9..c386a3738290 100644
> --- a/drivers/android/binderfs.c
> +++ b/drivers/android/binderfs.c
> @@ -48,16 +48,6 @@ static dev_t binderfs_dev;
>  static DEFINE_MUTEX(binderfs_minors_mutex);
>  static DEFINE_IDA(binderfs_minors);
>  
> -/**
> - * binderfs_mount_opts - mount options for binderfs
> - * @max: maximum number of allocatable binderfs binder devices
> - * @stats_mode: enable binder stats in binderfs.
> - */
> -struct binderfs_mount_opts {
> -	int max;
> -	int stats_mode;
> -};
> -
>  enum {
>  	Opt_max,
>  	Opt_stats_mode,
> @@ -75,27 +65,6 @@ static const match_table_t tokens = {
>  	{ Opt_err, NULL     }
>  };
>  
> -/**
> - * binderfs_info - information about a binderfs mount
> - * @ipc_ns:         The ipc namespace the binderfs mount belongs to.
> - * @control_dentry: This records the dentry of this binderfs mount
> - *                  binder-control device.
> - * @root_uid:       uid that needs to be used when a new binder device is
> - *                  created.
> - * @root_gid:       gid that needs to be used when a new binder device is
> - *                  created.
> - * @mount_opts:     The mount options in use.
> - * @device_count:   The current number of allocated binder devices.
> - */
> -struct binderfs_info {
> -	struct ipc_namespace *ipc_ns;
> -	struct dentry *control_dentry;
> -	kuid_t root_uid;
> -	kgid_t root_gid;
> -	struct binderfs_mount_opts mount_opts;
> -	int device_count;
> -};
> -
>  static inline struct binderfs_info *BINDERFS_I(const struct inode *inode)
>  {
>  	return inode->i_sb->s_fs_info;
> @@ -535,7 +504,22 @@ static struct dentry *binderfs_create_dentry(struct dentry *dir,
>  	return dentry;
>  }
>  
> -static struct dentry *binderfs_create_file(struct dentry *dir, const char *name,
> +void binderfs_remove_file(struct dentry *dentry)
> +{
> +	struct inode *dir;
> +
> +	dir = d_inode(dentry->d_parent);
> +	inode_lock(dir);
> +	if (simple_positive(dentry)) {
> +		dget(dentry);
> +		simple_unlink(dir, dentry);
> +		d_delete(dentry);
> +		dput(dentry);
> +	}
> +	inode_unlock(dir);
> +}
> +
> +struct dentry *binderfs_create_file(struct dentry *dir, const char *name,
>  				    const struct file_operations *fops,
>  				    void *data)
>  {
> @@ -604,7 +588,8 @@ static struct dentry *binderfs_create_dir(struct dentry *parent,
>  
>  static int init_binder_logs(struct super_block *sb)
>  {
> -	struct dentry *binder_logs_root_dir, *file_dentry;
> +	struct dentry *binder_logs_root_dir, *file_dentry, *proc_log_dir;
> +	struct binderfs_info *info;
>  	int ret = 0;
>  
>  	binder_logs_root_dir = binderfs_create_dir(sb->s_root,
> @@ -648,8 +633,18 @@ static int init_binder_logs(struct super_block *sb)
>  					   "failed_transaction_log",
>  					   &binder_transaction_log_fops,
>  					   &binder_transaction_log_failed);
> -	if (IS_ERR(file_dentry))
> +	if (IS_ERR(file_dentry)) {
>  		ret = PTR_ERR(file_dentry);
> +		goto out;
> +	}
> +
> +	proc_log_dir = binderfs_create_dir(binder_logs_root_dir, "proc");
> +	if (IS_ERR(proc_log_dir)) {
> +		ret = PTR_ERR(proc_log_dir);
> +		goto out;
> +	}
> +	info = sb->s_fs_info;
> +	info->proc_log_dir = proc_log_dir;
>  
>  out:
>  	return ret;
> -- 
> 2.23.0.187.g17f5b7556c-goog
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
