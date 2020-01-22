Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707D8144C48
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jan 2020 08:03:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A1E187B9B;
	Wed, 22 Jan 2020 07:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e4JIaQ4sydGp; Wed, 22 Jan 2020 07:03:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 343E38660A;
	Wed, 22 Jan 2020 07:03:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE58E1BF59E
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 07:03:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E70CF87A3A
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 07:03:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AN+7AblanF07 for <devel@linuxdriverproject.org>;
 Wed, 22 Jan 2020 07:03:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 536F38660A
 for <devel@driverdev.osuosl.org>; Wed, 22 Jan 2020 07:03:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F5572465B;
 Wed, 22 Jan 2020 07:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579676595;
 bh=WWkS7Yef2C7FR/b3G/YEIfSot0jkLNRI4Jm9VGMxZMg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j3ymB0g3dMkvQQ7xy1h/OPiBStKsXsJ2OvvlfwzPN52PcY7kpCgYgJ+Nyo9NuQX5x
 zdArrFTaaKQUx+FvFTvPpRNHxJlLNqIHMMBkX2VTimkB/2P5HbVD+SLeP0P9GWOl+4
 mlmRkqRzMRTeSpBFS6E9z2aGkwNG5ww5tQxMqPaQ=
Date: Wed, 22 Jan 2020 08:03:12 +0100
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Vladimir Stankovic <vladimir.stankovic@displaylink.com>
Subject: Re: staging: Add MA USB Host driver
Message-ID: <20200122070312.GB2068857@kroah.com>
References: <VI1PR10MB19659B32E563620B4D63AF1A91320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB1965A077526FE296608D5B1191320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB19658F2B6FDAD88FAA05546591320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR10MB19658F2B6FDAD88FAA05546591320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Petar Kovacevic <petar.kovacevic@displaylink.com>,
 Nikola Simic <nikola.simic@displaylink.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marko Miljkovic <marko.miljkovic@displaylink.com>,
 Stefan Lugonjic <stefan.lugonjic@displaylink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 20, 2020 at 09:30:43AM +0000, Vladimir Stankovic wrote:
> MA-USB Host driver provides USB connectivity over an available
> network, allowing host device to access remote USB devices attached
> to one or more MA USB devices (accessible via network).
> 
> This driver has been developed to enable the host to communicate
> with DislayLink products supporting MA USB protocol (MA USB device,
> in terms of MA USB Specification).
> 
> MA-USB protocol used by MA-USB Host driver has been implemented in
> accordance with MA USB Specification Release 1.0b.
> 
> This driver depends on the functions provided by DisplayLink's
> user-space driver.
> 
> Signed-off-by: Vladimir Stankovic <vladimir.stankovic@displaylink.com>

Why is this being submitted to staging and not to the "real" part of the
kernel?  You need a TODO file that lists what is left to be done to the
driver to get it merged to the proper place in the kernel tree.  Can you
please resubmit with that file added to the patch?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
