Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5F0A3E03
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 20:55:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B266526600;
	Fri, 30 Aug 2019 18:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NyMyPHNEJNqM; Fri, 30 Aug 2019 18:55:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 535BF265BC;
	Fri, 30 Aug 2019 18:55:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF711BF3F6
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 18:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 08C8588836
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 18:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gg1S8LaaSXXI for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 18:55:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 330F68939B
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 18:55:01 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id a127so6139850oii.2
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 11:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7MH0eqbh/fXT34oOIWwMe6uGVJDIJhsZgB+8WWkjU9s=;
 b=d5MczlIeVJeVEuZJiRRTwhnnTyAv6Pr+lyb8wWvnZprB+K3Fi2gxYb8cxN7eGCcC7c
 btKhy69RufSPlQZ6wX1aPNynt5FQWhZPo0HZlwQvh/R95E6k6MwSgZmxhox1vxztp09Z
 ysGQN8eoJxC3uw0reVC02C+LepaBJArgEBG+juvAmt9QZqrDQwiYgP2iZEZZfvOusy1K
 oviLlvMioUbnhzEIdc548QMFUFx5V/WWc1HuPfEjQjN9NXaePL1Sn382RsojqyIRNxKq
 w7x/5RW0j4RSk8l0UjKyGMkifIqpmK2UDwzOnOHKjbo4uy4meZgFS7L3YajzW+L3jpGo
 LeXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7MH0eqbh/fXT34oOIWwMe6uGVJDIJhsZgB+8WWkjU9s=;
 b=ONx1lPrkhxD2owxmF1DRB6oDRLNOFcpGRrzjf3MwGTx77RkYDRHBD48pojAz07u3Pj
 c9ctAcq7LBYsj3RLNSmoLh3NbzjE/q0Ysjo6V2uJecWg86Bl1qlK1AI0HH99pozcAirb
 N80G9eHxlJweDR+0DDkfOfKjVl9RZSNCcpShgcXBIx7+e4BSs7onXr/WC3OW+Nqdb7vy
 OJQJsX5VgIBqVGmUd52keVqEXKSd0gQa7abADTKze3uhIhcRJHgrNhBB2dStmxr9gojT
 SGSrAll72+rgIi8kXt7udikQHscGoZjgoCb+twqlwl61NwnfRUw71/Y24gWR8Ddf1SI0
 zKiw==
X-Gm-Message-State: APjAAAVf31Z9vySzCExaOwlP5PSvfzGsYdoHnQkxzqpvWWPcuEBNFgVP
 OcqoyMAxEWvwd0/A+3iEYzR6p3bdZa7+2YGtwJGMXA==
X-Google-Smtp-Source: APXvYqwD4STr00vzPKj8Ky0Drus5t5waxEaYPAupmQ3fNj2KIGm2VNJ19hIB/uV76M5mWl76Ef3+mafe1EnHE2tvhpw=
X-Received: by 2002:a54:418c:: with SMTP id 12mr5923070oiy.23.1567191300100;
 Fri, 30 Aug 2019 11:55:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190829211812.32520-1-hridya@google.com>
 <20190829211812.32520-4-hridya@google.com>
 <20190830113420.ikbjj37cn5qvlhmk@wittgenstein>
In-Reply-To: <20190830113420.ikbjj37cn5qvlhmk@wittgenstein>
From: Hridya Valsaraju <hridya@google.com>
Date: Fri, 30 Aug 2019 11:54:23 -0700
Message-ID: <CA+wgaPMbR7UaJHUq-nn95t00Vh3cPWqVcx64-JF87edwPUntVQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] binder: Make transaction_log available in binderfs
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
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 30, 2019 at 4:34 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Thu, Aug 29, 2019 at 02:18:11PM -0700, Hridya Valsaraju wrote:
> > Currently, the binder transaction log files 'transaction_log'
> > and 'failed_transaction_log' live in debugfs at the following locations:
> >
> > /sys/kernel/debug/binder/failed_transaction_log
> > /sys/kernel/debug/binder/transaction_log
> >
> > This patch makes these files also available in a binderfs instance
> > mounted with the mount option "stats=global".
> > It does not affect the presence of these files in debugfs.
> > If a binderfs instance is mounted at path /dev/binderfs, the location of
> > these files will be as follows:
> >
> > /dev/binderfs/binder_logs/failed_transaction_log
> > /dev/binderfs/binder_logs/transaction_log
> >
> > This change provides an alternate option to access these files when
> > debugfs is not mounted.
> >
> > Signed-off-by: Hridya Valsaraju <hridya@google.com>
>
> (If you don't change this patch in the next version, please just keep my:
>
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
>
> when sending it out. :)

Will do! Thank you Christian!

>
> > ---
> >
> >  Changes in v2:
> >  -Consistent variable naming accross functions as per Christian Brauner.
> >
> >  drivers/android/binder.c          | 34 +++++--------------------------
> >  drivers/android/binder_internal.h | 30 +++++++++++++++++++++++++++
> >  drivers/android/binderfs.c        | 18 ++++++++++++++++
> >  3 files changed, 53 insertions(+), 29 deletions(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index de795bd229c4..bed217310197 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -197,30 +197,8 @@ static inline void binder_stats_created(enum binder_stat_types type)
> >       atomic_inc(&binder_stats.obj_created[type]);
> >  }
> >
> > -struct binder_transaction_log_entry {
> > -     int debug_id;
> > -     int debug_id_done;
> > -     int call_type;
> > -     int from_proc;
> > -     int from_thread;
> > -     int target_handle;
> > -     int to_proc;
> > -     int to_thread;
> > -     int to_node;
> > -     int data_size;
> > -     int offsets_size;
> > -     int return_error_line;
> > -     uint32_t return_error;
> > -     uint32_t return_error_param;
> > -     const char *context_name;
> > -};
> > -struct binder_transaction_log {
> > -     atomic_t cur;
> > -     bool full;
> > -     struct binder_transaction_log_entry entry[32];
> > -};
> > -static struct binder_transaction_log binder_transaction_log;
> > -static struct binder_transaction_log binder_transaction_log_failed;
> > +struct binder_transaction_log binder_transaction_log;
> > +struct binder_transaction_log binder_transaction_log_failed;
> >
> >  static struct binder_transaction_log_entry *binder_transaction_log_add(
> >       struct binder_transaction_log *log)
> > @@ -6166,7 +6144,7 @@ static void print_binder_transaction_log_entry(struct seq_file *m,
> >                       "\n" : " (incomplete)\n");
> >  }
> >
> > -static int transaction_log_show(struct seq_file *m, void *unused)
> > +int binder_transaction_log_show(struct seq_file *m, void *unused)
> >  {
> >       struct binder_transaction_log *log = m->private;
> >       unsigned int log_cur = atomic_read(&log->cur);
> > @@ -6198,8 +6176,6 @@ const struct file_operations binder_fops = {
> >       .release = binder_release,
> >  };
> >
> > -DEFINE_SHOW_ATTRIBUTE(transaction_log);
> > -
> >  static int __init init_binder_device(const char *name)
> >  {
> >       int ret;
> > @@ -6268,12 +6244,12 @@ static int __init binder_init(void)
> >                                   0444,
> >                                   binder_debugfs_dir_entry_root,
> >                                   &binder_transaction_log,
> > -                                 &transaction_log_fops);
> > +                                 &binder_transaction_log_fops);
> >               debugfs_create_file("failed_transaction_log",
> >                                   0444,
> >                                   binder_debugfs_dir_entry_root,
> >                                   &binder_transaction_log_failed,
> > -                                 &transaction_log_fops);
> > +                                 &binder_transaction_log_fops);
> >       }
> >
> >       if (!IS_ENABLED(CONFIG_ANDROID_BINDERFS) &&
> > diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> > index 12ef96f256c6..b9be42d9464c 100644
> > --- a/drivers/android/binder_internal.h
> > +++ b/drivers/android/binder_internal.h
> > @@ -65,4 +65,34 @@ DEFINE_SHOW_ATTRIBUTE(binder_state);
> >
> >  int binder_transactions_show(struct seq_file *m, void *unused);
> >  DEFINE_SHOW_ATTRIBUTE(binder_transactions);
> > +
> > +int binder_transaction_log_show(struct seq_file *m, void *unused);
> > +DEFINE_SHOW_ATTRIBUTE(binder_transaction_log);
> > +
> > +struct binder_transaction_log_entry {
> > +     int debug_id;
> > +     int debug_id_done;
> > +     int call_type;
> > +     int from_proc;
> > +     int from_thread;
> > +     int target_handle;
> > +     int to_proc;
> > +     int to_thread;
> > +     int to_node;
> > +     int data_size;
> > +     int offsets_size;
> > +     int return_error_line;
> > +     uint32_t return_error;
> > +     uint32_t return_error_param;
> > +     const char *context_name;
> > +};
> > +
> > +struct binder_transaction_log {
> > +     atomic_t cur;
> > +     bool full;
> > +     struct binder_transaction_log_entry entry[32];
> > +};
> > +
> > +extern struct binder_transaction_log binder_transaction_log;
> > +extern struct binder_transaction_log binder_transaction_log_failed;
> >  #endif /* _LINUX_BINDER_INTERNAL_H */
> > diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> > index 0e1e7c87cd33..1715e72ce9c7 100644
> > --- a/drivers/android/binderfs.c
> > +++ b/drivers/android/binderfs.c
> > @@ -630,6 +630,24 @@ static int init_binder_logs(struct super_block *sb)
> >
> >       dentry = binderfs_create_file(binder_logs_root_dir, "transactions",
> >                                     &binder_transactions_fops, NULL);
> > +     if (IS_ERR(dentry)) {
> > +             ret = PTR_ERR(dentry);
> > +             goto out;
> > +     }
> > +
> > +     dentry = binderfs_create_file(binder_logs_root_dir,
> > +                                   "transaction_log",
> > +                                   &binder_transaction_log_fops,
> > +                                   &binder_transaction_log);
> > +     if (IS_ERR(dentry)) {
> > +             ret = PTR_ERR(dentry);
> > +             goto out;
> > +     }
> > +
> > +     dentry = binderfs_create_file(binder_logs_root_dir,
> > +                                   "failed_transaction_log",
> > +                                   &binder_transaction_log_fops,
> > +                                   &binder_transaction_log_failed);
> >       if (IS_ERR(dentry))
> >               ret = PTR_ERR(dentry);
> >
> > --
> > 2.23.0.187.g17f5b7556c-goog
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
