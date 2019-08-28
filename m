Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5016EA084F
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 19:22:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8A9F123408;
	Wed, 28 Aug 2019 17:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YtEIzQJOhy7p; Wed, 28 Aug 2019 17:22:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 04EE625265;
	Wed, 28 Aug 2019 17:22:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B62451BF300
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 17:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B1913234AC
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 17:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dDyRbBNBDx2M for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 17:22:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D9ED23408
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 17:22:12 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id w4so544708ote.11
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 10:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QEApEfr7Id1G6+nlEkowLnRQbgN13AZysekHOZLzjik=;
 b=QiYjFYafyisuO628eHuVKjHp5j539eO0menX6BRzn9tyibQKX0o2WJZB8YEKED4r4y
 oDJNSmrB/9+QXp2QtpKM+PA/AYTgxM2iTA6S/GF63IZAB5x23qXXvF/6UojYHzNf2NvO
 O1HC3RNjTyy2M3opRRO8BISMpF+jsyrAbeRdUBE4RbZ00Covt5TapUbdxNZI9QYNaAz1
 ZIjko0U3ECdPYSCMLLSTLreHgqgQicXDsqUBt9xuF1t1WcWZ9bcJ/pMUtsQWTjhD3iMH
 w7EE5toWe57sUiCdtsWU6dYbOvcOq95Zw/ScWfJYXp2OFMj8CCWdtn+lRQvke/iVhLP9
 dbRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QEApEfr7Id1G6+nlEkowLnRQbgN13AZysekHOZLzjik=;
 b=FwKB2+TllGJ8hzi5+uDFteUu6Tpj4cDySyfTB0CJK/iZfrplcxL1z5x+pTkGRgBPiL
 yhXW4syOV+gTh5THNHuZD3sOk1piURbMNF1ybrNcyPuBoHMwn8WXD1MgjHlRVG4thK+E
 NzMHnBy3xfAvsT157kSm6vsx854+YVlbmbpUGnzbjwnQajKxrXAdA6eTSit5lamcg02F
 1613BDaO1dR3HmMpk3/k/e1rTP6lZpWlOCB0pDBcl847CjMjfhC3OzQtka9377soEBnR
 XjBaIogSsN0XoucuyuuBD0SinoU99yB8wQCL+N7UdpHI9jFSS7nNbd6U5fiRFJbAQIpu
 2Xlw==
X-Gm-Message-State: APjAAAU2Bi0JLPBZlXq+IUGyIQm0EZkV7oPemkJ5wccHlcIc8poVA4f8
 b14Ip4p09NMJh7N8Qb2YcxafUQDki+Vnx0vcmBz8/Q==
X-Google-Smtp-Source: APXvYqxSUsXIEg/b/8ot+/z+ab0JhIaY8brJG7UYMgWwHin7/rVcmnzr0ojvLNGzgjAqJJ3ACC80MyPkQ3kc1Q3R/5E=
X-Received: by 2002:a9d:4817:: with SMTP id c23mr3957223otf.97.1567012931261; 
 Wed, 28 Aug 2019 10:22:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190827204152.114609-1-hridya@google.com>
 <20190827204152.114609-2-hridya@google.com>
 <20190828092237.GA23192@kroah.com>
 <20190828123952.zzffvezeq4hykxej@wittgenstein>
In-Reply-To: <20190828123952.zzffvezeq4hykxej@wittgenstein>
From: Hridya Valsaraju <hridya@google.com>
Date: Wed, 28 Aug 2019 10:21:35 -0700
Message-ID: <CA+wgaPNusEVDDDokhaj5KK-gD5s0GsQWH_0m4RkbkO1ot4U4AA@mail.gmail.com>
Subject: Re: [PATCH 1/4] binder: add a mount option to show global stats
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

On Wed, Aug 28, 2019 at 5:39 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Wed, Aug 28, 2019 at 11:22:37AM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Aug 27, 2019 at 01:41:49PM -0700, Hridya Valsaraju wrote:
> > > Currently, all binder state and statistics live in debugfs.
> > > We need this information even when debugfs is not mounted.
> > > This patch adds the mount option 'stats' to enable a binderfs
> > > instance to have binder debug information present in the same.
> > > 'stats=global' will enable the global binder statistics. In
> > > the future, 'stats=local' will enable binder statistics local
> > > to the binderfs instance. The two modes 'global' and 'local'
> > > will be mutually exclusive. 'stats=global' option is only available
> > > for a binderfs instance mounted in the initial user namespace.
> > > An attempt to use the option to mount a binderfs instance in
> > > another user namespace will return an EPERM error.
> > >
> > > Signed-off-by: Hridya Valsaraju <hridya@google.com>
> > > ---
> > >  drivers/android/binderfs.c | 47 ++++++++++++++++++++++++++++++++++++--
> > >  1 file changed, 45 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> > > index cc2e71576396..d95d179aec58 100644
> > > --- a/drivers/android/binderfs.c
> > > +++ b/drivers/android/binderfs.c
> > > @@ -51,18 +51,27 @@ static DEFINE_IDA(binderfs_minors);
> > >  /**
> > >   * binderfs_mount_opts - mount options for binderfs
> > >   * @max: maximum number of allocatable binderfs binder devices
> > > + * @stats_mode: enable binder stats in binderfs.
> > >   */
> > >  struct binderfs_mount_opts {
> > >     int max;
> > > +   int stats_mode;
> > >  };
> > >
> > >  enum {
> > >     Opt_max,
> > > +   Opt_stats_mode,
> > >     Opt_err
> > >  };
> > >
> > > +enum binderfs_stats_mode {
> > > +   STATS_NONE,
> > > +   STATS_GLOBAL,
> > > +};
> > > +
> > >  static const match_table_t tokens = {
> > >     { Opt_max, "max=%d" },
> > > +   { Opt_stats_mode, "stats=%s" },
> > >     { Opt_err, NULL     }
> > >  };
> > >
> > > @@ -290,8 +299,9 @@ static void binderfs_evict_inode(struct inode *inode)
> > >  static int binderfs_parse_mount_opts(char *data,
> > >                                  struct binderfs_mount_opts *opts)
> > >  {
> > > -   char *p;
> > > +   char *p, *stats;
> > >     opts->max = BINDERFS_MAX_MINOR;
> > > +   opts->stats_mode = STATS_NONE;
> > >
> > >     while ((p = strsep(&data, ",")) != NULL) {
> > >             substring_t args[MAX_OPT_ARGS];
> > > @@ -311,6 +321,24 @@ static int binderfs_parse_mount_opts(char *data,
> > >
> > >                     opts->max = max_devices;
> > >                     break;
> > > +           case Opt_stats_mode:
> > > +                   stats = match_strdup(&args[0]);
> > > +                   if (!stats)
> > > +                           return -ENOMEM;
> > > +
> > > +                   if (strcmp(stats, "global") != 0) {
> > > +                           kfree(stats);
> > > +                           return -EINVAL;
> > > +                   }
> > > +
> > > +                   if (!capable(CAP_SYS_ADMIN)) {
> > > +                           kfree(stats);
> > > +                           return -EINVAL;
> >
> > Can a non-CAP_SYS_ADMIN task even call this function?  Anyway, if it
>
> It can. A task that has CAP_SYS_ADMIN in the userns the corresponding
> binderfs mount has been created in can change the max=<nr> mount option.
> Only stats=global currently requires capable(CAP_SYS_ADMIN) aka
> CAP_SYS_ADMIN in the initial userns to prevent non-initial userns from
> snooping at global statistics.
>
> > can, put the check at the top of the case, and just return early before
> > doing any extra work like checking values or allocating memory.

Thank you Greg and Christian for reviewing the patch! That makes
sense, I will make the change and send out v2 soon.

> >
> > > +                   }
> > > +
> > > +                   opts->stats_mode = STATS_GLOBAL;
> > > +                   kfree(stats);
> > > +                   break;
> > >             default:
> > >                     pr_err("Invalid mount options\n");
> > >                     return -EINVAL;
> > > @@ -322,8 +350,21 @@ static int binderfs_parse_mount_opts(char *data,
> > >
> > >  static int binderfs_remount(struct super_block *sb, int *flags, char *data)
> > >  {
> > > +   int prev_stats_mode, ret;
> > >     struct binderfs_info *info = sb->s_fs_info;
> > > -   return binderfs_parse_mount_opts(data, &info->mount_opts);
> > > +
> > > +   prev_stats_mode = info->mount_opts.stats_mode;
> > > +   ret = binderfs_parse_mount_opts(data, &info->mount_opts);
> > > +   if (ret)
> > > +           return ret;
> > > +
> > > +   if (prev_stats_mode != info->mount_opts.stats_mode) {
> > > +           pr_info("Binderfs stats mode cannot be changed during a remount\n");
> >
> > pr_err()?
> >
> > thanks,
> >
> > greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
