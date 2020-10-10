Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D32F328A068
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 14:39:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87C498704F;
	Sat, 10 Oct 2020 12:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oTYW36GcdqhZ; Sat, 10 Oct 2020 12:39:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 365F187053;
	Sat, 10 Oct 2020 12:39:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 346041BF27E
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 12:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1214420487
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 12:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QNrOSlTQeIK6 for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 12:39:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 551372047D
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 12:39:51 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61BD62222E;
 Sat, 10 Oct 2020 12:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602333590;
 bh=8kVjcuFRI46rDQajLnlADqQP7xJM+Czh0KbJDee7LoA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mvp7/XeSD/1zsA7y97uFXHjAj3MEnPctdDpxkMxYRg+ipmeaDMH7fVmxYneH3lufn
 qVXqoBT/yUbPRhA+iVPIo7JCnWi1V/ysegwsYQEHhKsI7fa4wdmOJpatDqnPjJWv4/
 zrZ5HfwcCg9u6pog2IRHbFgjdplTcmLoI2hvPcuA=
Date: Sat, 10 Oct 2020 14:40:34 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 3/8] staging: wfx: standardize the error when vif does
 not exist
Message-ID: <20201010124034.GA1701199@kroah.com>
References: <20201009171307.864608-1-Jerome.Pouiller@silabs.com>
 <20201009171307.864608-4-Jerome.Pouiller@silabs.com>
 <87zh4vz0xs.fsf@codeaurora.org> <2632043.z0MBYUB4Ha@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2632043.z0MBYUB4Ha@pc-42>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 10, 2020 at 02:22:13PM +0200, J=E9r=F4me Pouiller wrote:
> On Friday 9 October 2020 20:52:47 CEST Kalle Valo wrote:
> > Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> > =

> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >
> > > Smatch complains:
> > >
> > >    drivers/staging/wfx/hif_rx.c:177 hif_scan_complete_indication() wa=
rn: potential NULL parameter dereference 'wvif'
> > >    drivers/staging/wfx/data_tx.c:576 wfx_flush() warn: potential NULL=
 parameter dereference 'wvif'
> > >
> > > Indeed, if the vif id returned by the device does not exist anymore,
> > > wdev_to_wvif() could return NULL.
> > >
> > > In add, the error is not handled uniformly in the code, sometime a
> > > WARN() is displayed but code continue, sometime a dev_warn() is
> > > displayed, sometime it is just not tested, ...
> > >
> > > This patch standardize that.
> > >
> > > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > > ---
> > >  drivers/staging/wfx/data_tx.c |  5 ++++-
> > >  drivers/staging/wfx/hif_rx.c  | 34 ++++++++++++++++++++++++----------
> > >  drivers/staging/wfx/sta.c     |  4 ++++
> > >  3 files changed, 32 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data=
_tx.c
> > > index b4d5dd3d2d23..8db0be08daf8 100644
> > > --- a/drivers/staging/wfx/data_tx.c
> > > +++ b/drivers/staging/wfx/data_tx.c
> > > @@ -431,7 +431,10 @@ static void wfx_skb_dtor(struct wfx_vif *wvif, s=
truct sk_buff *skb)
> > >                             sizeof(struct hif_req_tx) +
> > >                             req->fc_offset;
> > >
> > > -     WARN_ON(!wvif);
> > > +     if (!wvif) {
> > > +             pr_warn("%s: vif associated with the skb does not exist=
 anymore\n", __func__);
> > > +             return;
> > > +     }
> > =

> > I'm not really a fan of using function names in warning or error
> > messages as it clutters the log. In debug messages I think they are ok.
> =

> In the initial code, I used WARN() that far more clutters the log (I
> have stated that a backtrace won't provide any useful information, so
> pr_warn() was better suited).
> =

> In add, in my mind, these warnings are debug messages. If they appears,
> the user should probably report a bug.
> =

> Finally, in this patch, I use the same message several times (ok, not
> this particular one). So the function name is a way to differentiate
> them.

You should use dev_*() for these, that way you can properly determine
the exact device as well.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
