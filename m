Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E4AA0B33
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 22:20:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E3B188C2F;
	Wed, 28 Aug 2019 20:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IONU1DWJv8cX; Wed, 28 Aug 2019 20:20:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08FD388C07;
	Wed, 28 Aug 2019 20:20:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 74C521BF4E2
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 20:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7134688BC7
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 20:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CpwQ0907w2wv for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 20:20:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 85E4C88915
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 20:20:11 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id f17so1138949otq.4
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 13:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kZdApXr7HqxlwdsIqx7JRjNU5L47bfzu9+cVzi/wilM=;
 b=EdWzyAPkTBY+vrZQocH789fQ4t/os1Ygvj5020ZxvjsaGWulSsQKv4dLOVKJCxzZP2
 Z8lWs32NbYkVz+PGG4WfdPBjqonhDt68G+kJxW/HkHFOW47ehkZIfD5vABTKm9ldu6db
 LxIng0pHRkH7V5H80+7305Q6OQYWunXLgdq1dFsOfM0uHA3YELY90GNWLVAD1fCDpje6
 ad7Q4N/pw94HH5Xj83Q3jOELs45m9eDpN6MQeG2wCF2fFqnoi+jpKopfFDWgD3p0XbDj
 zYNCDbMtGArHytv8s/99XSmutHVNdhioB0Vb2ZRfhj82mSw8RGL7R2NOHNo+bykJpIYJ
 kUNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kZdApXr7HqxlwdsIqx7JRjNU5L47bfzu9+cVzi/wilM=;
 b=gz4SYgqHFPh3m1eD1PTUx7jljVulOxk/KoxiudVoauqx/10sIxyyBp43bjMBFafimz
 WswWo/znIg8wkQ4od+X6c+TtAM3CxcaD8sHsyLEPAGIIXXJTDygWo6RPnEo6B/2XuxdQ
 1NCeHx0dh+lXGLDGM8dBYZtFHaBDB/ioVLIYWVHPFUO0WvTmSQR6MtSeKo208V6XqlC1
 qkSzxam36bldRC2syF3FR4W5lGRW81o8eR0R/j7HfWn1+a2MMFY7Smb+FShWV4ZuNnCU
 D+X91jZgfmJ/1iuwdM1kOCfuwFzZV444Ls7XKX0EqXpw6Uofu0K+iP4OCC8GLXcOiaOL
 fi7w==
X-Gm-Message-State: APjAAAXVklkcdv+7Qz/ooDjtOaXWnpuAPT3RT3SEVFuQmY25HcqSyVll
 +C1+0kVXLskpTjqpO7wkK6HVgjQI8tdvs8t1d9edfA==
X-Google-Smtp-Source: APXvYqzpRwBDr5k3lHA1Fn4+aNQ2cSnP2tDWjnyZhpbILqeveLlypdbb6aa2cI5016dpfZeIdMTWDY+la2UgntTulo4=
X-Received: by 2002:a9d:4817:: with SMTP id c23mr4529909otf.97.1567023610275; 
 Wed, 28 Aug 2019 13:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190827204152.114609-1-hridya@google.com>
 <20190827204152.114609-3-hridya@google.com>
 <20190828125816.cexbvn2dqy6to3ww@wittgenstein>
In-Reply-To: <20190828125816.cexbvn2dqy6to3ww@wittgenstein>
From: Hridya Valsaraju <hridya@google.com>
Date: Wed, 28 Aug 2019 13:19:33 -0700
Message-ID: <CA+wgaPNkPgo64H6ZyFPCP_1BFSt1ZPQqBFk701a=W9O4H9BB-Q@mail.gmail.com>
Subject: Re: [PATCH 2/4] binder: Add stats, state and transactions files
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
Cc: devel@driverdev.osuosl.org, kernel-team@android.com,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 28, 2019 at 5:58 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Tue, Aug 27, 2019 at 01:41:50PM -0700, Hridya Valsaraju wrote:
> > The following binder stat files currently live in debugfs.
> >
> > /sys/kernel/debug/binder/state
> > /sys/kernel/debug/binder/stats
> > /sys/kernel/debug/binder/transactions
> >
> > This patch makes these files available in a binderfs instance
> > mounted with the mount option 'stats=global'. For example, if a binderfs
> > instance is mounted at path /dev/binderfs, the above files will be
> > available at the following locations:
> >
> > /dev/binderfs/binder_logs/state
> > /dev/binderfs/binder_logs/stats
> > /dev/binderfs/binder_logs/transactions
> >
> > This provides a way to access them even when debugfs is not mounted.
> >
> > Signed-off-by: Hridya Valsaraju <hridya@google.com>
> > ---
> >  drivers/android/binder.c          |  15 ++--
> >  drivers/android/binder_internal.h |   8 ++
> >  drivers/android/binderfs.c        | 137 +++++++++++++++++++++++++++++-
> >  3 files changed, 150 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index ca6b21a53321..de795bd229c4 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -6055,7 +6055,7 @@ static void print_binder_proc_stats(struct seq_file *m,
> >  }
> >
> >
> > -static int state_show(struct seq_file *m, void *unused)
> > +int binder_state_show(struct seq_file *m, void *unused)
> >  {
> >       struct binder_proc *proc;
> >       struct binder_node *node;
> > @@ -6094,7 +6094,7 @@ static int state_show(struct seq_file *m, void *unused)
> >       return 0;
> >  }
> >
> > -static int stats_show(struct seq_file *m, void *unused)
> > +int binder_stats_show(struct seq_file *m, void *unused)
> >  {
> >       struct binder_proc *proc;
> >
> > @@ -6110,7 +6110,7 @@ static int stats_show(struct seq_file *m, void *unused)
> >       return 0;
> >  }
> >
> > -static int transactions_show(struct seq_file *m, void *unused)
> > +int binder_transactions_show(struct seq_file *m, void *unused)
> >  {
> >       struct binder_proc *proc;
> >
> > @@ -6198,9 +6198,6 @@ const struct file_operations binder_fops = {
> >       .release = binder_release,
> >  };
> >
> > -DEFINE_SHOW_ATTRIBUTE(state);
> > -DEFINE_SHOW_ATTRIBUTE(stats);
> > -DEFINE_SHOW_ATTRIBUTE(transactions);
> >  DEFINE_SHOW_ATTRIBUTE(transaction_log);
> >
> >  static int __init init_binder_device(const char *name)
> > @@ -6256,17 +6253,17 @@ static int __init binder_init(void)
> >                                   0444,
> >                                   binder_debugfs_dir_entry_root,
> >                                   NULL,
> > -                                 &state_fops);
> > +                                 &binder_state_fops);
> >               debugfs_create_file("stats",
> >                                   0444,
> >                                   binder_debugfs_dir_entry_root,
> >                                   NULL,
> > -                                 &stats_fops);
> > +                                 &binder_stats_fops);
> >               debugfs_create_file("transactions",
> >                                   0444,
> >                                   binder_debugfs_dir_entry_root,
> >                                   NULL,
> > -                                 &transactions_fops);
> > +                                 &binder_transactions_fops);
> >               debugfs_create_file("transaction_log",
> >                                   0444,
> >                                   binder_debugfs_dir_entry_root,
> > diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> > index fe8c745dc8e0..12ef96f256c6 100644
> > --- a/drivers/android/binder_internal.h
> > +++ b/drivers/android/binder_internal.h
> > @@ -57,4 +57,12 @@ static inline int __init init_binderfs(void)
> >  }
> >  #endif
> >
> > +int binder_stats_show(struct seq_file *m, void *unused);
> > +DEFINE_SHOW_ATTRIBUTE(binder_stats);
> > +
> > +int binder_state_show(struct seq_file *m, void *unused);
> > +DEFINE_SHOW_ATTRIBUTE(binder_state);
> > +
> > +int binder_transactions_show(struct seq_file *m, void *unused);
> > +DEFINE_SHOW_ATTRIBUTE(binder_transactions);
> >  #endif /* _LINUX_BINDER_INTERNAL_H */
> > diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> > index d95d179aec58..d542f9b8d8ab 100644
> > --- a/drivers/android/binderfs.c
> > +++ b/drivers/android/binderfs.c
> > @@ -280,7 +280,7 @@ static void binderfs_evict_inode(struct inode *inode)
> >
> >       clear_inode(inode);
> >
> > -     if (!device)
> > +     if (!device || S_ISREG(inode->i_mode))
>
> Hm, remind me why we need the S_ISREG again?

Thanks for taking a look Christian! We need the additional check
because for some of the stat files(for example, the transaction log
file in patch 3/5), the binder driver uses the i_private field of its
inode to stash some data that will be used for content generation when
the file is opened.

> Also we probably should do:
>
> if (S_ISREG(inode->i_mode) || !device)
>
> should this maybe be:
>
> if (!S_ISCHR(inode->i_mode) || !device)
>
> ?

Sounds good to me, will make the change in v2!

>
> >               return;
> >
> >       mutex_lock(&binderfs_minors_mutex);
> > @@ -504,6 +504,138 @@ static const struct inode_operations binderfs_dir_inode_operations = {
> >       .unlink = binderfs_unlink,
> >  };
> >
> > +static struct inode *binderfs_make_inode(struct super_block *sb, int mode)
> > +{
> > +     struct inode *ret;
> > +
> > +     ret = new_inode(sb);
> > +     if (ret) {
> > +             ret->i_ino = iunique(sb, BINDERFS_MAX_MINOR + INODE_OFFSET);
> > +             ret->i_mode = mode;
> > +             ret->i_atime = ret->i_mtime = ret->i_ctime = current_time(ret);
> > +     }
> > +     return ret;
> > +}
> > +
> > +static struct dentry *binderfs_create_dentry(struct dentry *dir,
> > +                                          const char *name)
> > +{
> > +     struct dentry *dentry;
> > +
> > +     dentry = lookup_one_len(name, dir, strlen(name));
> > +     if (IS_ERR(dentry))
> > +             return dentry;
> > +
> > +     /* Return error if the file/dir already exists. */
> > +     if (d_really_is_positive(dentry)) {
> > +             dput(dentry);
> > +             return ERR_PTR(-EEXIST);
> > +     }
> > +
> > +     return dentry;
> > +}
> > +
> > +static struct dentry *binderfs_create_file(struct dentry *dir, const char *name,
> > +                                 const struct file_operations *fops,
> > +                                 void *data)
> > +{
> > +     struct dentry *dentry;
> > +     struct inode *new_inode, *dir_inode;
> > +     struct super_block *sb;
> > +
> > +     dir_inode = dir->d_inode;
> > +     inode_lock(dir_inode);
> > +
> > +     dentry = binderfs_create_dentry(dir, name);
> > +     if (IS_ERR(dentry))
> > +             goto out;
> > +
> > +     sb = dir_inode->i_sb;
> > +     new_inode = binderfs_make_inode(sb, S_IFREG | 0444);
> > +     if (!new_inode) {
> > +             dput(dentry);
> > +             dentry = ERR_PTR(-ENOMEM);
> > +             goto out;
> > +     }
> > +
> > +     new_inode->i_fop = fops;
> > +     new_inode->i_private = data;
> > +     d_instantiate(dentry, new_inode);
> > +     fsnotify_create(dir_inode, dentry);
> > +
> > +out:
> > +     inode_unlock(dir_inode);
> > +     return dentry;
> > +}
> > +
> > +static struct dentry *binderfs_create_dir(struct dentry *parent,
> > +                                       const char *name)
> > +{
> > +     struct dentry *dentry;
> > +     struct inode *new_inode, *parent_inode;
> > +     struct super_block *sb;
> > +
> > +     parent_inode = d_inode(parent);
>
> For consistency, could you use the same variable name for the directory
> in which you create a new dentry? I don't care if its "dir_inode" like
> above or "parent_inode".

Makes sense, will make the change in v2.

>
> > +     inode_lock(parent_inode);
> > +
> > +     dentry = binderfs_create_dentry(parent, name);
> > +     if (IS_ERR(dentry))
> > +             goto out;
> > +
> > +     sb = parent_inode->i_sb;
> > +     new_inode = binderfs_make_inode(sb, S_IFDIR | 0755);
> > +     if (!new_inode) {
> > +             dput(dentry);
> > +             dentry = ERR_PTR(-ENOMEM);
> > +             goto out;
> > +     }
> > +
> > +     new_inode->i_fop = &simple_dir_operations;
> > +     new_inode->i_op = &simple_dir_inode_operations;
> > +
> > +     inc_nlink(new_inode);
> > +     d_instantiate(dentry, new_inode);
> > +     inc_nlink(parent_inode);
> > +     fsnotify_mkdir(parent_inode, dentry);
> > +out:
>
> For consistency please leave a \n after fsnotify_mkdir and the goto
> label like you did in the function above.

Agreed, will fix in v2.

>
> > +     inode_unlock(parent_inode);
> > +     return dentry;
> > +}
> > +
> > +static int init_binder_logs(struct super_block *sb)
> > +{
> > +     struct dentry *binder_logs_root_dir, *file_dentry;
>
> Why "file_dentry" and not just simply "dentry" like everywhere else?

I was trying to distinguish it from the directory dentries in the
function but I don't mind changing it to just 'dentry' for
consistency.

>
> > +     int ret = 0;
> > +
> > +     binder_logs_root_dir = binderfs_create_dir(sb->s_root,
> > +                                                "binder_logs");
> > +     if (IS_ERR(binder_logs_root_dir)) {
> > +             ret = PTR_ERR(binder_logs_root_dir);
> > +             goto out;
> > +     }
> > +
> > +     file_dentry = binderfs_create_file(binder_logs_root_dir, "stats",
> > +                                        &binder_stats_fops, NULL);
> > +     if (IS_ERR(file_dentry)) {
> > +             ret = PTR_ERR(file_dentry);
> > +             goto out;
> > +     }
> > +
> > +     file_dentry = binderfs_create_file(binder_logs_root_dir, "state",
> > +                                        &binder_state_fops, NULL);
> > +     if (IS_ERR(file_dentry)) {
> > +             ret = PTR_ERR(file_dentry);
> > +             goto out;
> > +     }
> > +
> > +     file_dentry = binderfs_create_file(binder_logs_root_dir, "transactions",
> > +                                        &binder_transactions_fops, NULL);
> > +     if (IS_ERR(file_dentry))
> > +             ret = PTR_ERR(file_dentry);
> > +out:
> > +     return ret;
> > +}
> > +
> >  static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
> >  {
> >       int ret;
> > @@ -582,6 +714,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
> >
> >       }
> >
> > +     if (info->mount_opts.stats_mode == STATS_GLOBAL)
> > +             return init_binder_logs(sb);
> > +
> >       return 0;
> >  }
> >
> > --
> > 2.23.0.187.g17f5b7556c-goog
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
