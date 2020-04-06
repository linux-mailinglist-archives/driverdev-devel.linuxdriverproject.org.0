Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7985819FC27
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 19:58:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4012687E9D;
	Mon,  6 Apr 2020 17:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zqZvRcQ5-u8o; Mon,  6 Apr 2020 17:58:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBC9887C2E;
	Mon,  6 Apr 2020 17:58:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 710281BF59C
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 17:58:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6DBF787B08
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 17:58:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MmbnI0qRthkS for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 17:58:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC39087AB1
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 17:58:11 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1730D206F8;
 Mon,  6 Apr 2020 17:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586195891;
 bh=e06vrVeML9BgrogDrHrkIp58yEz5FUbz+0h5lORW6os=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X0Fr7y1LzcIEae6Qsb4GharopeCTFtdrHj4Qn6VPzfRayz6ZNT4l00fWUty2aW0g/
 +ANDIgha7SuFM59OpjHfzpBhpn8VhhGc73P3D5yrkEvpyutNBWwcuRwJ5kTz42fAa1
 8D2/Kgi9YmHFX4/sFIjHzGQYoAL3lCy5VvBr+64E=
Date: Mon, 6 Apr 2020 19:58:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH 2/3] staging: vt6656: Use define instead of magic number
 for tx_rate
Message-ID: <20200406175808.GB167424@kroah.com>
References: <20200404141400.3772-1-oscar.carter@gmx.com>
 <20200404141400.3772-3-oscar.carter@gmx.com>
 <20200406142212.GA48502@kroah.com> <20200406163835.GB3230@ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406163835.GB3230@ubuntu>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Forest Bond <forest@alittletooquiet.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 06, 2020 at 06:38:36PM +0200, Oscar Carter wrote:
> On Mon, Apr 06, 2020 at 04:22:12PM +0200, Greg Kroah-Hartman wrote:
> > On Sat, Apr 04, 2020 at 04:13:59PM +0200, Oscar Carter wrote:
> > > Use the define RATE_11M present in the file "device.h" instead of the
> > > magic number 3. So the code is more clear.
> > >
> > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > > Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > ---
> > >  drivers/staging/vt6656/baseband.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> > > index 3e4bd637849a..a785f91c1566 100644
> > > --- a/drivers/staging/vt6656/baseband.c
> > > +++ b/drivers/staging/vt6656/baseband.c
> > > @@ -24,6 +24,7 @@
> > >
> > >  #include <linux/bits.h>
> > >  #include <linux/kernel.h>
> > > +#include "device.h"
> > >  #include "mac.h"
> > >  #include "baseband.h"
> > >  #include "rf.h"
> > > @@ -141,7 +142,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
> > >
> > >  	rate = (unsigned int)vnt_frame_time[tx_rate];
> > >
> > > -	if (tx_rate <= 3) {
> > > +	if (tx_rate <= RATE_11M) {
> > >  		if (preamble_type == 1)
> > >  			preamble = 96;
> > >  		else
> > > --
> > > 2.20.1
> >
> > This doesn't apply to my tree :(
> >
> Sorry, but I don't understand what it means. This meant that I need to rebase
> this patch against your staging-next branch of your staging tree ?

Yes, and 3/3 as well, because I dropped the 1/3 patch here.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
