Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CDE6F960
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 08:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4BFED8562A;
	Mon, 22 Jul 2019 06:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l4MSxGpL3IJP; Mon, 22 Jul 2019 06:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8018B85608;
	Mon, 22 Jul 2019 06:16:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A6A71BF3FD
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 06:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 252968567A
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 06:16:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VOhR1B0qzsS1 for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 06:16:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f193.google.com (mail-yb1-f193.google.com
 [209.85.219.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9C2A9855FF
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 06:16:34 +0000 (UTC)
Received: by mail-yb1-f193.google.com with SMTP id f195so14599381ybg.9
 for <devel@driverdev.osuosl.org>; Sun, 21 Jul 2019 23:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mRiPNuu0IvHAFpeZVhrWYDUDjsfyID6dmrOBGytJQzY=;
 b=GiMkqHsb2C/Jw1o6Ub4DsiHZBxr6ZPjhjLrbLjNZ2yaaHCKmZJ1LRjvX1tmJbGD7Bi
 pKwqIfw1wbCFqysuExvOaGUzgDUJbvojSqnH4QGcuiaNSlyjpp5RKWyyR1HE1O2WkqZi
 yuolp/P4xNqjATF+LaZi/qhcLf+/MwAI5U2b185js89KVnQ6DBKBKZJAYx134EMcx6zs
 u2SEuK+hLnumxva+59nzjcpPKHmG1e17rGKrQ3hWlJllBtBmp/5XAu3LQAJRwL9QkU9F
 h1YP5naXIsNxpmacnONf4p6UavV3n5TqvxfKBQCc5d9fMO2tL1tdauivTwdVkM8E6QnX
 6NLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mRiPNuu0IvHAFpeZVhrWYDUDjsfyID6dmrOBGytJQzY=;
 b=c5XS/XlP+5n9KZyD7wdzT+Z4UmwNE+T2NF51RjMJO8YK8Z5I9wZypRJXvt1YlE7Wwu
 NqdrJlqSZjrvEI91bIFB8nQ0tWcZT0u8uhHx+nEIvDj0cQkZ6aoj4AGYO7tYr3OiLJGM
 ui30zmZkZhB3dvBpr17S3wlwJyuH5zQhp35cKOXydwkP2rXafQJ39iaduhIW8Q52coWA
 auXDEUrUNGupAyhfULosEoqIwiMBYO7TRtE0GRCZFM5W1whJOQYI6pqIQ7uvbBckmRPB
 JA5g+V8f8Sv9TtxyCwDLF0TmdsD5T4G6IMp2s5FopRcAs2WcNBCnFaPDqJoBhU2oBwuA
 TG7g==
X-Gm-Message-State: APjAAAUsY0zf3QPZgU4KmLvoJ2gRkfr4R63+hkH+T7dfPKpIcGsFm8hy
 u1lD07d7zxub49+SLBdYvm/4A0n5VljYJPXT2Q8=
X-Google-Smtp-Source: APXvYqzeP8dnmI9HUYEy65Jb64wblg41vjP3fcITilmmeXiO/XAUwrolXbZVlMRx1aCCChHAkomgV0wUhL20rNsxpvE=
X-Received: by 2002:a25:9a08:: with SMTP id x8mr40685653ybn.439.1563776193646; 
 Sun, 21 Jul 2019 23:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-13-gaoxiang25@huawei.com>
 <CAOQ4uxh04gwbM4yFaVpWHVwmJ4BJo4bZaU8A4_NQh2bO_xCHJg@mail.gmail.com>
 <39fad3ab-c295-5f6f-0a18-324acab2f69e@huawei.com>
In-Reply-To: <39fad3ab-c295-5f6f-0a18-324acab2f69e@huawei.com>
From: Amir Goldstein <amir73il@gmail.com>
Date: Mon, 22 Jul 2019 09:16:22 +0300
Message-ID: <CAOQ4uxgo5kvgoEn7SbuwF9+B1W9Qg1-2jSUm5+iKZdT6-wDEog@mail.gmail.com>
Subject: Re: [PATCH v3 12/24] erofs: introduce tagged pointer
To: Gao Xiang <gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Matthew Wilcox <willy@infradead.org>, Theodore Ts'o <tytso@mit.edu>,
 Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 22, 2019 at 8:02 AM Gao Xiang <gaoxiang25@huawei.com> wrote:
>
> Hi Amir,
>
> On 2019/7/22 12:39, Amir Goldstein wrote:
> > On Mon, Jul 22, 2019 at 5:54 AM Gao Xiang <gaoxiang25@huawei.com> wrote:
> >>
> >> Currently kernel has scattered tagged pointer usages
> >> hacked by hand in plain code, without a unique and
> >> portable functionset to highlight the tagged pointer
> >> itself and wrap these hacked code in order to clean up
> >> all over meaningless magic masks.
> >>
> >> This patch introduces simple generic methods to fold
> >> tags into a pointer integer. Currently it supports
> >> the last n bits of the pointer for tags, which can be
> >> selected by users.
> >>
> >> In addition, it will also be used for the upcoming EROFS
> >> filesystem, which heavily uses tagged pointer pproach
> >>  to reduce extra memory allocation.
> >>
> >> Link: https://en.wikipedia.org/wiki/Tagged_pointer
> >
> > Well, it won't do much good for other kernel users in fs/erofs/ ;-)
>
> Thanks for your reply and interest in this patch.... :)
>
> Sigh... since I'm not sure kernel folks could have some interests in that stuffs.
>
> Actually at the time once I coded EROFS I found tagged pointer had 2 main advantages:
> 1) it saves an extra field;
> 2) it can keep the whole stuff atomicly...
> And I observed the current kernel uses tagged pointer all around but w/o a proper wrapper...
> and EROFS heavily uses tagged pointer... So I made a simple tagged pointer wrapper
> to avoid meaningless magic masks and type casts in the code...
>
> >
> > I think now would be a right time to promote this facility to
> > include/linux as you initially proposed.
> > I don't recall you got any objections. No ACKs either, but I think
> > that was the good kind of silence (?)
>
> Yes, no NAK no ACK...(it seems the ordinary state for all EROFS stuffs... :'( sigh...)
> Therefore I decided to leave it in fs/erofs/ in this series...
>
> >
> > You might want to post the __fdget conversion patch [1] as a
> > bonus patch on top of your series.
>
> I am not sure if another potential users could be quite happy with my ("sane?" or not)
> implementation...

Well, let's ask potential users then.

CC kernel/trace maintainers for RB_PAGE_HEAD/RB_PAGE_UPDATE
and kernel/locking maintainers for RT_MUTEX_HAS_WAITERS

> (Is there some use scenerios in overlayfs and fanotify?...)

We had one in overlayfs once. It is gone now.

>
> and I'm not sure Al could accept __fdget conversion (I just wanted to give a example then...)
>
> Therefore, I tend to keep silence and just promote EROFS... some better ideas?...
>

Writing example conversion patches to demonstrate cleaner code
and perhaps reduce LOC seems the best way.

Also pointing out that fixing potential bugs in one implementation is preferred
to having to patch all copied implementations.

I wonder if tagptr_unfold_tags() doesn't need READ_ONCE() as per:
1be5d4fa0af3 locking/rtmutex: Use READ_ONCE() in rt_mutex_owner()

rb_list_head() doesn't have READ_ONCE()
Nor does hlist_bl_first() and BPF_MAP_PTR().

Are those all safe due to safe call sites? or potentially broken?

Thanks,
Amir.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
