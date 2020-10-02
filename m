Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D65C2812DB
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Oct 2020 14:36:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67ED186672;
	Fri,  2 Oct 2020 12:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8UI87fXFGDSd; Fri,  2 Oct 2020 12:36:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 331D386594;
	Fri,  2 Oct 2020 12:36:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 598421BF9B9
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 12:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 543EC86594
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 12:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FS_ffQAkh5Oi for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 12:36:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D3C8E8659E
 for <devel@driverdev.osuosl.org>; Fri,  2 Oct 2020 12:36:26 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id m34so687281pgl.9
 for <devel@driverdev.osuosl.org>; Fri, 02 Oct 2020 05:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UCR+QZlbJRR7G6SqK3i7yMDxf3forYLQPEv586WcD34=;
 b=cvMQXLgIfIQVKKbm7XpVZ20pUznSPsFY1u5hfnIY4gZu0vPQGGzUh87ZCX1c+73fDf
 ixu3YQ8A9F+GAIjQk5VMZRA4F9ii6uuiOnASzXQMHy44JidvXABapcbY6YPItZQ+xR+w
 WEO+mWbLNTsPdES3eYPrrWaKZNfH33l1YMhnX6w/jpwnCkgc/ESN5tV59vBTBLnhutTi
 chvLpNAJmLbKI/gh36HGacsXt3jtTclwj0ldwfOyzDyUKD2c8/UrM7J3r35Ds86xp7GX
 vas+CLv1jsVEgeADXyQjSjg0J8kU7VvQKFggiKvQyYA08FNGY76k5jMV0TBE6MN8sU0D
 Wylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UCR+QZlbJRR7G6SqK3i7yMDxf3forYLQPEv586WcD34=;
 b=NQPdw+0/PDVrUM9fxGq1+ntDnU9Af/WRnSOc6POOOSYuCmizxpj33z1ikgarHa/0tX
 oTCn3vaPwRGwGmk3L0+CH4MU8Ys8IsGBuEFJzM7ZjFQCyE8J3A5SM1nyMzlpOY1wx2Me
 JNx6hx1LfrmBSXvlJgodpLnKTqJxKfeJ8eBF1jp5aykbeibE266AViZtxuDv30ynvkSj
 vIUqA7FmCtLV65JBqlh9Umxi8WxlhBoiqFjYGRDfAji2BWfgZUqGJ6iMkXs0G65touxo
 ZhHXma+MN08gjP/zRkPkPdqnyyLlBeWimALpxGH7GWYbTPSeZrgxmzqa32yvEEvd3nbu
 xWXg==
X-Gm-Message-State: AOAM5305wbaaI8KHhiVpbzerZJLqC36zS23ggvZ9+Lld3mgqqE6tKZZS
 vOLRCD2gydzdp/8jJgBGotsq+JqG2LqjvKSbzHA=
X-Google-Smtp-Source: ABdhPJyU2SrYzqo6IL3nYImabX9nkk+Vdcl0PQbg0Hjn5KOazafdI7H8nftfjdcV2pFFBWXT2ugIBIWLr5n2uPTUoAA=
X-Received: by 2002:a63:4c1d:: with SMTP id z29mr2020084pga.203.1601642186341; 
 Fri, 02 Oct 2020 05:36:26 -0700 (PDT)
MIME-Version: 1.0
References: <490e5002c3fea266524c31e1a94853dca9c3286c.1601551027.git.mchehab+huawei@kernel.org>
 <CAHp75Ve3B_YzC3JpswDv_8sYoMmvh58q4iWxfx2090Nfk3+_Fw@mail.gmail.com>
 <20201001175547.1eb58b26@coco.lan>
In-Reply-To: <20201001175547.1eb58b26@coco.lan>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 2 Oct 2020 15:36:07 +0300
Message-ID: <CAHp75VdYWguPgpp2qgKG9=1Bt5gTZER_nuhBsXgy8yApo4RQug@mail.gmail.com>
Subject: Re: [PATCH v3] media: atomisp: fixes build breakage for ISP2400 due
 to a cleanup
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 1, 2020 at 6:55 PM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
> Em Thu, 1 Oct 2020 18:50:12 +0300
> Andy Shevchenko <andy.shevchenko@gmail.com> escreveu:
>
> > On Thu, Oct 1, 2020 at 2:17 PM Mauro Carvalho Chehab
> > <mchehab+huawei@kernel.org> wrote:
> > >
> > > A temporary var needed for building with ISP2400 was removed
> > > by accident on a cleanup patch.
> > >
> > > Fix the breakage.
> >
> > Is this in any of your branches?
>
> I added v3 of the fixes today at the media tree master branch.
>
> If no merge issues happen, it should be at tomorrow's linux-next.

Fixes the issue to me, thanks!
Tested-by: Andy Shevchenko <andy.shevchenko@gmail.com>

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
