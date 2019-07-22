Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A228670285
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 16:41:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2FADB1FFFE;
	Mon, 22 Jul 2019 14:41:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2A5hkwWquyhb; Mon, 22 Jul 2019 14:40:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4F5C420116;
	Mon, 22 Jul 2019 14:40:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 35E3D1BF275
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 14:40:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 330628525D
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 14:40:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OUHPRQqQel6s for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 14:40:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8366684E97
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 14:40:51 +0000 (UTC)
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5BD32190D;
 Mon, 22 Jul 2019 14:40:49 +0000 (UTC)
Date: Mon, 22 Jul 2019 10:40:48 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Amir Goldstein <amir73il@gmail.com>
Subject: Re: [PATCH v3 12/24] erofs: introduce tagged pointer
Message-ID: <20190722104048.463397a0@gandalf.local.home>
In-Reply-To: <CAOQ4uxgo5kvgoEn7SbuwF9+B1W9Qg1-2jSUm5+iKZdT6-wDEog@mail.gmail.com>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-13-gaoxiang25@huawei.com>
 <CAOQ4uxh04gwbM4yFaVpWHVwmJ4BJo4bZaU8A4_NQh2bO_xCHJg@mail.gmail.com>
 <39fad3ab-c295-5f6f-0a18-324acab2f69e@huawei.com>
 <CAOQ4uxgo5kvgoEn7SbuwF9+B1W9Qg1-2jSUm5+iKZdT6-wDEog@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
 Ingo Molnar <mingo@redhat.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 22 Jul 2019 09:16:22 +0300
Amir Goldstein <amir73il@gmail.com> wrote:

> CC kernel/trace maintainers for RB_PAGE_HEAD/RB_PAGE_UPDATE
> and kernel/locking maintainers for RT_MUTEX_HAS_WAITERS

Interesting.

> 
> > (Is there some use scenerios in overlayfs and fanotify?...)  
> 
> We had one in overlayfs once. It is gone now.
> 
> >
> > and I'm not sure Al could accept __fdget conversion (I just wanted to give a example then...)
> >
> > Therefore, I tend to keep silence and just promote EROFS... some better ideas?...
> >  
> 
> Writing example conversion patches to demonstrate cleaner code
> and perhaps reduce LOC seems the best way.

Yes, I would be more interested in seeing patches that clean up the
code than just talking about it.

> 
> Also pointing out that fixing potential bugs in one implementation is preferred
> to having to patch all copied implementations.
> 
> I wonder if tagptr_unfold_tags() doesn't need READ_ONCE() as per:
> 1be5d4fa0af3 locking/rtmutex: Use READ_ONCE() in rt_mutex_owner()
> 
> rb_list_head() doesn't have READ_ONCE()

Hmm, even if the compiler decided to reread the data, it would still
need to clear the extra bits wouldn't it? Or am I missing something?

-- Steve

> Nor does hlist_bl_first() and BPF_MAP_PTR().
> 
> Are those all safe due to safe call sites? or potentially broken?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
