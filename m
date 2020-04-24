Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A49B1B78BF
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 17:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3F8AE20452;
	Fri, 24 Apr 2020 15:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tx7gALJlDnEu; Fri, 24 Apr 2020 15:02:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 90605203EB;
	Fri, 24 Apr 2020 15:01:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8BB9E1BF83E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 15:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 833CF203EB
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 15:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YOVpDUZ4dIqW
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 15:01:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id AC176203DA
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 15:01:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 122C420706;
 Fri, 24 Apr 2020 15:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587740512;
 bh=wu0LU2U6GsDDohPxBMxcw+/0sBKI3UfuMA/ow3zWmKw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZmrNnnP1Gk5KU2DHxQLsZdYp/0ecIpEeeZvQjqAhekWGtIWrwz0+9hse9E4emYufg
 Lx2URmiY8SH0nDcxCj8gHasFLJmYCdBCNpfpMiMn7ElBLFRCNf0bLuQx9IfMllzguQ
 X0r+gVid0ApvsvSbg1ZUe/aZEJmpKlSz7vemchGk=
Date: Fri, 24 Apr 2020 17:01:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH] most: core: use function subsys_initcall()
Message-ID: <20200424150150.GB607082@kroah.com>
References: <1587737535-21622-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587737535-21622-1-git-send-email-christian.gromm@microchip.com>
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

On Fri, Apr 24, 2020 at 04:12:15PM +0200, Christian Gromm wrote:
> This patch replaces function module_init() with subsys_initcall().
> It is needed to ensure that the core module of the driver is
> initialized before a component tries to register with the core. This
> leads to a NULL pointer dereference if the driver is configured as
> in-tree.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>

No "fixes:" or "Reported-by:" tags?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
