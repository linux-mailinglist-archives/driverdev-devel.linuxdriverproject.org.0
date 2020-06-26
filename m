Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 780A120B568
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 17:56:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DEBC687EB1;
	Fri, 26 Jun 2020 15:56:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2QCI-f0zgek; Fri, 26 Jun 2020 15:56:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9312787E94;
	Fri, 26 Jun 2020 15:56:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B110F1BF295
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 98888204B6
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 21Ia+LU1F9So for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 15:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A64920033
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 15:56:05 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 544C1204EC;
 Fri, 26 Jun 2020 15:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593186964;
 bh=6IUg7SRx5RQHGMSi/Bki4tPWOaf3FpX8aR4DD0ku4s0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KjN8HAI7QAh00wP42xFh59WmNvd0glCw8A5ldDxHOHEthKS6FZUspz2XSH+2lMjG9
 kLLS8HGlbmbLg2vmjyMSIlS13b1UO/ZF5pBZG5oPgXkKDVLP5X6L3anx+L5p2RGBbT
 ltrG5qaj3niY62dCmMybcDTxMgWW0+aGHKbYmj7g=
Date: Fri, 26 Jun 2020 17:56:00 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH 0/7] Some atomisp fixes and improvements
Message-ID: <20200626175600.4b49e0f7@coco.lan>
In-Reply-To: <20200626175216.7955c374@coco.lan>
References: <cover.1593180146.git.mchehab+huawei@kernel.org>
 <20200626150021.GY3703480@smile.fi.intel.com>
 <20200626175216.7955c374@coco.lan>
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

Em Fri, 26 Jun 2020 17:52:16 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> Em Fri, 26 Jun 2020 18:00:21 +0300
> Andy Shevchenko <andriy.shevchenko@linux.intel.com> escreveu:
> 
> > On Fri, Jun 26, 2020 at 04:04:52PM +0200, Mauro Carvalho Chehab wrote:
> > > Those patches are meant to improve device detection by the atomisp driver,
> > > relying on ACPI bios when possible.
> > > 
> > > It also adds a basis for using ACPI PM, but only if the DSDT tables have
> > > a description about how to turn on the resources needed by the cameras.
> > > 
> > > At least on the device I'm using for tests, this is not the case.  
> > 
> > Is this in your experimental tree? 
> 
> Yes. 
> 
> > I'll rebase mine on top and test.
> > After I will send the rest from my series and give a tag to this.
> 
> It would be helpful if you could test removing the DMI match table from
> your board. If your device has a DSDT table close to the one I have, the
> new code may be able to get everything from DSDT.

Err... I spoke too soon... looking on the logs from your 00/15, it 
seems that your device's DSDT is indeed different:

	[  116.401267] ACPI: \: failed to evaluate _DSM (0x1001)

If possible, could you please send me (could be in priv) a copy of your
DSDT?

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
