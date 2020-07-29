Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FF723211C
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 16:57:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 630FA88329;
	Wed, 29 Jul 2020 14:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WTj5oUiLUGn0; Wed, 29 Jul 2020 14:57:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F50F88300;
	Wed, 29 Jul 2020 14:57:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3B871BF331
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A065A885D9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v2tF1Qxo7ZkU
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:57:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 71F5C8843A
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:57:51 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6FEA20829;
 Wed, 29 Jul 2020 14:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596034671;
 bh=PetF+YxL9uyJxluGUGwLtyh7dr4mJSsSpbz6SvwkKtY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t4pcc1G8ggkv5bkZYS2j0kZxY4h9eKsaxlx8wSdyt8hQSx6FxQYNIykr4lrC0/vkE
 axbLful3b+kMIl7XHK5y512+mTydNyfoQh0ULYlCQxUhM35lGC85f0Xp78xNGagU03
 hbHLFzGeMZcI0nBfQE/3XIGEbYs2WnN67uCRlXOI=
Date: Wed, 29 Jul 2020 16:57:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [RESEND PATCH v5] drivers: most: add USB adapter driver
Message-ID: <20200729145741.GA3501473@kroah.com>
References: <1595838646-12674-1-git-send-email-christian.gromm@microchip.com>
 <20200729142715.GA3343116@kroah.com>
 <799deccc9cd874a2f36bbe93f9b880eea018197f.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <799deccc9cd874a2f36bbe93f9b880eea018197f.camel@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 29, 2020 at 02:53:29PM +0000, Christian.Gromm@microchip.com wrote:
> On Wed, 2020-07-29 at 16:27 +0200, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Mon, Jul 27, 2020 at 10:30:46AM +0200, Christian Gromm wrote:
> > > This patch adds the usb driver source file most_usb.c and
> > > modifies the Makefile and Kconfig accordingly.
> > > 
> > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > 
> > Sorry for the long delay in getting to this.
> > 
> > This looks good to me, but I tried to apply it to my usb tree, and of
> > course I get the following build error:
> >         error: the following would cause module name conflict:
> >           drivers/staging/most/usb/most_usb.ko
> >           drivers/most/most_usb.ko
> > 
> > So, can you just send a "rename the file" patch that I can apply
> > against
> > my staging-next branch and I will take it through there so that there
> > are no conflicts like this?
> 
> Are you talking about (1) a patch that just renames the most_usb.ko
> file located at drivers/staging/most/usb/ or (2) a patch for the
> Makefile in the staging tree, so the Kbuild system creates a new
> kernel object in this branch with a different name?

(1) is easiest, do it all at once :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
