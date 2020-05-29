Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310191E75E3
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 08:27:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8BE789298;
	Fri, 29 May 2020 06:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2CkbCuDAu7DM; Fri, 29 May 2020 06:27:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A2AB88D81;
	Fri, 29 May 2020 06:27:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2728A1BF420
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 06:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 241E087026
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 06:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yHNQzT6MD3xX for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 06:27:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2BE988701D
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 06:27:23 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id h188so601832lfd.7
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 23:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JcojLQqLi5jvXd4nH045/Izmj9iUf4RKThqP6RXkuIQ=;
 b=TbZe0udnokxKRGkxiCJnwVNDkVOaQUM+btIee1mDmdIoyE80Oc8hwPJbeEdrloZdG9
 AdTAE+Z1XPDS1txibwkIeWcJBxyjDUkD+Xz+mnSq+QwBO8ImVsbQPw9T15/nPwNkrBJS
 PgXVeS61Kj0tAXhNbtA+sXw5kQyPI4oPLv9VviP0VkiEnqvZj/XZKdBAhCABkh7JiWYS
 z7dhft9e4J4kkabHYZAWDik6po2L0Fmv+1xl6cF40wKqmcvYChgGJ0VipD8jQfGKUG+P
 F638nAbFprF2f8ekVT1XdWHwuwjDmjR0eYx+TUn6HYPwBA2Ldvg0varG9SYqf976D3xU
 evsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JcojLQqLi5jvXd4nH045/Izmj9iUf4RKThqP6RXkuIQ=;
 b=C9DoUUxz6TDeR+lrBLpBF5XoxqZNFXF4yKWUP8a40Ac3kHTI9vwy9hz3xmsDu8Mmhk
 gyFfR/KBuw2B3kHJ+ZE7imZXzBnagUrIipQHCv3BzTwkTIIlhBdYr+RQkWwgtfxMY1u0
 iLHAvx/cQl49wxzU6555K8ZwootK3T4GJ8vdOKHqs98msYviH/Y+kZdgZUu5BzX7AHOI
 BfMn0VeKvHTeo3+H1EA+XhqiNJx3dxCR/R0iMQKLTppX1ZJkq0b5atyOdsISFDTcRDvE
 rK2SaS8NVB/NuStEi0WQxgZLgv0go4wltxNhx/1W/pjfCRHA3wKzYbPMeG/Z/brbbhn/
 SWwg==
X-Gm-Message-State: AOAM530NGJInZL1SurHmFklOKbj8joIje177D4pxbDgPtcHELRyQhbyl
 TZ5fUXHHIP+DUH2VNWrepdTfX2Danz4e2/aWZ5I=
X-Google-Smtp-Source: ABdhPJw5hOyRGBO3EOfmnPeiZn6PVwVwAhymJAGVrKrF/Q3agWq4Q5PWrxJlXiqfNGqIqSHgjHXArh6NgMLdbyl1Tdc=
X-Received: by 2002:a19:5d57:: with SMTP id p23mr3624412lfj.94.1590733641061; 
 Thu, 28 May 2020 23:27:21 -0700 (PDT)
MIME-Version: 1.0
References: <1590613362-27495-1-git-send-email-jrdr.linux@gmail.com>
 <20200528110408.GJ30374@kadam>
 <CAFqt6zaKWBQTy9XfvxwVAvzGS+gz9Qv1gL8Bv1VxLq+THYf+Aw@mail.gmail.com>
In-Reply-To: <CAFqt6zaKWBQTy9XfvxwVAvzGS+gz9Qv1gL8Bv1VxLq+THYf+Aw@mail.gmail.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Fri, 29 May 2020 11:57:09 +0530
Message-ID: <CAFqt6zbtg0NWbAnDGPC0ZddEiTeohz=8JN+S_KxqM0bnnvar3g@mail.gmail.com>
Subject: Re: [PATCH] staging: gasket: Convert get_user_pages*() -->
 pin_user_pages*()
To: Dan Carpenter <dan.carpenter@oracle.com>,
 John Hubbard <jhubbard@nvidia.com>
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
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 29, 2020 at 11:46 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>
> On Thu, May 28, 2020 at 4:34 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Thu, May 28, 2020 at 02:32:42AM +0530, Souptick Joarder wrote:
> > > This code was using get_user_pages_fast(), in a "Case 2" scenario
> > > (DMA/RDMA), using the categorization from [1]. That means that it's
> > > time to convert the get_user_pages_fast() + put_page() calls to
> > > pin_user_pages_fast() + unpin_user_page() calls.
> >
> > You are saying that the page is used for DIO and not DMA, but it sure
> > looks to me like it is used for DMA.
>
> No, I was referring to "Case 2" scenario in change log which means  it is
> used for DMA, not DIO.
>
> >
> >    503                          /* Map the page into DMA space. */
> >    504                          ptes[i].dma_addr =
> >    505                                  dma_map_page(pg_tbl->device, page, 0, PAGE_SIZE,
> >    506                                               DMA_BIDIRECTIONAL);
> >
> > To be honest, that starting paragraph was confusing.  At first I thought
> > you were saying gasket was an RDMA driver. :P  I shouldn't have to read
> > a different document to understand the commit message.  It should be
> > summarized enough and the other documentation is supplemental.
> >
> > "In 2019 we introduced pin_user_pages() and now we are converting
> > get_user_pages() to the new API as appropriate".
>
> As all other similar conversion have similar change logs, so I was trying
> to maintain the same. John might have a different opinion on this.

For example, I was referring to few recent similar commits for change logs.

http://lkml.kernel.org/r/20200519002124.2025955-5-jhubbard@nvidia.com
https://lore.kernel.org/r/20200518015237.1568940-1-jhubbard@nvidia.com


>
> John, Any further opinion ??
>
> >
> > >
> > > There is some helpful background in [2]: basically, this is a small
> > > part of fixing a long-standing disconnect between pinning pages, and
> > > file systems' use of those pages.
> >
> > What is the impact of this patch on runtime?
>
> I don't have the hardware to validate the runtime impact and will
> wait if someone is going to validate it for runtime impact.
>
> >
> > >
> > > [1] Documentation/core-api/pin_user_pages.rst
> > >
> > > [2] "Explicit pinning of user-space pages":
> > >       https://lwn.net/Articles/807108/
> > >
> > > Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> > > Cc: John Hubbard <jhubbard@nvidia.com>
> > >
> > > Hi,
> > >
> > > I'm compile tested this, but unable to run-time test, so any testing
> > > help is much appriciated.
> > > ---
> >
> > The "Hi" part of patch should have been under the "---" cut off line so
> > this will definitely need to be resent.
>
> Sorry about it.
> Will wait for feedback from John before resend it :)
>
> >
> > regards,
> > dan carpenter
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
