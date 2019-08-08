Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CA3860C5
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 13:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E6367880E7;
	Thu,  8 Aug 2019 11:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XVgdvKFgHYgA; Thu,  8 Aug 2019 11:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AFD587F38;
	Thu,  8 Aug 2019 11:24:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7636B1BF421
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 11:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7029385F7E
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 11:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ngX8F5xGqorb for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 11:24:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 641E085604
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 11:24:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B4030217F4;
 Thu,  8 Aug 2019 11:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565263441;
 bh=kGWv3F0MZ6VV9IXcBhJcDU1X/GIu/fiFKm60hLg1jl0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TPUlJbYE0CKDv6O2+2uWzaA2ka2pJoRB582LbPnviWR6DSUk79P/amJggh47IWOeY
 W42uHkBJJTBD/oJM+7mAzVP6LDvdTNj48qKD/8gcFvIpHMNqeP98cF5ONlZPz9SN3R
 g0i0T0FITrd17Ki8qLG3tW7+m9kDDvYsyOkk/y1A=
Date: Thu, 8 Aug 2019 13:23:58 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] MAINTAINERS: mark wusbcore and UWB as obsolete
Message-ID: <20190808112358.GA25286@kroah.com>
References: <20190806101509.GA11280@kroah.com>
 <b73f09c944625a40b2589e9bac7f8bd22a711ed3.camel@perches.com>
 <20190806113501.GA18443@kroah.com>
 <20190808092509.GA20173@kroah.com>
 <20190808094158.GA22635@kroah.com>
 <92ed89b0346a54fb06d3e08585a8d0b4175842f0.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <92ed89b0346a54fb06d3e08585a8d0b4175842f0.camel@perches.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 08, 2019 at 04:15:44AM -0700, Joe Perches wrote:
> On Thu, 2019-08-08 at 11:41 +0200, Greg Kroah-Hartman wrote:
> > On Thu, Aug 08, 2019 at 11:25:09AM +0200, Greg Kroah-Hartman wrote:
> > > Joe rightly points out that we should be using the "Obsolete" status for
> > > these two subsystems.
> > 
> > Even with that change, I don't see get_maintainers.pl tell me I
> > shouldn't be sending a patch in for this area:
> 
> Nor should you.  It's checkpatch that should warn.

Ah, wrong tool.  Yes, it does, let's see if anyone actually notices that
when sending checkpatch changes for these files in the future :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
