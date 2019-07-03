Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C095E8B7
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 18:24:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7A1085FAC;
	Wed,  3 Jul 2019 16:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJLm3heG_Yml; Wed,  3 Jul 2019 16:24:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D5E586073;
	Wed,  3 Jul 2019 16:24:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4EC811BF377
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 16:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4BDB886BC1
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 16:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wOMg-Y7IGkE7 for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 16:24:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CEC278691E
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 16:24:38 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 333AE2187F;
 Wed,  3 Jul 2019 16:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562171078;
 bh=Dyr76nFeit5GF6SisEYOjjs/5E8D2rom9tZQmnyAKSw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AsK800U4sycsNtDbBYmJHQK7g46pMMfFNdrGzi65WzvnvyNoqF13R0Rz/apChv+/X
 1I45CpbfKICUFRIAzuLXpO+Mfnxjp3MAL4fJEbvT3mAt59vT/0OA6LdSJLfONfyilZ
 lv+aZZ+JyJ48D2+w6X/G2/2eoXGPH91IHOBJNs54=
Date: Wed, 3 Jul 2019 18:24:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Laura Abbott <labbott@redhat.com>
Subject: Re: [PATCH 1/2] staging: android: ion: Remove file ion_carveout_heap.c
Message-ID: <20190703162435.GA21449@kroah.com>
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
 <20190703083745.GB8996@kroah.com>
 <CAKMK7uFAaw3sL_A6gGOeot80fvukjZqprLptLER=riA1_p4zWw@mail.gmail.com>
 <759555d8-98bf-44d3-4fa3-3d927f9a33db@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <759555d8-98bf-44d3-4fa3-3d927f9a33db@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Todd Kjos <tkjos@android.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel@ffwll.ch>,
 joel@joelfernandes.org, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 03, 2019 at 07:32:27AM -0400, Laura Abbott wrote:
> On 7/3/19 5:50 AM, Daniel Vetter wrote:
> > On Wed, Jul 3, 2019 at 10:37 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > 
> > > On Wed, Jul 03, 2019 at 01:48:41PM +0530, Nishka Dasgupta wrote:
> > > > Remove file ion_carveout_heap.c as its functions and definitions are not
> > > > used anywhere.
> > > > Issue found with Coccinelle.
> > > > 
> > > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > > > ---
> > > >   drivers/staging/android/ion/Kconfig           |   9 --
> > > >   drivers/staging/android/ion/Makefile          |   1 -
> > > >   .../staging/android/ion/ion_carveout_heap.c   | 133 ------------------
> > > 
> > > I keep trying to do this, but others point out that the ion code is
> > > "going to be fixed up soon" and that people rely on this interface now.
> > > Well, "code outside of the kernel tree" relies on this, which is not ok,
> > > but the "soon" people keep insisting on it...
> > > 
> > > Odds are I should just delete all of ION, as there hasn't been any
> > > forward progress on it in a long time.
> > > 
> > > Hopefully that wakes some people up...
> > 
> > John Stultz has done a steady stream on ion destaging patch series
> > past few months, und the heading of "DMA-BUF Heaps", targeting
> > drivers/dma-buf. I'm not following the details, and it seems a bit a
> > crawl, but there's definitely work going on ... Just probably not
> > in-place in staging I think.
> > -Daniel
> > 
> 
> 
> https://lists.freedesktop.org/archives/dri-devel/2019-June/223705.html
> 
> It is making slow and steady progress. Part of this is trying to
> make sure we actually get this right before moving anything
> out of staging.
> 
> That said, I think we're at the point where nobody wants the
> carveout and chunk heaps so I'd actually be okay with removing
> those files. Just to be explicit:
> 
> Acked-by: Laura Abbott <labbott@redhat.com>

Hey, if you agree to delete these, I'll not object at all!

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
