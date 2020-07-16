Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCFD221A51
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 04:50:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4EA10207A2;
	Thu, 16 Jul 2020 02:50:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l+7jW3HyZX9o; Thu, 16 Jul 2020 02:50:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E798C20471;
	Thu, 16 Jul 2020 02:50:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17E0F1BF3C6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 02:50:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0B8E120420
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 02:50:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FQyaNaPPsaZP for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 02:50:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
 [209.85.217.51])
 by silver.osuosl.org (Postfix) with ESMTPS id CBB1320501
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 02:50:04 +0000 (UTC)
Received: by mail-vs1-f51.google.com with SMTP id q15so2212185vso.9
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 19:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WEKmkAw0uwcvvBEVpu10W/Sa5gQp5k7qXmo5AR9AurA=;
 b=FVon6Pb3ZKgtvlu6hExXOR+GxSVISq63TByCX4gSkKOhQlnbEzC4eSF6fOoXpDTtq0
 pQY3Vxm7slt/77qZ7EjB8PYM7R7tPC2UnR3whxkMhALBsJPZm2mtqNBNYJ50MId7sz/U
 VnFSnIlZpMtl294S/qgEb0x4zixD73XKt8NlreDpuTshjgFnl7ORvOC8c6e7j0POYBwS
 AyyyoLhV+/agwsr3q70DWj82Eymx6336qEJaKKGTYOvPmsSVlF4I4ZURExC+91VAkSYE
 8GCvhcqpaZV5yPhIUU4To8aSIbgvsvoMJhg0JwOeryqCUOrOUaBendC536fqgWMM5yGf
 ZwUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WEKmkAw0uwcvvBEVpu10W/Sa5gQp5k7qXmo5AR9AurA=;
 b=E0KVMvGS+6ehuIU1EEFGgRW/m3KJ8yhafES1DHWmq3VV1yzQiEyjZ+9R6vmCgGFR/p
 mF38MVE5feo8mFuDwanE9+NvQIR774gjozKMaSA+q7HnIH7QBtrAeITU4CgZAMMEFrw1
 K4m4bx/4yBqZw+h3tnlM+nuk6D8+oRXPdXwTQopl810aHH+KRUajk/TasAUu8d/0PQjx
 5lmBBx82nEuI8/3Q7o/XFvsx4RGfUMz/1ZjTu2uTDOpx5Nh+JBwqm0Dm5lFfYjjQ4wkD
 8RU65dvOVkKkeeZowCcX5NoXTaCSUFadmd2P4upbccbs77tcbEpYd5EvzcIH8l/0iaLk
 a+Ww==
X-Gm-Message-State: AOAM531BS8fTWl95aGSTzNeBYOlwsSH72p1t6PgYPyFN41JvjMeFVTew
 ugrPmtGVyM/GWLuydxVfQ2153ztJtoCF4ESYN+uP9g==
X-Google-Smtp-Source: ABdhPJwxCXQz0WoadyQHNKpsbOvxJMTRPicLoxVEytHah6x5/VcIKiVX4ciSJ6j/Gj2uPkLh6VB0DKXak2Z5ddYHgFM=
X-Received: by 2002:a67:6441:: with SMTP id y62mr1679674vsb.82.1594867803345; 
 Wed, 15 Jul 2020 19:50:03 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000000b5f9d059aa2037f@google.com>
 <20200714033252.8748-1-hdanton@sina.com>
 <20200714053205.15240-1-hdanton@sina.com>
 <20200714140859.15156-1-hdanton@sina.com>
 <20200714141815.GP24642@dhcp22.suse.cz>
 <CAHRSSEzbCW3E0QTR0ryf3p=5J5uhs_vY2D6fFQEzP=HeCDkPGQ@mail.gmail.com>
 <CAJuCfpExhJJO_xPk663-eUkmAXVVwNDd9a7ahQuwMW8JVMBJpg@mail.gmail.com>
 <CAJuCfpFz9kEfTPxcausVj63mUvU7i6Dvv6=KNePVX2qR+-Ci2A@mail.gmail.com>
 <20200715063639.GA5451@dhcp22.suse.cz>
In-Reply-To: <20200715063639.GA5451@dhcp22.suse.cz>
From: Suren Baghdasaryan <surenb@google.com>
Date: Wed, 15 Jul 2020 19:49:52 -0700
Message-ID: <CAJuCfpFFCtmbvjLWDLZ9_bpNq-iT2+1cfdkpEcGV5tFCnbd+5g@mail.gmail.com>
Subject: Re: possible deadlock in shmem_fallocate (4)
To: Michal Hocko <mhocko@kernel.org>
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
 Hillf Danton <hdanton@sina.com>, Todd Kjos <tkjos@android.com>,
 Linux-MM <linux-mm@kvack.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hugh Dickins <hughd@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Eric Biggers <ebiggers@kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Markus Elfring <Markus.Elfring@web.de>,
 syzbot <syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 14, 2020 at 11:36 PM Michal Hocko <mhocko@kernel.org> wrote:
>
> On Tue 14-07-20 10:32:20, Suren Baghdasaryan wrote:
> [...]
> > I'm not sure how we can annotate the fact that the inode_lock in
> > generic_file_write_iter and in shmem_fallocate always operate on
> > different inodes. Ideas?
>
> I believe that the standard way is to use lockdep_set_class on your
> backing inode. But asking lockdep experts would be better than relying
> on my vague recollection

Thanks Michal! I think https://lkml.org/lkml/2020/7/15/1390 should fix
it, however I was unable to reproduce the lockdep warning to confirm
that this warning gets fixed by the patch.

>
> --
> Michal Hocko
> SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
