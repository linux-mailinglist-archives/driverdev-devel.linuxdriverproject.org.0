Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AB03826B3
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 May 2021 10:19:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17AA783A57;
	Mon, 17 May 2021 08:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a5Fur3MbZWgx; Mon, 17 May 2021 08:19:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11C7683B7E;
	Mon, 17 May 2021 08:19:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 153871BF354
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 08:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1184440160
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 08:19:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JSQG_KKrklJ7 for <devel@linuxdriverproject.org>;
 Mon, 17 May 2021 08:19:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FDB5401A4
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 08:19:00 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5EFB061285;
 Mon, 17 May 2021 08:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621239539;
 bh=YMJxBbd5NomzA9GZTlbdHn9jmA9o1/GA0kk6JvG6TcU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i3lO7O3I0fIoX/Jlep8hzzOWfDTxbEVhGjTkkAoTRHC8B7gDbkw0S0fJrb0+yyh+v
 Rp6TTg/xJ/JNszezmGgpApYqgpS2gCKIbI2gj+CEQ4BZEUXT16+lFESJrpwzRRoN/3
 GiK8dq8m41/DvVO3VChcSLZzTnrsxQ4Rm0VOY72U=
Date: Mon, 17 May 2021 10:18:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 00/17] Add an experimental driver for Intel NUC leds
Message-ID: <YKIm8TNJfXIMFl+W@kroah.com>
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1621161037.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-staging@lists.linux.dev,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 16, 2021 at 12:53:28PM +0200, Mauro Carvalho Chehab wrote:
> Hi Greg,
> 
> This series add support for the LEDs found at Intel NUCs since
> NUC version 6.
> 
> On several NUC models, the function of the LEDs are programmable,
> which allow them to indicate several different hardware events.
> 
> They can even be programmed to represent an userspace-driven event.
> 
> Some models come with single colored or dual-colored LEDs, but
> high end models have RGB LEDs.
> 
> Programming them can ether be done via BIOS or by the OS.
> 
> There are 3 different API types, and there is already some OOT
> drivers that were written to support them, using procfs, each
> one using a different (and IMO confusing) API.
> 
> After looking at the existing drivers and not liking the uAPI
> interfaces there, I opted to write a new driver from scratch,
> unifying support for all different versions and using sysfs
> via the leds class.

Just do this the "right way" and not add it to staging first.  Just use
the existing LED class apis and all should be fine, no need for doing
anything unusual here.

thanks,m

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
