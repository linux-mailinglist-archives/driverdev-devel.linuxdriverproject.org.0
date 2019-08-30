Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97262A3DE9
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 20:48:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F37A87EDA;
	Fri, 30 Aug 2019 18:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2KRuvpvadt7p; Fri, 30 Aug 2019 18:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E6BC87F40;
	Fri, 30 Aug 2019 18:48:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB7C1BF3F6
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 18:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 29BEA89383
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 18:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7fn3UAnnMm8I for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 18:48:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D8B38935B
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 18:48:06 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id n7so453773otk.6
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 11:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3Ce8D4/4we4jYF2K9LdYPteLGThCcdVbG/lxWqzVv0M=;
 b=IBTecyMeOCP/oImzEA1xiIYPxniXSv+zS2Ks3cNLVJl1mpo5VWLXxq6cLUS7npJxZt
 kGprFf7y9vlTj7zksfJWEsgzlSUKSJk2tqUFZ25rU6raZHwH9mxSByDjCs+GsIPW3SsU
 bunrrPI+vxZJjgcY+ydfdwzUEFctVNRWUZIUax/Co5/3GJS/YixfsZ9O1zjY/gz8U1SC
 BfWs4yke7Lx+LMSyv3if0kj/HtfQRX2gnJrUBgHYNBn5DrfUGKmoxuZXG1dZt7EkLR1L
 C44/ivVXxfdQAST6jyLC3eXphCK29bjwqa3XiOg+H8isQK+XnR+9ffEDxtsBuWwwXgks
 k9hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3Ce8D4/4we4jYF2K9LdYPteLGThCcdVbG/lxWqzVv0M=;
 b=YDOyV/LOw9tS5bna8iQxfUGiG2TExLR5hn1sfHmOYr6w48qLH4UrCuwonPGQ/fNP0v
 N5At1yD5e41njnmGXmloBG56OGkXFf44hMGTtyMJWV/eZMBeDWF+oYZG9HOfVRergLMR
 WTjCRJ8qREGjSl3v32fRoqa1lhO6AwtuRGhpjyq3SrgyqPv2pwi4jY7mV/sa4HS8nfB+
 gpceReaAYnLqXUiCO9btve7I7r0iDLBRdccCyNoyohwgmtc2584lp2AKLJVaye19y7d/
 0SnWgemHV0lmRioXv8UjPrsndBY4d8Y2jkn4DAwLMp4749vRrjfnzQ0nlflWIe7a/T8B
 Z4Ug==
X-Gm-Message-State: APjAAAXWpr1iun2QQuUA650DcSDzxcYp7BBcJQggRxPUxQPA2jeRa9vh
 l2ec338oK9vrZ3qluzAIKF2IakCx0ipGjz5jAXAzDw==
X-Google-Smtp-Source: APXvYqwxJqID3UffV4RNzsN1GzlIIgzl4pwCMU5bQIHBilgazhNf8/vwMx81EtNHawUvfXqj2ogFc60QPCKXtinIokk=
X-Received: by 2002:a9d:4817:: with SMTP id c23mr12551907otf.97.1567190884830; 
 Fri, 30 Aug 2019 11:48:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190829211812.32520-1-hridya@google.com>
 <20190829211812.32520-3-hridya@google.com>
 <20190830113215.eaa6dfvlhxkmhqc3@wittgenstein>
In-Reply-To: <20190830113215.eaa6dfvlhxkmhqc3@wittgenstein>
From: Hridya Valsaraju <hridya@google.com>
Date: Fri, 30 Aug 2019 11:47:28 -0700
Message-ID: <CA+wgaPPKUOJ_XAhLzt-zibmwj0qng8c7cOoFU4388d7jhvcv7A@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] binder: Add stats, state and transactions files
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

On Fri, Aug 30, 2019 at 4:32 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Thu, Aug 29, 2019 at 02:18:10PM -0700, Hridya Valsaraju wrote:
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
>
> Just two comments below. If you have addressed them you can add my:
>
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

Thank you for taking another look Christian, will address both
comments and send out v3 soon :)

>
> > ---
> >
> >  Changes in v2:
> >  - Consistently name variables across functions as per Christian
> >    Brauner.
> >  - Improve check for binderfs device in binderfs_evict_inode()
> >    as per Christian Brauner.
> >
> >  drivers/android/binder.c          |  15 ++--
> >  drivers/android/binder_internal.h |   8 ++
> >  drivers/android/binderfs.c        | 140 +++++++++++++++++++++++++++++-
> >  3 files changed, 153 insertions(+), 10 deletions(-)
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
> > index 7045bfe5b52b..0e1e7c87cd33 100644
> > --- a/drivers/android/binderfs.c
> > +++ b/drivers/android/binderfs.c
> > @@ -280,7 +280,7 @@ static void binderfs_evict_inode(struct inode *inode)
> >
> >       clear_inode(inode);
> >
> > -     if (!device)
> > +     if (!S_ISCHR(inode->i_mode) || !device)
> >               return;
> >
> >       mutex_lock(&binderfs_minors_mutex);
> > @@ -502,6 +502,141 @@ static const struct inode_operations binderfs_dir_inode_operations = {
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
> > +static struct dentry *binderfs_create_dentry(struct dentry *parent,
> > +                                          const char *name)
> > +{
> > +     struct dentry *dentry;
> > +
> > +     dentry = lookup_one_len(name, parent, strlen(name));
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
> > +static struct dentry *binderfs_create_file(struct dentry *parent,
> > +                                        const char *name,
> > +                                        const struct file_operations *fops,
> > +                                        void *data)
> > +{
> > +     struct dentry *dentry;
> > +     struct inode *new_inode, *parent_inode;
> > +     struct super_block *sb;
> > +
> > +     parent_inode = parent->d_inode;
>
> Note that you're using d_inode(parent) below but parent->d_inode here. :)
>
> > +     inode_lock(parent_inode);
> > +
> > +     dentry = binderfs_create_dentry(parent, name);
> > +     if (IS_ERR(dentry))
> > +             goto out;
> > +
> > +     sb = parent_inode->i_sb;
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
> > +     fsnotify_create(parent_inode, dentry);
> > +
> > +out:
> > +     inode_unlock(parent_inode);
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
>
> This should be set_nlink(new_inode, 2) since noboby can modify it and
> it's also clearer what's happening and what the expected count is.
>
> > +     d_instantiate(dentry, new_inode);
> > +     inc_nlink(parent_inode);
> > +     fsnotify_mkdir(parent_inode, dentry);
> > +
> > +out:
> > +     inode_unlock(parent_inode);
> > +     return dentry;
> > +}
> > +
> > +static int init_binder_logs(struct super_block *sb)
> > +{
> > +     struct dentry *binder_logs_root_dir, *dentry;
> > +     int ret = 0;
> > +
> > +     binder_logs_root_dir = binderfs_create_dir(sb->s_root,
> > +                                                "binder_logs");
> > +     if (IS_ERR(binder_logs_root_dir)) {
> > +             ret = PTR_ERR(binder_logs_root_dir);
> > +             goto out;
> > +     }
> > +
> > +     dentry = binderfs_create_file(binder_logs_root_dir, "stats",
> > +                                   &binder_stats_fops, NULL);
> > +     if (IS_ERR(dentry)) {
> > +             ret = PTR_ERR(dentry);
> > +             goto out;
> > +     }
> > +
> > +     dentry = binderfs_create_file(binder_logs_root_dir, "state",
> > +                                   &binder_state_fops, NULL);
> > +     if (IS_ERR(dentry)) {
> > +             ret = PTR_ERR(dentry);
> > +             goto out;
> > +     }
> > +
> > +     dentry = binderfs_create_file(binder_logs_root_dir, "transactions",
> > +                                   &binder_transactions_fops, NULL);
> > +     if (IS_ERR(dentry))
> > +             ret = PTR_ERR(dentry);
> > +
> > +out:
> > +     return ret;
> > +}
> > +
> >  static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
> >  {
> >       int ret;
> > @@ -580,6 +715,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
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
