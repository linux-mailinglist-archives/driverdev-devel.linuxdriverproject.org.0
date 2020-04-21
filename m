Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AA61B2010
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Apr 2020 09:41:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 757F3869A5;
	Tue, 21 Apr 2020 07:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yP8Lw1RQZwQy; Tue, 21 Apr 2020 07:41:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC01286955;
	Tue, 21 Apr 2020 07:41:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0565F1BF2BC
 for <devel@linuxdriverproject.org>; Tue, 21 Apr 2020 07:41:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F079886DF4
 for <devel@linuxdriverproject.org>; Tue, 21 Apr 2020 07:41:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lT7E8RpPcdOP for <devel@linuxdriverproject.org>;
 Tue, 21 Apr 2020 07:41:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 58E5A86DAD
 for <devel@driverdev.osuosl.org>; Tue, 21 Apr 2020 07:41:05 +0000 (UTC)
Received: from coco.lan (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A4C02073A;
 Tue, 21 Apr 2020 07:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587454865;
 bh=tEnS9GBsLYWXaQ65syL/1sOeywCqfiO4IxuBM9rNvmY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JwkTd/RuB3UayxsH7qYtY5iYnLQmWOAtBRP9oOTZyW97/JdZOgxyjfLJXLXCSnHvJ
 gWFXyKiXd2iuEBJAgBZQOKesD0FNboUyfQ8aHPac4dXd/26514j4vKo23qCpfB3E6Y
 x9GsLuurowjWB23nyGUgKraTKOMGKZMS38CS40AY=
Date: Tue, 21 Apr 2020 09:40:59 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH] media: staging: rkisp1 Kconfig: depends on OF
Message-ID: <20200421094059.1ea66ee8@coco.lan>
In-Reply-To: <CAAEAJfD=UtEDb4cgM_kqm7fJuwpDm3rMN+O1GuNY+NcBupzqwA@mail.gmail.com>
References: <56aaef4ea1c26d90952841fa32b2a14bcc27582a.1587401141.git.mchehab+huawei@kernel.org>
 <CAAEAJfD=UtEDb4cgM_kqm7fJuwpDm3rMN+O1GuNY+NcBupzqwA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 21 Apr 2020 00:17:08 -0300
Ezequiel Garcia <ezequiel@vanguardiasur.com.ar> escreveu:

> Hi Mauro, Randy,
> 
> On Mon, 20 Apr 2020 at 13:45, Mauro Carvalho Chehab
> <mchehab+huawei@kernel.org> wrote:
> >
> > building it with a random config causes a warning:
> >
> > WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
> >   Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=y] && (ARCH_ROCKCHIP || COMPILE_TEST [=y]) && OF [=n]
> >   Selected by [y]:
> >   - VIDEO_ROCKCHIP_ISP1 [=y] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=y] && VIDEO_V4L2 [=y] && (ARCH_ROCKCHIP || COMPILE_TEST [=y])
> >
> > Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> > Reported-by: Randy Dunlap <rdunlap@infradead.org>
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>  
> 
> Thanks for the patch. Please note this warning (plus another one),
> is already fixed by a couple patches in this series:
> 
> https://patchwork.linuxtv.org/project/linux-media/list/?series=2094

I actually merged the patches yesterday, in order to have a cleaner
linux-next today.

There were too much Kconfig noise those days.

So, could you please rebase your patches on the top of media upstream?


Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
