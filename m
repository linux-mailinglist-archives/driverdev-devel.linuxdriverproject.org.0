Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F1E1A6826
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 16:29:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0CE12203FC;
	Mon, 13 Apr 2020 14:29:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zPMsZgOtWzxE; Mon, 13 Apr 2020 14:29:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF70120401;
	Mon, 13 Apr 2020 14:29:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 424331BF3A0
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:29:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 37EC4203EB
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:29:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4x+NUND-bSvP for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 14:29:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9519F203AB
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 14:29:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5E4C2073E;
 Mon, 13 Apr 2020 14:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586788149;
 bh=wCBcKibZmzQckIP611Z7JTeaw6ivaoQWmBaFnERJuf8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D7xmcBDqKbj3fLb/0NyLZL9NMu5wV1nVmQX50l3w78UG0qVSMq86CL9by8sxAerrs
 tK77TUcwb7KlhLNfiSUh1Mk6xPPDRPdvYVBtIAd4DHSkxdA1SXEvHdcPWCo5MzUYrS
 K+d9iSCFLOtyOwjf2Xp2Q23ISQTnCHBvwO0voBEE=
Date: Mon, 13 Apr 2020 16:29:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH v3 1/2] staging: vt6656: Use define instead of magic
 number for tx_rate
Message-ID: <20200413142907.GA3548777@kroah.com>
References: <20200407163915.7491-1-oscar.carter@gmx.com>
 <20200407163915.7491-2-oscar.carter@gmx.com>
 <20200413125633.GB3127208@kroah.com> <20200413141315.GA3101@ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413141315.GA3101@ubuntu>
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

On Mon, Apr 13, 2020 at 04:13:15PM +0200, Oscar Carter wrote:
> On Mon, Apr 13, 2020 at 02:56:33PM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Apr 07, 2020 at 06:39:14PM +0200, Oscar Carter wrote:
> > > Use the define RATE_11M present in the file "device.h" instead of the
> > > magic number 3. So the code is more clear.
> > >
> > > Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > > ---
> > >  drivers/staging/vt6656/baseband.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > This patch did not apply to my tree, please rebase and resend.
> >
> I need to rebase only this patch for this serie so, it's necessary to send all
> the serie or only this patch?

If I applied the other one, just this patch.

> If it's only this patch I need to indicate v4 in the subject or a v2 due it's
> related only with this patch?

As so many of your patches were rejected because of this, rebase them
all, and resend them all as a single patch series, so that I know what
order to apply them in and have a chance to get it right :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
