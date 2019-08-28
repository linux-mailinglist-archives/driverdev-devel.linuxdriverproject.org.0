Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D93A06EB
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 18:06:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4842E86DE5;
	Wed, 28 Aug 2019 16:06:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aqXoH3xqQ0QY; Wed, 28 Aug 2019 16:06:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A2C386A11;
	Wed, 28 Aug 2019 16:06:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 171B81BF3FD
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 16:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 136568167F
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 16:06:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dEYuVTx3OD2z for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 16:06:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D36AF81724
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 16:05:59 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id c12so17906lfh.5
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 09:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3xYxXDiniqZIDNImiQ/OJQR4xfWAO6QnDax2ROd9LIs=;
 b=KsT2KjhtpQ6GNJNB6OOrOez6CyFCWwdJGMlrf3dDm3adU1nxNL4WBLh5geAc6aqb6Q
 CCPXYwZtghUy2Xhu3pc9x6aEt/kGNC5oPSpiQCxndjgrhjbWcoSgY29kTuEndw1aTJnj
 fXv6g285PAxsQVr2kNWwJHM5jhaSSL3cmY7gZqoV44lVDQEQ6nyee34m2SjBEzs2CVIk
 yQ0CpAQqPOEkYgndMmVLLuYVwBL/3/kgfk4ZyBvSjYRrLzJ1o7EmII90JCfFwLTA7s/m
 UPnvfO7qGF2rZyUZ0TSEcAjDaMiIstktMGDntlKSCwYkW4PsqObFicG047hEWqvW/reU
 u/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3xYxXDiniqZIDNImiQ/OJQR4xfWAO6QnDax2ROd9LIs=;
 b=f7HC2P8M4RABT3ebwXocKNhdwsW+TDDt/cwx3eaha2odHkVOyGUVmAw7j7GfyCJCGB
 aPPY6//vmH8TSHikvPWQjX22YzsYo4T4AL9g6QBWG5dDVrer766gq54e0mlEv8YwOFS0
 CfDlx9IAn5QRfqaafWXYbFD5/Xiif5eaej50NtWO1Wkv1Yb14zegiRAovW2/+uRo9sEp
 JK3F6GX9ElkbAKJlfY7glQhPe5tUr71G+S47DuNvxKh8fa4/znjqHvpZBn6SX92yTSVZ
 lpMGwtrGwAFkg2nn2KzOjL8X+5hD4se8neHbzQCChnaqvVtLwWR4ONplwZO8gPPleR0m
 WTqQ==
X-Gm-Message-State: APjAAAUBNr0mUVcjDQxXDRvTBZsJ9FVn0tZ9Kls0wpkxeKCCB/uEk/Cp
 zymtwWd67EK4Q2bI39ukZDdVHgWqTgkHa75qGr72cQ==
X-Google-Smtp-Source: APXvYqyASXpLSIz2ZacfOGTGvzG1wCFUpdg3p/macmU7ZkDHfRjZTgBdHyQjzcFjkzdQXv1H/coaSGCwnRETcCnDH5Q=
X-Received: by 2002:ac2:4210:: with SMTP id y16mr2767012lfh.139.1567008357576; 
 Wed, 28 Aug 2019 09:05:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190827204152.114609-1-hridya@google.com>
 <20190827204152.114609-4-hridya@google.com>
 <20190828125952.ivvlxybw35kj67rj@wittgenstein>
In-Reply-To: <20190828125952.ivvlxybw35kj67rj@wittgenstein>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 28 Aug 2019 09:05:46 -0700
Message-ID: <CAHRSSEycVx8fbSo5k7Q8s2O6i4o3cMm8yNEXozUvJfzhFqXXfw@mail.gmail.com>
Subject: Re: [PATCH 3/4] binder: Make transaction_log available in binderfs
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
 Hridya Valsaraju <hridya@google.com>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 28, 2019 at 5:59 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Tue, Aug 27, 2019 at 01:41:51PM -0700, Hridya Valsaraju wrote:
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
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

Acked-by: Todd Kjos <tkjos@google.com>

>
> > ---
> >  drivers/android/binder.c          | 34 +++++--------------------------
> >  drivers/android/binder_internal.h | 30 +++++++++++++++++++++++++++
> >  drivers/android/binderfs.c        | 19 +++++++++++++++++
> >  3 files changed, 54 insertions(+), 29 deletions(-)
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
> > index d542f9b8d8ab..dc25a7d759c9 100644
> > --- a/drivers/android/binderfs.c
> > +++ b/drivers/android/binderfs.c
> > @@ -630,8 +630,27 @@ static int init_binder_logs(struct super_block *sb)
> >
> >       file_dentry = binderfs_create_file(binder_logs_root_dir, "transactions",
> >                                          &binder_transactions_fops, NULL);
> > +     if (IS_ERR(file_dentry)) {
> > +             ret = PTR_ERR(file_dentry);
> > +             goto out;
> > +     }
> > +
> > +     file_dentry = binderfs_create_file(binder_logs_root_dir,
> > +                                        "transaction_log",
> > +                                        &binder_transaction_log_fops,
> > +                                        &binder_transaction_log);
> > +     if (IS_ERR(file_dentry)) {
> > +             ret = PTR_ERR(file_dentry);
> > +             goto out;
> > +     }
> > +
> > +     file_dentry = binderfs_create_file(binder_logs_root_dir,
> > +                                        "failed_transaction_log",
> > +                                        &binder_transaction_log_fops,
> > +                                        &binder_transaction_log_failed);
> >       if (IS_ERR(file_dentry))
> >               ret = PTR_ERR(file_dentry);
> > +
> >  out:
> >       return ret;
> >  }
> > --
> > 2.23.0.187.g17f5b7556c-goog
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
