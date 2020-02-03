Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E094E1503CD
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 11:04:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A99587804;
	Mon,  3 Feb 2020 10:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BGkpiJ0ktHbS; Mon,  3 Feb 2020 10:04:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AF6487553;
	Mon,  3 Feb 2020 10:04:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B23B1BF2B0
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 10:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6798020242
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 10:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRhsQwmKqg8D for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 10:03:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C68220115
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 10:03:59 +0000 (UTC)
Received: from localhost (unknown [104.132.45.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E9DF20661;
 Mon,  3 Feb 2020 10:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580724239;
 bh=HE3dTblfyQ8uQoBKjunFI7+IqlZYwXB7u32CZMMqjnY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ogCTfLavVHI0mI7mX1RfggFNTW2gvgHlxjXeapTqU1ybHzAlIeQ2kxmMGYq4cAC1n
 VukpmQY+ncKfzY6H1Ezz1KOFdqlplhnTb+RHzcQ5ETBT3t7h+KRbwalrlFBaAbCRJ+
 WVnHMfgtWO4AO0RQ3PiBUqC5/TZgS8yPHbHDHXeA=
Date: Mon, 3 Feb 2020 10:03:56 +0000
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Subject: Re: fbtft: 5 years in staging
Message-ID: <20200203100356.GB3056136@kroah.com>
References: <a6cef26c-0f4b-47f0-d249-71f53891526b@tronnes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6cef26c-0f4b-47f0-d249-71f53891526b@tronnes.org>
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
Cc: OSUOSL Drivers <devel@driverdev.osuosl.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 02, 2020 at 04:41:54PM +0100, Noralf Tr=F8nnes wrote:
> Hi,
> =

> Since I'm the original author of fbtft I thought I'd highlight a couple
> of issues that's probably not well known.
> =

> Right after fbtft was added, fbdev was closed for new drivers[1] and
> the fbdev maintainer wanted to remove fbtft as a consequence of that
> decision, but Greg KH said he'd keep fbtft drivers in staging
> "until a matching DRM driver is present in the tree"[2].

<snip>

Thanks for the great summary, much appreciated.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
