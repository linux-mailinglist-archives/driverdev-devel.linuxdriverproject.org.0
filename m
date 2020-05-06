Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E24471C75C5
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 May 2020 18:09:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0EF3861D5;
	Wed,  6 May 2020 16:09:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yE7NG+mcCxim; Wed,  6 May 2020 16:09:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 791FF87EC3;
	Wed,  6 May 2020 16:08:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8B001BF2B4
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 16:08:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E40E787E9C
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 16:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OaMAZQtETBHg for <devel@linuxdriverproject.org>;
 Wed,  6 May 2020 16:08:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 441FE876DB
 for <devel@driverdev.osuosl.org>; Wed,  6 May 2020 16:08:53 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id t2so1830067lfc.3
 for <devel@driverdev.osuosl.org>; Wed, 06 May 2020 09:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=if5qgNlscRmpJPzG9Z3gnyaxZ0iIBynHsVjhr1Dlctg=;
 b=eyheCbu3Wl4jWBLi16KmwXC3GUZfSR8nyYtYtWYhHzvEAIgisTgNndWd+2/Dmn4Fu3
 1/oZO1IAPn6+vOlMTBDdlshLkF7l+t81nke8HHUt/QG94oWJqyYv91zK/x8cIh2JkzYY
 SiY6Acsis1eShDIqatzkzYNXXugeecGd27RlgztExMUWAy7ZyTg+hq899Yt9jwljo6NT
 oTUEHhn9ghJ9p/zYohANqpmvT5SK6bz6NY+aHmz3H2IcRdRkvmLUpcLxtsR0QBj8Wziu
 Vesw1YJeeNK8g67yToViiZOrPAaIQJBycwOimRy0oehpSLGYq4Y838PHAzbbzZBH0LR8
 sHlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=if5qgNlscRmpJPzG9Z3gnyaxZ0iIBynHsVjhr1Dlctg=;
 b=FNkgXrLr3bgjs1XZbW77oXwhxvSknR4EAB0ryDbAENyjbrAE7R8brQUK1zATdVnbUG
 4sJLcO7BZgV0qZ64lxJ0PWOAn7YNklIgoJNiT3AvkZtxDEU1xG1sUY7uDWWX6jS/kLGQ
 IJ1Hl6+eCuZMTsHA0OYtm0qVYmegAl+YTlZHLQWwSKRPYSbMs2sQTvhViJmDpTNvQtjl
 MjRMQfrltg4tBdnT/KgTmkOPDcMiMHRKEGBRIYWHsV1sUmsPspLz3G5wutMADLdkjvsg
 6xWNzG1bBv598zB67ebytbNN8i69V3uMyHm57ldysDoTDUsmjFvgiRfjnnJPH5sFT+k9
 dGOw==
X-Gm-Message-State: AGi0PuaUd6ab2nrZnc8IwjXsmjNd8SnbfijetZpwNq6St1hCiwhZ7Pzl
 c8RKH/F2KTdou52ECWouDdBQY52ENh/hF4Cchqw=
X-Google-Smtp-Source: APiQypIkTeJRFv9Pb7bCztfKTE6r/gqFVdDFRACyd8JugwVuYo9Fzohu16CEHDV6PG4WB2H/mhehSpBDfnzO3UangrI=
X-Received: by 2002:ac2:4105:: with SMTP id b5mr5786969lfi.94.1588781331398;
 Wed, 06 May 2020 09:08:51 -0700 (PDT)
MIME-Version: 1.0
References: <1588706059-4208-1-git-send-email-jrdr.linux@gmail.com>
 <0bfe4a8a-0d91-ef9b-066f-2ea7c68571b3@nvidia.com>
 <CAFqt6zZMsQkOdjAb2k1EjwX=DtZ8gKfbRzwvreHOX-0vJLngNg@mail.gmail.com>
 <20200506100649.GI17863@quack2.suse.cz>
 <CAFqt6zYaNkJ4AfVzutXS=JsN4fE41ZAvnw03vHWpdyiRHY1m_w@mail.gmail.com>
 <20200506125930.GJ17863@quack2.suse.cz>
In-Reply-To: <20200506125930.GJ17863@quack2.suse.cz>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 6 May 2020 21:38:40 +0530
Message-ID: <CAFqt6zZztn_AiaGAhV+_uwrnVdKY-xLsxOwYBt-zGmLaat+OhQ@mail.gmail.com>
Subject: Re: [RFC] mm/gup.c: Updated return value of
 {get|pin}_user_pages_fast()
To: Jan Kara <jack@suse.cz>
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
Cc: Linux-MM <linux-mm@kvack.org>, inux-ia64@vger.kernel.org,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, kuba@kernel.org,
 fenghua.yu@intel.com, John Hubbard <jhubbard@nvidia.com>,
 santosh.shilimkar@oracle.com,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>,
 Tony Luck <tony.luck@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 tee-dev@lists.linaro.org, Greg KH <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 6, 2020 at 6:29 PM Jan Kara <jack@suse.cz> wrote:
>
> On Wed 06-05-20 17:51:39, Souptick Joarder wrote:
> > On Wed, May 6, 2020 at 3:36 PM Jan Kara <jack@suse.cz> wrote:
> > >
> > > On Wed 06-05-20 02:06:56, Souptick Joarder wrote:
> > > > On Wed, May 6, 2020 at 1:08 AM John Hubbard <jhubbard@nvidia.com> wrote:
> > > > >
> > > > > On 2020-05-05 12:14, Souptick Joarder wrote:
> > > > > > Currently {get|pin}_user_pages_fast() have 3 return value 0, -errno
> > > > > > and no of pinned pages. The only case where these two functions will
> > > > > > return 0, is for nr_pages <= 0, which doesn't find a valid use case.
> > > > > > But if at all any, then a -ERRNO will be returned instead of 0, which
> > > > > > means {get|pin}_user_pages_fast() will have 2 return values -errno &
> > > > > > no of pinned pages.
> > > > > >
> > > > > > Update all the callers which deals with return value 0 accordingly.
> > > > >
> > > > > Hmmm, seems a little shaky. In order to do this safely, I'd recommend
> > > > > first changing gup_fast/pup_fast so so that they return -EINVAL if
> > > > > the caller specified nr_pages==0, and of course auditing all callers,
> > > > > to ensure that this won't cause problems.
> > > >
> > > > While auditing it was figured out, there are 5 callers which cares for
> > > > return value
> > > > 0 of gup_fast/pup_fast. What problem it might cause if we change
> > > > gup_fast/pup_fast
> > > > to return -EINVAL and update all the callers in a single commit ?
> > >
> > > Well, first I'd ask a different question: Why do you want to change the
> > > current behavior? It's not like the current behavior is confusing.  Callers
> > > that pass >0 pages can happily rely on the simple behavior of < 0 return on
> > > error or > 0 return if we mapped some pages. Callers that can possibly ask
> > > to map 0 pages can get 0 pages back - kind of expected - and I don't see
> > > any benefit in trying to rewrite these callers to handle -EINVAL instead...
> >
> > Callers with a request to map 0 pages doesn't have a valid use case. But if any
> > caller end up doing it mistakenly, -errno should be returned to caller
> > rather than 0
> > which will indicate more precisely that map 0 pages is not a valid
> > request from caller.
>
> Well, I believe this depends on the point of view. Similarly as reading 0
> bytes is successful, we could consider mapping 0 pages successful as well.
> And there can be valid cases where number of pages to map is computed from
> some input and when 0 pages should be mapped, it is not a problem and your
> change would force such callers to special case this with explicitely
> checking for 0 pages to map and not calling GUP in that case at all.
>
> I'm not saying what you propose is necessarily bad, I just say I don't find
> it any better than the current behavior and so IMO it's not worth the
> churn. Now if you can come up with some examples of current in-kernel users
> who indeed do get the handling of the return value wrong, I could be
> convinced otherwise.

There are 5 callers of {get|pin}_user_pages_fast().

arch/ia64/kernel/err_inject.c#L145
staging/gasket/gasket_page_table.c#L489

Checking return value 0 doesn't make sense for above 2.

drivers/platform/goldfish/goldfish_pipe.c#L277
net/rds/rdma.c#L165
drivers/tee/tee_shm.c#L262

These 3 callers have calculated the no of pages value before passing it to
{get|pin}_user_pages_fast(). But if they end up passing nr_pages <= 0, a return
value of either 0 or -EINVAL doesn't going to harm any existing
behavior of callers.

IMO, it is safe to return -errno for nr_pages <= 0, for
{get|pin}_user_pages_fast().
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
