Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 980DC1E8FFB
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 11:22:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 747ED221FF;
	Sat, 30 May 2020 09:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t8xKl-nWG79g; Sat, 30 May 2020 09:22:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 56C102045D;
	Sat, 30 May 2020 09:22:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0DEC1BF3C9
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 09:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9D58B88392
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 09:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jOcWeC+mKi2i for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 09:22:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7E6A688372
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 09:22:12 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B131206C3;
 Sat, 30 May 2020 09:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590830532;
 bh=+qWBdGEDbIIib0pi3ThEKT0sCW2mGkQSYxrHrj7r2Bg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=I1WroDaFDdXChCLooNsfISaeiGNHDT8v4Ob1Egy7P0m2LlphCYeYn8TIP3MFlALcF
 jh+46f4nghHA0QOCCdKL/hULrfe97Hfu0qjdRwDmkdHgVU5LqDqmEGoAa01bX2gK2F
 JXU8B/p2Y7wQPOAS0co2XVnyf2AhrZRNUk+ART5o=
Date: Sat, 30 May 2020 11:22:07 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer
 check
Message-ID: <20200530112207.69f830c2@coco.lan>
In-Reply-To: <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
 <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
 <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 29 May 2020 22:31:44 +0200
Arnd Bergmann <arnd@arndb.de> escreveu:

> On Fri, May 29, 2020 at 10:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Fri, May 29, 2020 at 10:04 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:  
> > >
> > > See also Nathan's 7 patch series.
> > > https://lore.kernel.org/lkml/20200527071150.3381228-1-natechancellor@gmail.com/
> > >
> > > Might be some overlap between series?
> > >  
> >
> > Probably. I really should have checked when I saw the number of warnings.
> >
> > At least this gives Mauro a chance to double-check the changes and see if
> > Nathan and I came to different conclusions on any of them.  
> 
> I checked now and found that the overlap is smaller than I expected.
> In each case, Nathans' solution seems more complete than mine,
> so this patch ("staging: media: atomisp: fix incorrect NULL pointer check")
> and also "staging: media: atomisp: fix a type conversion warning" can be
> dropped, but I think the others are still needed.

Hi Arnd,

I applied most of the patches from you. I had to add two extra patches
before this one:

	[PATCH 5/9] staging: media: atomisp: fix stack overflow in init_pipe_defaults()

And rebase it, because otherwise gcc would fail to compile here.

I'm placing the patches I have so far ready for atomisp on this
tree:

	https://git.linuxtv.org/mchehab/media-next.git/log/

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
