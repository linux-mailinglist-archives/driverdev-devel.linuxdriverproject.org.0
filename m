Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7114222BEB
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 21:30:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD991885ED;
	Thu, 16 Jul 2020 19:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dv4GIqF6uW6b; Thu, 16 Jul 2020 19:30:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BBEE885CB;
	Thu, 16 Jul 2020 19:30:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 477191BF385
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 43FE4885D0
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hCrd8d51qRHK for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 19:30:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
 [209.85.217.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 86161885CB
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 19:30:39 +0000 (UTC)
Received: by mail-vs1-f68.google.com with SMTP id q15so3630529vso.9
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 12:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5JHL6dtY9/obxl6PVDueE6KgqOWo1hP8aToaLoJogXM=;
 b=Lv8wc5MBk1xMDoVDniZJYSNIRYaVwYd563pj/BmHDv29qhlkxXzVxJn/UycDj5BI55
 0o7EKZrbVLG1OH9iMGZCjUaydi2H0vTAwdpEKzb4PDFVmlhuT2w5pIQV1wJSSWKsjDnk
 fvfiqoflke0iz/+NpbwihrTIcQZdfdIcAV8aHK0JN2ysHxmhrqZbA3VmcRSa9jqUfjsB
 fMQlsVKQdqcwLjEJX7bJ4Qed9+Rn6rYUC4en/fQ9rUNxGrl03j2+7zPJiON+pYZQfpbO
 EzxaJQcjLJ5PPVoVTuuALA5gujvbGUxCdHyehPNe2VtYJaHy1nYydB7CQfP374ARk7Zu
 rU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5JHL6dtY9/obxl6PVDueE6KgqOWo1hP8aToaLoJogXM=;
 b=aop9v7DVf96Lw54WdAx75qs8bqOMVfyKiIFwsJNc5ojQFkRO6tnuH2Ow4FgGAVqH2i
 /gOspAdQwNbgkHbR9EXoVgRwBOporT+5iutneWcVJUJO2g3DQq21NMf2bwE3LQVVTWGR
 9LqdXQBUuT+CtEW5n0VqcwdKMsCz8GKgyr/lc1QaKpRUzRu7DBlhqqs6EnyegqQq51pW
 dJM2sgZFjrdTV4p9kK6Dt/+31VR7GTOHVIs+vlLETbmYnchADXeogYMigptSi4R9nDac
 UcgV+nvnwHDpbPeojK6ZFIQhemfKTfBvt5o6s99YgTOs8jRj/+epPI5KSX02ppMGsKe9
 7kFw==
X-Gm-Message-State: AOAM5333szt37dfaKwMAKC6RMj3wvn50/uCFras6RhdeQq7HDg0OEG0c
 vDO+e35z7QhMOasYWM+5U1/62TfJWJF4IwhhTG5MQg==
X-Google-Smtp-Source: ABdhPJwWkXtOPLOqrVcmtyJlG0aP+T8u+bPUV6PKoDH5U90Xrq5hIuM+nD03u5LdjnNO/fWF+VkxFtBnpluxWXZxTok=
X-Received: by 2002:a67:69c1:: with SMTP id e184mr4865729vsc.119.1594927838113; 
 Thu, 16 Jul 2020 12:30:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200716024527.4009170-1-surenb@google.com>
 <20200716033048.GG1167@sol.localdomain>
In-Reply-To: <20200716033048.GG1167@sol.localdomain>
From: Suren Baghdasaryan <surenb@google.com>
Date: Thu, 16 Jul 2020 12:30:27 -0700
Message-ID: <CAJuCfpGwgmAD0v+F3CxieZmXHnjnbzrZ4Cpugi+8=-fDPgCU7w@mail.gmail.com>
Subject: Re: [PATCH 1/1] staging: android: ashmem: Fix lockdep warning for
 write operation
To: Eric Biggers <ebiggers@kernel.org>
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
 Hillf Danton <hdanton@sina.com>, kernel-team <kernel-team@android.com>,
 Todd Kjos <tkjos@android.com>, linux-mm <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Michal Hocko <mhocko@kernel.org>,
 Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 8:30 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Wed, Jul 15, 2020 at 07:45:27PM -0700, Suren Baghdasaryan wrote:
> > syzbot report [1] describes a deadlock when write operation against an
> > ashmem fd executed at the time when ashmem is shrinking its cache results
> > in the following lock sequence:
> >
> > Possible unsafe locking scenario:
> >
> >         CPU0                    CPU1
> >         ----                    ----
> >    lock(fs_reclaim);
> >                                 lock(&sb->s_type->i_mutex_key#13);
> >                                 lock(fs_reclaim);
> >    lock(&sb->s_type->i_mutex_key#13);
> >
> > kswapd takes fs_reclaim and then inode_lock while generic_perform_write
> > takes inode_lock and then fs_reclaim. However ashmem does not support
> > writing into backing shmem with a write syscall. The only way to change
> > its content is to mmap it and operate on mapped memory. Therefore the race
> > that lockdep is warning about is not valid. Resolve this by introducing a
> > separate lockdep class for the backing shmem inodes.
> >
> > [1]: https://lkml.kernel.org/lkml/0000000000000b5f9d059aa2037f@google.com/
> >
> > Signed-off-by: Suren Baghdasaryan <surenb@google.com>
>
> Please add proper tags:
>
> Reported-by: syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com
> Fixes: ...
> Cc: stable@vger.kernel.org
>
>
> The Reported-by tag to use was given in the original syzbot report.

Will add in v2. Thanks!

>
> - Eric
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
