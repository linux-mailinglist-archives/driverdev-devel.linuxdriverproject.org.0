Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD0AA00E1
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 13:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DBE0D24E08;
	Wed, 28 Aug 2019 11:42:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LrjagtUEL2OZ; Wed, 28 Aug 2019 11:42:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 55AF222C44;
	Wed, 28 Aug 2019 11:42:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C5CAC1BF3BA
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 11:42:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C00342288F
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 11:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DBWlZsifMocP for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 11:42:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C3B920489
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 11:42:13 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6349422CF8;
 Wed, 28 Aug 2019 11:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566992532;
 bh=zH+ojuRhzLH8sX9tVDCQRPVIBwPVhwuPp8IQq60ItOw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mHqZGHEe5aj7RTNSG36dq7Den5hWRIKUIV+WhqBb+VYXulgJGzP1nqnowFgFCgyMk
 loKsUv7Lc3ylTVVNKxWP/UU8rUn3z9/CXZuaNfW44IDkH4Hd8GPpzsnTtt2zgJXPkF
 WqBxoWCCnP9Y4YIqjHd24WuUUfwZJsDz1Eb3bmfI=
Date: Wed, 28 Aug 2019 13:42:10 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH] staging: greybus: fix more header includes
Message-ID: <20190828114210.GB31462@kroah.com>
References: <20190828102859.13180-1-rui.silva@linaro.org>
 <20190828104726.GE13017@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828104726.GE13017@localhost>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Alex Elder <elder@kernel.org>, Rui Miguel Silva <rui.silva@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 28, 2019 at 12:47:26PM +0200, Johan Hovold wrote:
> On Wed, Aug 28, 2019 at 11:28:59AM +0100, Rui Miguel Silva wrote:
> > More headers needed to be fixed when moving greybus out of staging and
> > enabling the COMPILE_TEST option.
> > 
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> > ---
> >  include/linux/greybus/operation.h | 1 +
> >  include/linux/greybus/svc.h       | 2 ++
> >  2 files changed, 3 insertions(+)
> > 
> > diff --git a/include/linux/greybus/operation.h b/include/linux/greybus/operation.h
> > index 8ca864bba23e..bfbc56d8d863 100644
> > --- a/include/linux/greybus/operation.h
> > +++ b/include/linux/greybus/operation.h
> > @@ -15,6 +15,7 @@
> >  #include <linux/types.h>
> >  #include <linux/workqueue.h>
> >  
> > +#include "hd.h"
> 
> No need to include hd.h, you only need a forward declaration of struct
> gb_host_device.
> 
> >  struct gb_operation;
> >  
> > diff --git a/include/linux/greybus/svc.h b/include/linux/greybus/svc.h
> > index 507f8bd4e4c8..11a86504c429 100644
> > --- a/include/linux/greybus/svc.h
> > +++ b/include/linux/greybus/svc.h
> > @@ -12,6 +12,8 @@
> >  #include <linux/types.h>
> >  #include <linux/device.h>
> >  
> > +#include "greybus_protocols.h"
> 
> Same here, no need to include all the protocol definitions for struct
> gb_svc_l2_timer_cfg.

I agree with Johan, just forward declare these things and all should be
fine and much simpler.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
