Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF33DD94E
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 17:17:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0BE186E00;
	Sat, 19 Oct 2019 15:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qo1z9NUqfHmr; Sat, 19 Oct 2019 15:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6392F86C80;
	Sat, 19 Oct 2019 15:17:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 650841BF302
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 15:17:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6117B2155B
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 15:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XuNW9WFOznLO for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 15:17:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by silver.osuosl.org (Postfix) with ESMTPS id A90FA20781
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 15:17:29 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,316,1566856800"; d="scan'208";a="323302512"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien)
 ([89.2.166.121])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Oct 2019 17:17:25 +0200
Date: Sat, 19 Oct 2019 17:17:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v1 1/5] staging: wfx: fix warnings
 of no space is necessary
In-Reply-To: <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
Message-ID: <alpine.DEB.2.21.1910191713480.3272@hadrien>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>
 <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sat, 19 Oct 2019, Jules Irenge wrote:

>
>
> On Sat, 19 Oct 2019, Dan Carpenter wrote:
>
> > On Sat, Oct 19, 2019 at 03:07:15PM +0100, Jules Irenge wrote:
> > > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > > index 3355183fc86c..573216b08042 100644
> > > --- a/drivers/staging/wfx/bh.c
> > > +++ b/drivers/staging/wfx/bh.c
> > > @@ -69,13 +69,13 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
> > >  	if (wfx_data_read(wdev, skb->data, alloc_len))
> > >  		goto err;
> > >
> > > -	piggyback = le16_to_cpup((u16 *) (skb->data + alloc_len - 2));
> > > +	piggyback = le16_to_cpup((u16 *)(skb->data + alloc_len - 2));
> > >  	_trace_piggyback(piggyback, false);
> > >
> > > -	hif = (struct hif_msg *) skb->data;
> > > +	hif = (struct hif_msg *)skb->data;
> > >  	WARN(hif->encrypted & 0x1, "unsupported encryption type");
> > >  	if (hif->encrypted == 0x2) {
> > > -		if (wfx_sl_decode(wdev, (void *) hif)) {
> > > +		if (wfx_sl_decode(wdev, (void *)hif)) {
> >
> > In the future you may want to go through and remove the (void *) casts.
> > It's not required here.
> >
> > > diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
> > > index f65f7d75e731..effd07957753 100644
> > > --- a/drivers/staging/wfx/bus_spi.c
> > > +++ b/drivers/staging/wfx/bus_spi.c
> > > @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
> > >  	struct wfx_spi_priv *bus = priv;
> > >  	u16 regaddr = (addr << 12) | (count / 2);
> > >  	// FIXME: use a bounce buffer
> > > -	u16 *src16 = (void *) src;
> > > +	u16 *src16 = (void *)src;
> >
> > Here we are just getting rid of the constness.  Apparently we are doing
> > that so we can modify it without GCC pointing out the bug!!  I don't
> > know the code but this seems very wrong.
> >
> Checkpatch was complaining about  space between type cast and the
> variable. I just get rid of the space. Well I don't know whether this was
> false positive one.

I think you missed the point.  It would be good to trace through the core
and try to figure out where this src value comes from.  Is it really
const?  Or is the const declaration there just to satisfy the type
checker, and is the actual data provided not const.  This function is
stored in a hwbus_ops structure.  It would be good to see what other
drivers that store a function in the same field of such a structure do,
and to see where the function is actually called (via a function pointer)
and where the argument comes from.

julia
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
