Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BE520B54A
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 17:52:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83F0385E6F;
	Fri, 26 Jun 2020 15:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zzVI4PEeWnE6; Fri, 26 Jun 2020 15:52:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B542850AD;
	Fri, 26 Jun 2020 15:52:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B4AF1BF295
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:52:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 041BA8838F
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iv-p9bAUuZH2 for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 15:52:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 610A888378
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 15:52:21 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B87020702;
 Fri, 26 Jun 2020 15:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593186741;
 bh=eQ/gqvaPGuNwhaaseFP3g+9qc6WdZn+I0SkmtvJtzVk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zMxTt5DgSj+wSUx53bzzYetueSNvKZYhfDM6vNemQpzFLMrLsa3P+XHyrpMXNKhhx
 xOsCiol1sHByjvwwq95RdEuWCEPS1EwHBogXpKIk6C9e7M1r7uTwuEN08EYsTM90pE
 mfe/SYDVaCR2S1HWGpVrEABH77f9ktmOHElC25WU=
Date: Fri, 26 Jun 2020 17:52:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH 0/7] Some atomisp fixes and improvements
Message-ID: <20200626175216.7955c374@coco.lan>
In-Reply-To: <20200626150021.GY3703480@smile.fi.intel.com>
References: <cover.1593180146.git.mchehab+huawei@kernel.org>
 <20200626150021.GY3703480@smile.fi.intel.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 26 Jun 2020 18:00:21 +0300
Andy Shevchenko <andriy.shevchenko@linux.intel.com> escreveu:

> On Fri, Jun 26, 2020 at 04:04:52PM +0200, Mauro Carvalho Chehab wrote:
> > Those patches are meant to improve device detection by the atomisp driver,
> > relying on ACPI bios when possible.
> > 
> > It also adds a basis for using ACPI PM, but only if the DSDT tables have
> > a description about how to turn on the resources needed by the cameras.
> > 
> > At least on the device I'm using for tests, this is not the case.  
> 
> Is this in your experimental tree? 

Yes. 

> I'll rebase mine on top and test.
> After I will send the rest from my series and give a tag to this.

It would be helpful if you could test removing the DMI match table from
your board. If your device has a DSDT table close to the one I have, the
new code may be able to get everything from DSDT.

> 
> > 
> > Mauro Carvalho Chehab (7):
> >   media: atomisp: reorganize the code under gmin_subdev_add()
> >   media: atomisp: Prepare sensor support for ACPI PM
> >   media: atomisp: properly parse CLK PMIC on newer devices
> >   media: atomisp: fix call to g_frame_interval
> >   media: atomisp: print info if gpio0 and gpio2 were detected
> >   media: atomisp: split add from find subdev
> >   media: atomisp: place all gpio parsing together
> > 
> >  .../staging/media/atomisp/pci/atomisp_cmd.c   |   2 +-
> >  .../media/atomisp/pci/atomisp_gmin_platform.c | 393 ++++++++++++------
> >  2 files changed, 267 insertions(+), 128 deletions(-)
> > 
> > -- 
> > 2.26.2
> > 
> >   
> 



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
