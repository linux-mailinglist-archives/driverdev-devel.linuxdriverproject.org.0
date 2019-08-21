Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236699853C
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 22:11:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D39EB86D51;
	Wed, 21 Aug 2019 20:11:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hS2tOYnH3DB3; Wed, 21 Aug 2019 20:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F1D685207;
	Wed, 21 Aug 2019 20:11:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 690AE1BF405
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 20:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 65E8685207
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 20:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lcccuH0-IFpK for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 20:11:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 28E2A84D90
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 20:11:28 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id e20so7169104iob.9
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 13:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2DOTUim7xszpoBzU2nXJGt8etxbT3w7zmjx6UDzqbXU=;
 b=UXz0/pxLpfbJ+/8wDoB0Y7l4WEcoaALBaywsTATMPxdERmlwMg/lFGmHDRFtLLZzBz
 SkEVJMM0tF2zjSunb9BIjk0WyQLSIYZE+fFugI6txHa6/e5m7xFKE/SYZkUOq1SiYQYX
 20jLwLjbKrkpU7KjDWcbl9zUYtE4KBshRsGixr1QVBh6mtAHRanG71hgg0rr2rcjqG9f
 q9ImQndHlYpgYyj+ltasWK5K6apcl9927re5JePwF9K/8Tygzvlk6R/jc1aJAMKUrTmH
 Yb45Xbw+PgnIdmbLv+SJJgBtDod6TvhwpbpK+VveNJP1qtPBdE8TuvGg2vNYoHTVoSwQ
 VvFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2DOTUim7xszpoBzU2nXJGt8etxbT3w7zmjx6UDzqbXU=;
 b=E0dCT++sTelEE0+1YOPy99lGimEVRnwdpD1mliYri+hGRJnlQq7rAQvvFVtoRiwIiT
 4OrRe3AXSMpo7S7TAnig3KaGEOsJGsWPLJ0cvVJP8/9SD6JEO6PCWEvOsD+pjmerR2TF
 mZXQDOJgL+w39jBZirOuFpur9Y8Sk+nh+4KCo+wKIHeIB+xat2FwNoqHLtnfFYKHkClt
 8vVeQzSeAd2uo2XQsf+DN9mxaRx9M4oaD70F3oEqec+YbKAy2Fd9xd6xTioKSpBjbPs1
 6tpyau8AlLvqJwgHIH63/c/TiarzcBjU1ow12kheYWZCk1q6PkdoBBpxEsUYSS/BRPHq
 4R4w==
X-Gm-Message-State: APjAAAXnBCE+9zPyxp3zZ44L60xoe3VwrNte2fA1t1ovutPiTgcgfpmr
 P22Cl0p8GjeT37w5bL2GRqDlFm6WRwfeF69Lk28=
X-Google-Smtp-Source: APXvYqwCG+0NxvpiXWFxLs/BwtVZQxRP5BIDZQdTt/uwkeC0l2jxYg38T7Rp5jmL6lWDqWJbyLDcNugi+gNp95irp3g=
X-Received: by 2002:a5d:8ad0:: with SMTP id e16mr114649iot.262.1566418287345; 
 Wed, 21 Aug 2019 13:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
 <1566346700-28536-3-git-send-email-caitlynannefinn@gmail.com>
 <7aaca457a3d3feb951082d0659eec568a908971f.camel@perches.com>
 <20190821023122.GA159802@architecture4> <20190821151241.GF12461@ares>
 <20190821155205.GB5060@hsiangkao-HP-ZHAN-66-Pro-G1>
In-Reply-To: <20190821155205.GB5060@hsiangkao-HP-ZHAN-66-Pro-G1>
From: Caitlyn Finn <caitlynannefinn@gmail.com>
Date: Wed, 21 Aug 2019 16:11:15 -0400
Message-ID: <CAG2TOUuM+jE2ZTGTCMpPL7U2Q_motkAH6iWZdUOJLsPY8aC8aA@mail.gmail.com>
Subject: Re: [PATCH 2/2] staging/erofs: Balanced braces around a few
 conditional statements.
To: Gao Xiang <hsiangkao@aol.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 21, 2019 at 11:52 AM Gao Xiang <hsiangkao@aol.com> wrote:
>
> Hi Tobin,
>
> On Wed, Aug 21, 2019 at 08:13:35AM -0700, Tobin C. Harding wrote:
> > On Wed, Aug 21, 2019 at 10:31:22AM +0800, Gao Xiang wrote:
> > > On Tue, Aug 20, 2019 at 07:26:46PM -0700, Joe Perches wrote:
> > > > On Tue, 2019-08-20 at 20:18 -0400, Caitlyn wrote:
> > > > > Balanced braces to fix some checkpath warnings in inode.c and
> > > > > unzip_vle.c
> > > > []
> > > > > diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
> > > > []
> > > > > @@ -915,21 +915,21 @@ static int z_erofs_vle_unzip(struct super_block *sb,
> > > > >         mutex_lock(&work->lock);
> > > > >         nr_pages = work->nr_pages;
> > > > >
> > > > > -       if (likely(nr_pages <= Z_EROFS_VLE_VMAP_ONSTACK_PAGES))
> > > > > +       if (likely(nr_pages <= Z_EROFS_VLE_VMAP_ONSTACK_PAGES)) {
> > > > >                 pages = pages_onstack;
> > > > > -       else if (nr_pages <= Z_EROFS_VLE_VMAP_GLOBAL_PAGES &&
> > > > > -                mutex_trylock(&z_pagemap_global_lock))
> > > > > +       } else if (nr_pages <= Z_EROFS_VLE_VMAP_GLOBAL_PAGES &&
> > > > > +                mutex_trylock(&z_pagemap_global_lock)) {
> > > >
> > > > Extra space after tab
> > >
> > > There is actually balanced braces in linux-next.
> > > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/staging/erofs/zdata.c#n762
> >
> > Which tree did these changes go in through please Gao?  I believe
> > Caitlyn was working off of the staging-next branch of Greg's staging
> > tree.
>
> I don't think so, the reason is that unzip_vle.c was renamed to zdata.c
> months ago, see:
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/tree/drivers/staging/erofs?h=staging-next
>
> so I think the patch is outdated when I first look at it.
>
> Thanks,
> Gao Xiang

Gao,

I see now that I was on an outdated revision (Linux 5.3-rc4) of the
staging-next branch of Greg's staging tree, from
before that change was merged. I'll be certain that I'm fully
up-to-date before submitting future patches.

Thanks all for your time and assistance, and Gao and Joe for the
review comments as well, I'll review and submit
an appropriate patch series at a later time.

Thanks,
Caitlyn Finn
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
