Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8422D150A
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 16:49:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 271DB86151;
	Mon,  7 Dec 2020 15:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FSHy-FlCigaq; Mon,  7 Dec 2020 15:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1F6C85FFD;
	Mon,  7 Dec 2020 15:49:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 326F41BF28A
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 15:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2EBF68776F
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 15:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qz7S0KKRQ3RJ for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 15:49:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F09A487740
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 15:49:21 +0000 (UTC)
Date: Mon, 7 Dec 2020 16:50:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607356161;
 bh=qTBPibEoRu5n/CizFEG0pWRxG9m5E+TMjsuOMLCNFiE=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=VZVM6LsSiUyJ7qdyf5ffpQ8bSADyh6wb2Wid4dEYKTeg5JeGGJdJvBQzCqdDcmUFo
 G2kvF+J1/lasDYQhIIMVcWoPWU7wIJ2sT3S2nZXbshw0tAADTXT9eAh+UZQZ1xVvyE
 VxNMc/c36u4vqIw09eoqXlCowKf6DXzImKTK7Wok=
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] staging: mt7621-pinctrl: stop using the deprecated
 'pinctrl_add_gpio_range'
Message-ID: <X85PR+MHeoKm2b6b@kroah.com>
References: <20201206105333.18428-1-sergio.paracuellos@gmail.com>
 <CACRpkdapoB3P2wgMG+WbrsGopfgPtk5ZebRyb__wZK_hXzXZtg@mail.gmail.com>
 <CAMhs-H_R5dp14_8OG=Mh2kfRG3SXGGAcAhY8NF0sd4M8mk6nWQ@mail.gmail.com>
 <CACRpkdafXZJ5W9Z0LJv3p7htP12o2mULgHhFa8kmnT+LWJhh0A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdafXZJ5W9Z0LJv3p7htP12o2mULgHhFa8kmnT+LWJhh0A@mail.gmail.com>
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 07, 2020 at 04:40:06PM +0100, Linus Walleij wrote:
> On Mon, Dec 7, 2020 at 2:57 PM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> > On Mon, Dec 7, 2020 at 2:05 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> 
> > > After this I think the driver looks good and can graduate from staging.
> > > Can you send a patch to move this to drivers/pinctrl next
> > >
> > > I think drivers/pinctrl/pinctrl-rt2880.c since we don't expect a lot
> > > more of them.
> >
> > Perfect, let me write the bindings yaml file and send the patch moving this.
> >
> > What git tree do you prefer the patch to be rebased onto?
> 
> I suppose Gregs since he has some changes to it that it need to
> be based on. After v5.11-rc1 it could be the pinctrl tree as well.
> I don't know if Greg has a favourite way to de-stage drivers?

It all depends on what the subsystem maintainer wants to do.

Sometimes we just do a "add a new driver to the real spot" that goes
through the subsystem tree, and when that is accepted, I delete the
driver in the staging tree.  This is most often in networking.

Or you can wait until -rc1 and do a move in your tree, or just tell me
to do the move in my tree with an ack, and I can handle it all.

Whatever is easier for you is fine with me, I'm flexible :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
