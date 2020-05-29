Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0101E75D1
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 08:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4C90725CF1;
	Fri, 29 May 2020 06:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 97kn0P6mHpWQ; Fri, 29 May 2020 06:16:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 511D921563;
	Fri, 29 May 2020 06:16:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19BF81BF420
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 06:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 105B62046B
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 06:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dzL1SrHL7ydA for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 06:16:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 09BF0203E4
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 06:16:54 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id z6so1094847ljm.13
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 23:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JbcIKf1QoC5/4fB83l0xjUjMmfyP6E9s02t0GChxUYQ=;
 b=vTjr4WxbPZtsUvkCFw14dCgUsefA0jl0RcKfShDG01aXKJ6SwH1Kf5uYPvcipV6lyC
 IF+BUc6e4s4OzayMzaM3gEjZb6zVng8mJUHSQsKM1kLQsGwPuDvQQQWCPMol1CX0WBe4
 7MWQkr7IR2kvYEx1lad5um66p20CW8OliYMXbDefT5XxbNT3z8Lop4/vUirUIBRgDTw4
 Vv/wJxuSSKkMeL8GWWGBG2sbpqB0iiaODRUF2cDBtyAEOnCHMwCpZH/0LqQWruPkJGLK
 cKOqCwpVu7eziNCDWE/DHlwAsg1ulDz7JiDPpM7IH62dBEhSxWv3f3ibZfj6+ssjl7pR
 intg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JbcIKf1QoC5/4fB83l0xjUjMmfyP6E9s02t0GChxUYQ=;
 b=ovxrje9avAOv7oE8Qka0hki631kUZvHxFR3IWb/CAeXbtFtPZcgSJLVW4y5zdL1DdV
 ZKC/VfhKoeg75gd/0c5R3MfC2ekjuLTdv+ImJsUSh/El2AuAMDLU7sTnP8fwrUw3PXLj
 45O1S1C1TOpb0RntqeF/t+1qtupFFe5SY8avVD6Z923SNG9/3l/p0t9lp0yN8Do5zGUj
 1WE+ruKQXGBblrwpuaPNJjKafDbi/lVABb52521PCwb3inALLB5mAgmiKSPV8gWzBqnT
 KkBQsbLq0bMme/VKNddQEH0Qo4o5aobS9ozlKpTTGKi0DdcZcit9toc8sYJPokYx8zxE
 6YCw==
X-Gm-Message-State: AOAM533ShnClmYdU3KIiaG5bQSt2rSzHHodbuXEqdKM7MsIyT5SefUwm
 7WkC0OaekQaJIf0DmUPRgPzv+Ehl25/sVckK+rU=
X-Google-Smtp-Source: ABdhPJwS174JrfOv4aFghfvIn75qQwU7dTqkD+YBQrQYgQsSUx+e3u1MgP2jlBD51m9QrdFBrPctqCS7mc8wk396s5Q=
X-Received: by 2002:a2e:870b:: with SMTP id m11mr3010022lji.315.1590733011950; 
 Thu, 28 May 2020 23:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <1590613362-27495-1-git-send-email-jrdr.linux@gmail.com>
 <20200528110408.GJ30374@kadam>
In-Reply-To: <20200528110408.GJ30374@kadam>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Fri, 29 May 2020 11:46:39 +0530
Message-ID: <CAFqt6zaKWBQTy9XfvxwVAvzGS+gz9Qv1gL8Bv1VxLq+THYf+Aw@mail.gmail.com>
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

On Thu, May 28, 2020 at 4:34 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, May 28, 2020 at 02:32:42AM +0530, Souptick Joarder wrote:
> > This code was using get_user_pages_fast(), in a "Case 2" scenario
> > (DMA/RDMA), using the categorization from [1]. That means that it's
> > time to convert the get_user_pages_fast() + put_page() calls to
> > pin_user_pages_fast() + unpin_user_page() calls.
>
> You are saying that the page is used for DIO and not DMA, but it sure
> looks to me like it is used for DMA.

No, I was referring to "Case 2" scenario in change log which means  it is
used for DMA, not DIO.

>
>    503                          /* Map the page into DMA space. */
>    504                          ptes[i].dma_addr =
>    505                                  dma_map_page(pg_tbl->device, page, 0, PAGE_SIZE,
>    506                                               DMA_BIDIRECTIONAL);
>
> To be honest, that starting paragraph was confusing.  At first I thought
> you were saying gasket was an RDMA driver. :P  I shouldn't have to read
> a different document to understand the commit message.  It should be
> summarized enough and the other documentation is supplemental.
>
> "In 2019 we introduced pin_user_pages() and now we are converting
> get_user_pages() to the new API as appropriate".

As all other similar conversion have similar change logs, so I was trying
to maintain the same. John might have a different opinion on this.

John, Any further opinion ??

>
> >
> > There is some helpful background in [2]: basically, this is a small
> > part of fixing a long-standing disconnect between pinning pages, and
> > file systems' use of those pages.
>
> What is the impact of this patch on runtime?

I don't have the hardware to validate the runtime impact and will
wait if someone is going to validate it for runtime impact.

>
> >
> > [1] Documentation/core-api/pin_user_pages.rst
> >
> > [2] "Explicit pinning of user-space pages":
> >       https://lwn.net/Articles/807108/
> >
> > Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> > Cc: John Hubbard <jhubbard@nvidia.com>
> >
> > Hi,
> >
> > I'm compile tested this, but unable to run-time test, so any testing
> > help is much appriciated.
> > ---
>
> The "Hi" part of patch should have been under the "---" cut off line so
> this will definitely need to be resent.

Sorry about it.
Will wait for feedback from John before resend it :)

>
> regards,
> dan carpenter
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
