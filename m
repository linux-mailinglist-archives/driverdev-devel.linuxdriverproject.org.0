Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA952338D8
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 21:16:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D91652305A;
	Thu, 30 Jul 2020 19:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k2uQzEAHWi+D; Thu, 30 Jul 2020 19:16:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1307F22CC6;
	Thu, 30 Jul 2020 19:16:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A417E1BF376
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 19:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A02A188523
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 19:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lKDibnMyMmZK for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 19:15:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
 [209.85.221.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B891A87F5C
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 19:15:56 +0000 (UTC)
Received: by mail-vk1-f193.google.com with SMTP id b6so4928354vkb.6
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 12:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A4NiYN/fL3K8jec2SXRSUpaYIgmwzb4CRMYaIZHw2Wc=;
 b=Mo+shIuYgxTD570H7jADBYlG25BTBtzrCa/DMP1/ZnB6du6o7y6Iu5HbWzAN4ikxdt
 uh0vY0TUwlLo/4mK3aDD1e2p9cYTU8AyeBViPTFM257sEPZ1poyvbt5TYlepaj0qNtEt
 T6A5+SmbejL5NQla83ikEicCbOq8JCHEIK5sTYxlIwibfj4+c4mw1IuGemr3C8pipv3c
 CUieCxgTJtNauBFRebXeOJmUf8NY2ibViaw3h42+IoleuNICpPq1BwhTUxp773yqsknX
 53x9EuiMUs4Xa7aTN7i0TnOJM4c476XqN/ron4MOlLkMmKydzur14NSGoQeUJekKCsc+
 NoRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A4NiYN/fL3K8jec2SXRSUpaYIgmwzb4CRMYaIZHw2Wc=;
 b=eOdzptXfevy9/p5FonFU6q0AUY8WJI8QAcBrVDqg1FKAoLBXd9Z5p2+EcdJI4pFy+v
 yqpwQkHW/+9+SF6Rad2uUgXBosH9QLXxNZ2Xj8z9Y3K+IdewSWzQjuIEbAKPTi7mzAdS
 jDYQdipdS2vnHPSMpY9/rXp6R+3jDcFqM4rHghmyeJUjDSRElkX4KCZ6zvx9yBxWV8t4
 gzkGUVqZH4We3va/RGw4HhdaEmZNlzRsoH2iK+UE/WZbDF4risDkeZsTtbC8Q1R41Kro
 Lx6jW82nr0aVhyrLOG0bRxnvK7EiwiLwqSwkkpbODdF/GngafRhMY6iSJ+boIU/dDLNM
 FZMw==
X-Gm-Message-State: AOAM531jM0eX1fnpoIqcoJzZ4eelRrLOzHcUhLl7H50B9dmpPWmpk5Eg
 lJcJgrfpzoihGfC3n9JLLttQcL1euOxcIc180n9aAA==
X-Google-Smtp-Source: ABdhPJygcFQl2Dx9t0fnHvdutxsbUiu3tCDlK/opODfvCZT9YJsnyIQJdPdlNHeffyQM0HQhM6iIbwxUr1yjzgBWlLA=
X-Received: by 2002:a1f:96c7:: with SMTP id y190mr310774vkd.5.1596136555382;
 Thu, 30 Jul 2020 12:15:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200716024527.4009170-1-surenb@google.com>
 <CAEXW_YTps99nspdCtvMi6hO7kbpz8PgOH--g4d2-8gticrs4OQ@mail.gmail.com>
In-Reply-To: <CAEXW_YTps99nspdCtvMi6hO7kbpz8PgOH--g4d2-8gticrs4OQ@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Thu, 30 Jul 2020 12:15:44 -0700
Message-ID: <CAJuCfpF7+8zex72b=sPkFjHu+emPBwzVYLdA69FqBRd2ieVVmw@mail.gmail.com>
Subject: Re: [PATCH 1/1] staging: android: ashmem: Fix lockdep warning for
 write operation
To: Joel Fernandes <joel@joelfernandes.org>
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
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Michal Hocko <mhocko@kernel.org>,
 Eric Biggers <ebiggers@kernel.org>, linux-mm <linux-mm@kvack.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 29, 2020 at 8:24 PM Joel Fernandes <joel@joelfernandes.org> wrote:
>
> On Wed, Jul 15, 2020 at 10:45 PM Suren Baghdasaryan <surenb@google.com> wrote:
> >
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
> > ---
>
> Once Eric's nits are resolved:
>
> Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

Thanks Joel!
I'm fixing the nits and will report the patch shortly. One note about
adding the "Fixes: " tag - this is a fix for a false positive lockdep
warning and it's unclear which patch should be quoted here (I could
not find a clear cause that started this warning). In similar
situations, for example here: https://lkml.org/lkml/2020/6/15/958
developers seem to skip that tag. So I'll do the same.

>
> Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
