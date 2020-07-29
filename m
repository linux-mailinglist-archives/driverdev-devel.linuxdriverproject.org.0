Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F6223204C
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 16:27:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EBC0420416;
	Wed, 29 Jul 2020 14:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OUhyYVr1aP2y; Wed, 29 Jul 2020 14:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DCC67235A6;
	Wed, 29 Jul 2020 14:27:27 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA1D71BF5A6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A6CFB85036
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nY5jltSans6A
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:27:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 833BF8502C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:27:24 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA25C207E8;
 Wed, 29 Jul 2020 14:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596032844;
 bh=mbWpxOrfGeg3Blfb+2Q+dfsdv9VRD3Qmolpj/+v5Zh4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EPn7N7wDqtMgWWmU0STKKumCLrIeCXlLk1u5dT8Y8JGj1OqfwoGJos0P/Hg2d7LRa
 0NtuY6OF1J8zZ2eK4cEr+PlmEvn75IgPGHsogOwfDZTzAkw9j8WgT3FVCXPPuLbvCE
 ENLVuIgnMPauWdglYLfpjcLINUk3e2tKTTRpzqXM=
Date: Wed, 29 Jul 2020 16:27:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [RESEND PATCH v5] drivers: most: add USB adapter driver
Message-ID: <20200729142715.GA3343116@kroah.com>
References: <1595838646-12674-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1595838646-12674-1-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 27, 2020 at 10:30:46AM +0200, Christian Gromm wrote:
> This patch adds the usb driver source file most_usb.c and
> modifies the Makefile and Kconfig accordingly.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>

Sorry for the long delay in getting to this.

This looks good to me, but I tried to apply it to my usb tree, and of
course I get the following build error:
	error: the following would cause module name conflict:
	  drivers/staging/most/usb/most_usb.ko
	  drivers/most/most_usb.ko

So, can you just send a "rename the file" patch that I can apply against
my staging-next branch and I will take it through there so that there
are no conflicts like this?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
