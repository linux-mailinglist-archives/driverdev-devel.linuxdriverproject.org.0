Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AAABA24383E
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Aug 2020 12:10:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3982A22721;
	Thu, 13 Aug 2020 10:10:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mtkt1wpAcrU5; Thu, 13 Aug 2020 10:10:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DC7AF203F9;
	Thu, 13 Aug 2020 10:10:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8771B1BF48B
 for <devel@linuxdriverproject.org>; Thu, 13 Aug 2020 10:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83F8686B7A
 for <devel@linuxdriverproject.org>; Thu, 13 Aug 2020 10:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e4DpqVwOBCMn for <devel@linuxdriverproject.org>;
 Thu, 13 Aug 2020 10:10:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E75F48699B
 for <devel@driverdev.osuosl.org>; Thu, 13 Aug 2020 10:10:42 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D96E520781;
 Thu, 13 Aug 2020 10:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597313442;
 bh=8S6jKUx46BaOyd6AEOnq4IBcGElO3fsBbXuThZ9ef9Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=B/O/ZSqBYDBJzorx/2d7HlkU1ilrHm2wLKnb0Tq0ft8UhED82Fpxw1SNCHwYh01ML
 Po/6cfpStrpfdUTWfs88AqPqQmiQ0YmuAF/abzvBdZNJxeM+xHCpuUICNvqymCze1u
 rOq0O+poRpNHojmOg34CDYSTSI1vXxT+A1T2QV10=
Date: Thu, 13 Aug 2020 12:10:36 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 35/44] staging: regulator: hi6421v600-regulator: add a
 driver-specific debug macro
Message-ID: <20200813121036.126c4797@coco.lan>
In-Reply-To: <6a424468eb61e2eb9b014817819dd4da61f2ada1.camel@perches.com>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
 <7cb10b3910e9fa3e52d36e4e416030175cc761ab.1597247164.git.mchehab+huawei@kernel.org>
 <6a424468eb61e2eb9b014817819dd4da61f2ada1.camel@perches.com>
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
Cc: mauro.chehab@huawei.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 12 Aug 2020 09:10:29 -0700
Joe Perches <joe@perches.com> escreveu:

> On Wed, 2020-08-12 at 17:56 +0200, Mauro Carvalho Chehab wrote:
> > Using dev_dbg() is not too nice, as, instead of printing the
> > name of the regulator, it prints "regulator.<number>", making
> > harder to associate what is happening with each ldo line.
> > 
> > So, add a debug-specific macro, which will print the rdev's
> > name, just like the regulator core.  
> 
> Seems sensible, but trivially:
> 
> > diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c  
> []
> > @@ -209,10 +212,10 @@ static unsigned int hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev
> >  	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
> >  
> >  	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA)) {
> > -		dev_dbg(&rdev->dev, "%s: normal mode", __func__);
> > +		rdev_dbg(rdev, "normal mode");
> >  		return REGULATOR_MODE_NORMAL;
> >  	} else {
> > -		dev_dbg(&rdev->dev, "%s: idle mode", __func__);
> > +		rdev_dbg(rdev, "idle mode");  
> 
> missing terminating newlines

As per request from Jonathan, I ended dropping those rdev_dbg()
on a followup patch.

Btw, after this changeset:

	commit 563873318d328d9bbab4b00dfd835ac7c7e28697
	Merge: 24532f768121 bfd8d3f23b51
	Author: Linus Torvalds <torvalds@linux-foundation.org>
	Date:   Mon Oct 10 09:29:50 2016 -0700

	    Merge branch 'printk-cleanups'
    
	    Merge my system logging cleanups, triggered by the broken '\n' patches.

the printk lib will add a line feed if a "\n" is missing. I had
to get rid of pr_cont() & friends on that time on media, due to that. 

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
