Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F229F2952
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 09:40:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6826E87568;
	Thu,  7 Nov 2019 08:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hT7+e4NvJcnl; Thu,  7 Nov 2019 08:40:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AD6C8738B;
	Thu,  7 Nov 2019 08:40:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF6C51BF867
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 08:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BC8B087590
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 08:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pq18KNb88Plq for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 08:40:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 90D118731E
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 08:40:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1E0C21D79;
 Thu,  7 Nov 2019 08:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573116010;
 bh=UXQJazaBfJV0zIWW7UEoQWPynSR/yhlKvrGLJ29hpro=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=omokBRfofB53Ei3yMrIzwz9Z22Rrk3t3SpYs1IPksEG+BpBfYj+fTGT/pWzSe0Ks3
 8X1yjKW9hshlFJG0yVB3Zc98K0aegYpbp+yWGQ2hAjswx6P1cLApcvNc4jaVcFeV2w
 UydpvdtPxRASerQVo0BvKeoXCBM8TaJsia3ZLpzM=
Date: Thu, 7 Nov 2019 09:40:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: gerg@kernel.org
Subject: Re: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
Message-ID: <20191107084007.GA1203521@kroah.com>
References: <20191107073521.11413-1-gerg@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107073521.11413-1-gerg@kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 linux-mtd@lists.infradead.org, neil@brown.name,
 linux-mediatek@lists.infradead.org, blogic@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 07, 2019 at 05:35:21PM +1000, gerg@kernel.org wrote:
> From: Greg Ungerer <gerg@kernel.org>
> 
> Add a driver to support the NAND flash controller of the MediaTek MT7621
> System-on-Chip device. (This one is the MIPS based parts from Mediatek).
> 
> This code is a re-working of the earlier patches for this hardware that
> have been floating around the internet for years:
> 
> https://github.com/ReclaimYourPrivacy/cloak/blob/master/target/linux/ramips/patches-3.18/0045-mtd-add-mt7621-nand-support.patch
> 
> This is a much cleaned up version, put in staging to start with.
> It does still have some problems, mainly that it still uses a lot of the
> mtd raw nand legacy support.

Is that an issue?  Why not just put it in the "real" part of the kernel
then, if those apis are still in use?

> The driver not only compiles, but it works well on the small range of
> hardware platforms that it has been used on so far. I have been using
> for quite a while now, cleaning up as I get time.
> 
> So... I am looking for comments on the best approach forward with this.
> At least in staging it can get some more eyeballs going over it.

staging will just nit-pick it to death for coding style issues, it's not
going to be get any major api changes/cleanups there usually.  I'd
recommend just merging this to the "real" part of the kernel now if it's
working for you.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
