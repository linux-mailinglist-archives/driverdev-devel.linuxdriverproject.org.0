Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B38E830A44A
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Feb 2021 10:23:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86BDF85FEF;
	Mon,  1 Feb 2021 09:23:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e0s59Sw7DgIr; Mon,  1 Feb 2021 09:23:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5931685FA7;
	Mon,  1 Feb 2021 09:23:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 506061BF391
 for <devel@linuxdriverproject.org>; Mon,  1 Feb 2021 09:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4CD7585FA7
 for <devel@linuxdriverproject.org>; Mon,  1 Feb 2021 09:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iQioaoz1zlIy for <devel@linuxdriverproject.org>;
 Mon,  1 Feb 2021 09:23:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D102C85DF8
 for <devel@driverdev.osuosl.org>; Mon,  1 Feb 2021 09:23:24 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1l6VQU-0002Sl-BI; Mon, 01 Feb 2021 10:23:18 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1l6VQT-0006zv-0x; Mon, 01 Feb 2021 10:23:17 +0100
Date: Mon, 1 Feb 2021 10:23:17 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: [PATCH] media: allegro-dvt: Use __packed sentence
Message-ID: <20210201092317.GB6717@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
 David Laight <David.Laight@ACULAB.COM>,
 'Emmanuel Arias' <eamanu@yaerobi.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <YBRpstkOi685uHef@debian>
 <63a4ed5c2ef54c09b2df9d6234b68711@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63a4ed5c2ef54c09b2df9d6234b68711@AcuMS.aculab.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:09:54 up 60 days, 21:36, 100 users,  load average: 0.07, 0.20,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
 'Emmanuel Arias' <eamanu@yaerobi.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 29 Jan 2021 23:54:41 +0000, David Laight wrote:
> From: Emmanuel Arias
> > Sent: 29 January 2021 20:02
> > 
> > Fix coding style using __packed sentece instead of
> > __attribute__((__packed__)).
> > 
> > Signed-off-by: Emmanuel Arias <eamanu@yaerobi.com>
> > ---
> >  drivers/staging/media/allegro-dvt/allegro-core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-
> > dvt/allegro-core.c
> > index 9f718f43282b..cee624dac61a 100644
> > --- a/drivers/staging/media/allegro-dvt/allegro-core.c
> > +++ b/drivers/staging/media/allegro-dvt/allegro-core.c
> > @@ -670,7 +670,7 @@ static ssize_t allegro_mbox_read(struct allegro_mbox *mbox,
> >  	struct {
> >  		u16 length;
> >  		u16 type;
> > -	} __attribute__ ((__packed__)) *header;
> > +	} __packed *header;
> >  	struct regmap *sram = mbox->dev->sram;
> 
> Does this actually need to be packed?
> The only reason would be if the structure could exist on a 2n+1
> boundary.

Not sure, what you mean by this.

> But that is only likely if part of some binary sequence.
> In which case I'd expect it to be marked __be or __le.

It is part of a binary sequence. It is the header of messages in a mailbox
that is used to exchange data with a co-processor (video encoder). In fact, it
should be marked as __le.

Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
