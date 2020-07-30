Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6788232A63
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 05:29:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6198D88523;
	Thu, 30 Jul 2020 03:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id um6PtiPdtH2M; Thu, 30 Jul 2020 03:29:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D223E88499;
	Thu, 30 Jul 2020 03:29:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D933E1BF345
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 03:29:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D237B88316
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 03:29:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id txFpgpFZKfux for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 03:29:12 +0000 (UTC)
X-Greylist: delayed 00:05:05 by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3D63F8816D
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 03:29:12 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id r12so21298237ilh.4
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 20:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nHh4RsCBRXoWwPbSjRWWq5HuFYgEivNXO/c+GhS+MZs=;
 b=OZ8J5iKdzrD7ZOS3oiWeOqMjZ8YQGcyZAgnZ2AY4LAqnKj9fMWuIO/lEMxQi5cbI6C
 BgEhayHQ7LbJhGHnWA5EG2/vvBN12zXQfH/3WbvSTl6Bt5XVozjvwIuAGHcIXR4hT8m9
 GOGcZjLTYdHk5GVsgUDQJ85EvWp1Q4NYe56Hg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nHh4RsCBRXoWwPbSjRWWq5HuFYgEivNXO/c+GhS+MZs=;
 b=ELKfgWD3cRx1Mew+1KJJ9I7VnAFx1ZM0w9dWeVtw+bMqV/l63bNGghi9CdFpwuy7dC
 2yCGb+vs6AFffeA++H49QlLieE3Yq1/3ZiIEQu2ryGfiKRJM7+ShM/FGKuLG6C2qpolF
 4TB6/cDh/4cB0W1MsE0uPTxqe6NQuqRKA5+tT41uJ1emnOchipMuf6FOWPFgYLGFq1AU
 kyB/jIUQZ8TQOj6PrBHF26opPAiUIr9qMur9PZIdjX+jbDvdxtNfLVlvolkh3rDYeDu4
 mnMj297KlFTH67pdPKlMxUUYhiWrgFlzO70A89PHsVqxHRuguRM0owePXH83SWNYbFJh
 ApeA==
X-Gm-Message-State: AOAM532JkaLDoHd5odI8WRympY0jJEOGc1gnTtVG6nErUPlZn1S9NcX8
 U55lhfiXySX6s/aG0Nu7cuFi9NF/nn87cwrNR/swGuTCK80=
X-Google-Smtp-Source: ABdhPJxVGmadWUvVb3YuYWhyFyI8XAr8VNALnFQQRC9snfK8nFNAi1PjGa347aw5KbtbI19VmFRkyAXaVSpXkLWvd60=
X-Received: by 2002:a92:b705:: with SMTP id k5mr35501322ili.176.1596079446340; 
 Wed, 29 Jul 2020 20:24:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200716024527.4009170-1-surenb@google.com>
In-Reply-To: <20200716024527.4009170-1-surenb@google.com>
From: Joel Fernandes <joel@joelfernandes.org>
Date: Wed, 29 Jul 2020 23:23:55 -0400
Message-ID: <CAEXW_YTps99nspdCtvMi6hO7kbpz8PgOH--g4d2-8gticrs4OQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] staging: android: ashmem: Fix lockdep warning for
 write operation
To: Suren Baghdasaryan <surenb@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>, hdanton@sina.com,
 kernel-team <kernel-team@android.com>, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Michal Hocko <mhocko@kernel.org>,
 ebiggers@kernel.org, linux-mm <linux-mm@kvack.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 10:45 PM Suren Baghdasaryan <surenb@google.com> wrote:
>
> syzbot report [1] describes a deadlock when write operation against an
> ashmem fd executed at the time when ashmem is shrinking its cache results
> in the following lock sequence:
>
> Possible unsafe locking scenario:
>
>         CPU0                    CPU1
>         ----                    ----
>    lock(fs_reclaim);
>                                 lock(&sb->s_type->i_mutex_key#13);
>                                 lock(fs_reclaim);
>    lock(&sb->s_type->i_mutex_key#13);
>
> kswapd takes fs_reclaim and then inode_lock while generic_perform_write
> takes inode_lock and then fs_reclaim. However ashmem does not support
> writing into backing shmem with a write syscall. The only way to change
> its content is to mmap it and operate on mapped memory. Therefore the race
> that lockdep is warning about is not valid. Resolve this by introducing a
> separate lockdep class for the backing shmem inodes.
>
> [1]: https://lkml.kernel.org/lkml/0000000000000b5f9d059aa2037f@google.com/
>
> Signed-off-by: Suren Baghdasaryan <surenb@google.com>
> ---

Once Eric's nits are resolved:

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
