Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7582F20C061
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 10:59:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A394E883A2;
	Sat, 27 Jun 2020 08:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oE+IPeusaYat; Sat, 27 Jun 2020 08:59:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7535F882BE;
	Sat, 27 Jun 2020 08:58:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A09A21BF3F4
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9D06588148
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RyKRV1hStQEQ for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 08:58:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 74023880F8
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:58:56 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id t74so6400788lff.2
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 01:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QKV1r6C8//IPYV99TpfkgFMNXesYLRNzzT96YTJF3tw=;
 b=Y/cIGhRz04nSz/e1Yb6lbZ8Wjx6MM8VMB/3BhWbxV6sQZtPC8xKKgHfQk3iBCUDqdx
 8mWobVejsEXpiRZMsGbkDwPT0/9wMTdFfvmF8SP6F7slI09RNNyPdF/mLmAl/wm0Tf95
 iHmPWAv9yIpqr0YBmciPlRNHrYsbzSaDJxxsX7syTSqGwd8bs6I6yThGsCLfw+pm8xwP
 I3qwDfLpX4FU6mfoIadrCWAqWPvsHPEwYt6c1K5QW5YfS7G86W0fLwfF9chjBvq8HS8n
 u+WO1cDk8FDlYzo8GHUV9sag1ps9iRvQRhnunakTi4HGtvQv675ewdusehB4/PpR8a8/
 y8EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QKV1r6C8//IPYV99TpfkgFMNXesYLRNzzT96YTJF3tw=;
 b=OnY+6PMwlu38rwJK4tDteyfLUPkKhYIgl4Og09jFsnveODmCAOEkEnLYVIlZkqde0I
 b+Dvo76MxC+ucx915TzNLbkUT02bKRvcvBRYS4TrTXRKtZ8e3gIoRtcOG+UPoiCCWfkC
 sLxx6qYtwGELUAl7oAT6wWdOZulkX7GjIQgf4nuiFu/IeMk9OOTvj33PCFbm+IZumUGg
 dukbYP62Iyv1irffhduFTRt8m9l1u3bPPcKIkYbdqeGbyZoMtWFXxrxl6KvN0GGzx216
 Vg1jZwRjR5iJ/OpzH8vT/wKRH+HRGARvqg3eUgjYf3QBOjlKtnJEbKDVFecEO6TyXlxK
 rkKg==
X-Gm-Message-State: AOAM530PGhoNwmdc0GmpGu2zJyFLg7wuK7FbIjyQBQPhd3Gc7xu9bCnK
 NTr94UXUcRI8QXQrX3jqAmusWa7LhjaZjKkNS/Vinw==
X-Google-Smtp-Source: ABdhPJx7U2X5RD8sayxg4a0IOn4pwsm3iim1b+b6ncO8SyHU+UV4FzHo/35eWqkovOhidBlzpqApnsRg0BJKkO21cfQ=
X-Received: by 2002:a19:c797:: with SMTP id x145mr4068841lff.143.1593248334135; 
 Sat, 27 Jun 2020 01:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200626143205.xns6nwggskssujao@pesu-pes-edu>
 <CAAhDqq0tSftPxMWGeVy3mp4DGDN3o0uQwTqVbjYUwjqzWpbibQ@mail.gmail.com>
 <20200627050745.GD226238@kroah.com>
 <f73c5a69-1bf9-d80d-2399-ef18ce78b8ac@xs4all.nl>
 <20200627084932.GA1560170@kroah.com>
In-Reply-To: <20200627084932.GA1560170@kroah.com>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Sat, 27 Jun 2020 04:58:41 -0400
Message-ID: <CAAhDqq1g5WYL07F68Dy2mvPuQTabYcqSwOFOjBU1nccWxSL5rg@mail.gmail.com>
Subject: Re: [PATCH] staging: media: usbvision: removing prohibited space
 before ',' (ctx:WxW)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thank you for the information.
I will take care of all these things from the next time.

sorry for wasting your time

thanks,

karthik

On Sat, Jun 27, 2020 at 4:49 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sat, Jun 27, 2020 at 10:28:31AM +0200, Hans Verkuil wrote:
> > On 27/06/2020 07:07, Greg Kroah-Hartman wrote:
> > >
> > > A: http://en.wikipedia.org/wiki/Top_post
> > > Q: Were do I find info about this thing called top-posting?
> > > A: Because it messes up the order in which people normally read text.
> > > Q: Why is top-posting such a bad thing?
> > > A: Top-posting.
> > > Q: What is the most annoying thing in e-mail?
> > >
> > > A: No.
> > > Q: Should I include quotations after my reply?
> > >
> > > http://daringfireball.net/2007/07/on_top
> > >
> > > On Fri, Jun 26, 2020 at 11:42:49AM -0400, B K KARTHIK PES2201800185STUDENT ECE DeptPESU EC Campus wrote:
> > >> Oh, I'm sorry but wouldn't it be helpful if we had a file that lists
> > >> all drivers that are scheduled for removal?
> > >
> > > The TODO file in the directory for the driver should have this
> > > information in it.  I don't know if all of the media drivers have this,
> > > if not, then there is no way you could have known this.
> >
> > They have, and in addition the Kconfig entry will mention that the driver
> > is deprecated.
> >
> > TODO of usbvision:
> >
> > The driver is deprecated and scheduled for removal by the end
> > of 2020.
> >
> > In order to prevent removal the following actions would have to
> > be taken:
> >
> > - clean up the code
> > - convert to the vb2 framework
> > - fix the disconnect and free-on-last-user handling (i.e., add
> >   a release callback for struct v4l2_device and rework the code
> >   to use that correctly).
>
> Ah, great, nevermind then!
>
> B K, your wish is already granted, the text is present, you just needed
> to have noticed it :)
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
