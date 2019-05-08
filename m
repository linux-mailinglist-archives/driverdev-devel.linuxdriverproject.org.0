Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9B317A3F
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 May 2019 15:19:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3239787FB2;
	Wed,  8 May 2019 13:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OZawlwvbd00M; Wed,  8 May 2019 13:19:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B03058632E;
	Wed,  8 May 2019 13:19:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8FCB1BF5A1
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 13:18:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A586986FFF
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 13:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id avW63IZNFcOG for <devel@linuxdriverproject.org>;
 Wed,  8 May 2019 13:18:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 21E9986FFD
 for <devel@driverdev.osuosl.org>; Wed,  8 May 2019 13:18:59 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72CF620850;
 Wed,  8 May 2019 13:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557321538;
 bh=R3TjH0YJdscasMYMZYlof8TulS7fu3leM4eKW3RkjvI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TmoJ0AL+BZaAX0RU4qiQ72Plldpus4mjIr4SdB6Um7klIduUN0lcI9hJjHn6iHzg2
 IdsKQlfLKruxXTlGhBIlhYfwgiN+JozxY2Z0yDSElIvSGv1ggxiLLDCA0Kz+5QcY9K
 USsnJL5aRGKJwejw9TuqJYviKaxl6Frf0mkRZF7s=
Date: Wed, 8 May 2019 15:18:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH 03/16] lib,treewide: add new match_string() helper/macro
Message-ID: <20190508131856.GB10138@kroah.com>
References: <20190508112842.11654-1-alexandru.ardelean@analog.com>
 <20190508112842.11654-5-alexandru.ardelean@analog.com>
 <20190508131128.GL9224@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508131128.GL9224@smile.fi.intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: linux-fbdev@vger.kernel.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org,
 alsa-devel@alsa-project.org, dri-devel@lists.freedesktop.org,
 linux-ide@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-clk@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-gpio@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 cgroups@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 08, 2019 at 04:11:28PM +0300, Andy Shevchenko wrote:
> On Wed, May 08, 2019 at 02:28:29PM +0300, Alexandru Ardelean wrote:
> > This change re-introduces `match_string()` as a macro that uses
> > ARRAY_SIZE() to compute the size of the array.
> > The macro is added in all the places that do
> > `match_string(_a, ARRAY_SIZE(_a), s)`, since the change is pretty
> > straightforward.
> 
> Can you split include/linux/ change from the rest?

That would break the build, why do you want it split out?  This makes
sense all as a single patch to me.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
