Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE9D20B3F4
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 16:47:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C066224BE8;
	Fri, 26 Jun 2020 14:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id up5Nh1kEsGw3; Fri, 26 Jun 2020 14:47:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 03E6E232A7;
	Fri, 26 Jun 2020 14:47:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B56C41BF3DE
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ACDE7876BF
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QZ55w81qtyQY for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 14:47:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0CA8987698
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 14:47:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72E7B2053B;
 Fri, 26 Jun 2020 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593182842;
 bh=eMZncK8eiSRxgmFvB1YKwD/xSxVgTemsMnIedQb9Ih0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b7zVpiO7xA2FIw9s2Y9fXIg1W1kqkRQm6qRWswguknf+BUEytKGJxeqgOpOmaAtSq
 gJyQWn7DUUN+ECerxBdtKvsW7bP61hbkmePT5VDaIR/WQcMai5/anJ6PrcWnPiWzkQ
 5eiwu/OKpXbweTTO5ABPvMtfb0P2x/aCVrUQv7vw=
Date: Fri, 26 Jun 2020 16:47:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH] staging: media: usbvision: removing prohibited space
 before ',' (ctx:WxW)
Message-ID: <20200626144718.GA1218319@kroah.com>
References: <20200626143205.xns6nwggskssujao@pesu-pes-edu>
 <a9efda13-4425-8cb0-5854-8421f6c14181@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a9efda13-4425-8cb0-5854-8421f6c14181@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 B K Karthik <bkkarthik@pesu.pes.edu>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 26, 2020 at 04:36:52PM +0200, Hans Verkuil wrote:
> On 26/06/2020 16:32, B K Karthik wrote:
> > fixing ERROR: space prohibited before that ',' (ctx:WxW)
> > 
> > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> 
> usbvision is another driver that is scheduled for removal by the end of the year,
> so I won't apply this patch.
> 
> > ---
> >  drivers/staging/media/usbvision/usbvision-i2c.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/usbvision/usbvision-i2c.c b/drivers/staging/media/usbvision/usbvision-i2c.c
> > index 6e4df3335b1b..010ad03c6ec1 100644
> > --- a/drivers/staging/media/usbvision/usbvision-i2c.c
> > +++ b/drivers/staging/media/usbvision/usbvision-i2c.c
> > @@ -32,7 +32,7 @@ MODULE_PARM_DESC(i2c_debug, "enable debug messages [i2c]");
> >  #define PDEBUG(level, fmt, args...) { \
> >  		if (i2c_debug & (level)) \
> >  			printk(KERN_INFO KBUILD_MODNAME ":[%s:%d] " fmt, \
> > -				__func__, __LINE__ , ## args); \
> > +				__func__, __LINE__, ## args); \
> 
> Actually, older (buggy) gcc compiler needed a space there, if memory serves.

Yes, that will break on old versions of gcc.  crazy...

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
