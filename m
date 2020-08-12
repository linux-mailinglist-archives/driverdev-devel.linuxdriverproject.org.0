Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE69242ED3
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 20:59:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BD558844A;
	Wed, 12 Aug 2020 18:59:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WgHByFjr2AR1; Wed, 12 Aug 2020 18:59:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8AF1E880E8;
	Wed, 12 Aug 2020 18:59:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1547A1BF23C
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 18:59:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0535D231CB
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 18:59:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZNB4ZtuO4sYo for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 18:59:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E59A4203BB
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 18:59:50 +0000 (UTC)
Received: from onda.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70AC720774;
 Wed, 12 Aug 2020 18:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597258790;
 bh=/wdga4UNSKTHfzzgL8b+sTrJQhQuvj60dfRwTV4au+I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=w9VyCjMfLpHM6SJRTjzkW/Z5MxU+3eg1va9oDApDyOEJGq2zjgIuS1d4Rrq2pmVrB
 Z+L6UcwoueIx/DEG0iCChjOgfiIVYPRx++/zS2gcCSx8ZXxHD6bfG89Lmh/VqPRN1a
 tSosj6QHQDN/qPEVmRu+jJf/Eq5IIY6OYOEMSXnA=
Date: Wed, 12 Aug 2020 15:59:47 -0300
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 01/44] staging: spmi: add Hikey 970 SPMI controller driver
Message-ID: <20200812155947.61479b84@onda.lan>
In-Reply-To: <20200812162814.GB2650123@kroah.com>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
 <4305f945d257cf590646100cad752a0a6542a152.1597247164.git.mchehab+huawei@kernel.org>
 <20200812162814.GB2650123@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 mauro.chehab@huawei.com, linuxarm@huawei.com, Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 12 Aug 2020 18:28:14 +0200
Greg Kroah-Hartman <gregkh@linuxfoundation.org> escreveu:

> On Wed, Aug 12, 2020 at 05:56:11PM +0200, Mauro Carvalho Chehab wrote:
> > From: Mayulong <mayulong1@huawei.com>
> > 
> > Add the SPMI controller code required to use the Kirin 970
> > SPMI bus.
> > 
> > [mchehab+huawei@kernel.org: added just the SPMI controller on this patch]
> > 
> > The complete patch is at:
> > 
> > 	https://github.com/96boards-hikey/linux/commit/08464419fba2
> > 
> > Signed-off-by: Mayulong <mayulong1@huawei.com>
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > ---
> >  .../staging/hikey9xx/hisi-spmi-controller.c   | 390 ++++++++++++++++++
> >  1 file changed, 390 insertions(+)
> >  create mode 100644 drivers/staging/hikey9xx/hisi-spmi-controller.c
> > 
> > diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
> > new file mode 100644
> > index 000000000000..987526c8b49f
> > --- /dev/null
> > +++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
> > @@ -0,0 +1,390 @@
> > +
> > +#include <linux/delay.h>  
> 
> <snip>
> 
> No SPDX line at all?
> 
> :(

This is added later on at this series. The first patch came from a 4.9
tree, where such tags weren't used yet.

The next patches on this series will add SPDX to all files.

Regards,
Mauro

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
