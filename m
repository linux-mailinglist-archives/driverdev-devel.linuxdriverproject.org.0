Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 425B818F2D9
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 11:32:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D4718869A;
	Mon, 23 Mar 2020 10:32:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nl1tCgMV8UUk; Mon, 23 Mar 2020 10:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71AEE883C2;
	Mon, 23 Mar 2020 10:32:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB1141BF375
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 10:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A1A1F228A4
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 10:32:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27RkzAIBqmKl
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 10:32:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CF29D204DD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 10:32:29 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 232AA2072E;
 Mon, 23 Mar 2020 10:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584959549;
 bh=RDo9p8zFRnijrkpWMh8n2J3sjQTIZrEnfeGk3F7Rwo0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oDmQNcIoy1okVGLCJACfbSUnDj0ZAs9JO3fizCf/dGSCM+9MmiFX5P4sgguJJmn4g
 xv/jMQ+WXotUF2Io8txr1msrsdK4igmSAzoD/DzJ6A0xbluPQsMRiqDolmjFm/027g
 Js9ApaDdswO09XDj6BrjaIHdOt4QImtxLWymMhYk=
Date: Mon, 23 Mar 2020 11:32:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH 2/4] staging: mt7621-pci: add myself as a contributor of
 the driver
Message-ID: <20200323103227.GA433808@kroah.com>
References: <20200321133624.31388-1-sergio.paracuellos@gmail.com>
 <20200321133624.31388-2-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200321133624.31388-2-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 21, 2020 at 02:36:22PM +0100, Sergio Paracuellos wrote:
> During a long time I have been cleaning and fixing this driver
> in order to use current kernel's apis and try to get it out of
> the staging area. At the end the driver is mt7621 specific and
> has been completely re-written. Hence, add myself to the header
> as a contributor of this driver.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  drivers/staging/mt7621-pci/pci-mt7621.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> index b8065b777ff6..5e80479ce653 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -13,6 +13,9 @@
>   *
>   * May 2011 Bruce Chang
>   * support RT6855/MT7620 PCIe
> + *
> + * 2018-2020 Sergio Paracuellos <sergio.paracuellos@gmail.com>
> + * Re-write the driver for SoC mt7621

That's what the maintainers file is for, and the changelog, we don't add
new items to the top of files for this, otherwise that would just be all
the kernel consists of :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
