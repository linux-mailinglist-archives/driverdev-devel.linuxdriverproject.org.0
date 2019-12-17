Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDC8122C7E
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 14:06:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 39DAB20778;
	Tue, 17 Dec 2019 13:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fZz3jzF7gkdK; Tue, 17 Dec 2019 13:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 974E4204FD;
	Tue, 17 Dec 2019 13:06:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 922951BF5DA
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 13:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 529AE204FE
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 13:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Wj0BZ8pJIno
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 13:05:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E145204FD
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 13:05:50 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C547F206B7;
 Tue, 17 Dec 2019 13:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576587950;
 bh=DCtOQs7qmjzfohMPrO8A4YoK5r8VuopU5sJ/Xav91ns=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EnDJmedC9+WlNRpPBJJJCyfFL64zz+jsioTdpkNwlRIKpfpvS4iFmjY5zEZwIuG5p
 RN2g0Bw4Xe2JBxMAAXVwUuvytDw8Pp0MK8UNi8QjLJuGCdG3dSIROog/G93p8IyDpG
 /EW4tHyFPq3C0aVFlImQLgZLCIjBLNki94BJnj6M=
Date: Tue, 17 Dec 2019 14:05:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH RFC v2 7/9] staging: most: move core files out of the
 staging area
Message-ID: <20191217130548.GA3227907@kroah.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
 <1576238662-16512-8-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576238662-16512-8-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 13, 2019 at 01:04:20PM +0100, Christian Gromm wrote:
> This patch moves the core module to the /drivers/most directory
> and makes all necessary changes in order to not break the build.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>

I've applied the patches up to this one in the series, but I still have
questions about the file you are trying to move here.

It's not in this patch, but I'll just quote from the file
drivers/staging/most/core.c directly:

 * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG

You've touched this file since 2015 :)

#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

No need for this, You have drivers here, no need to use any pr_* calls,
as you always have a device structure.
Along with that, almost all of your pr_info() calls are really
errors/warnigns, so use dev_err() or dev_warn() instead please.

The one:
pr_info("registered new core component %s\n", comp->name);

Should at best be a dev_info() line, but really, you don't need to be
loud if all goes well, right?

pr_info("deregistering component %s\n", comp->name);

Should be dev_dbg().

static void release_interface(struct device *dev)
{
	pr_info("releasing interface dev %s...\n", dev_name(dev));
}

static void release_channel(struct device *dev)
{
	pr_info("releasing channel dev %s...\n", dev_name(dev));
}

How did I miss this before?

The driver core documentation used to have a line saying I was allowed
to make fun of programmers who did this, but that had to be removed :(

Anyway, this is totally wrong, first off, delete the debugging lines.
Secondly how are you really releasing anything?  You have to free the
memory here.  You can not have an "empty" release function, the driver
core requires you to actually do something here.

Same for release_most_sub() and anywhere else I missed in my review.

That's a good start, fix that up and I'll be glad to look at the code
again.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
