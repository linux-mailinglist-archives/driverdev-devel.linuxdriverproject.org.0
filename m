Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1713A502
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 13:07:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9424B87860;
	Sun,  9 Jun 2019 11:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i+kW95RdGzAB; Sun,  9 Jun 2019 11:07:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 200FE87568;
	Sun,  9 Jun 2019 11:07:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D7791BF41B
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 11:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B17F84D81
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 11:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yz5SxYgqciZn for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 11:07:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1254884CF4
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 11:07:14 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67FD92083D;
 Sun,  9 Jun 2019 11:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560078433;
 bh=BoVXawOIy+yoXWu7Sh5tusd2+DJEUCMI4+wVXPSiYoU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zmr0Iy4glMkx23TrS5wmlVRG9KaBxeJ2RSz3E+odSlQ2p1xlxRSBszUfvTM8Yp/ak
 QELHA1+QuS3NnMyptffrQ2fNyJGdbB2RSdJMiRZUrp3RWfyuXmASwXHgWL7CUVXz79
 jcI+q/tAdNlReep8A/Lste96R2UEOWD9EUVg7a38=
Date: Sun, 9 Jun 2019 13:07:11 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Geordan Neukum <gneukum1@gmail.com>
Subject: Re: [PATCH 1/2] staging: kpc2000: kpc2000_i2c: void* -> void *
Message-ID: <20190609110711.GA5666@kroah.com>
References: <1559978867-3693-1-git-send-email-haoxu.linuxkernel@gmail.com>
 <20190608134505.GA963@arch-01.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608134505.GA963@arch-01.home>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, Hao Xu <haoxu.linuxkernel@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 08, 2019 at 01:45:05PM +0000, Geordan Neukum wrote:
> On Sat, Jun 08, 2019 at 03:27:46PM +0800, Hao Xu wrote:
> > modify void* to void * for #define inb_p(a) readq((void*)a)
> > and #define outb_p(d,a) writeq(d,(void*)a)
> > 
> > Signed-off-by: Hao Xu <haoxu.linuxkernel@gmail.com>
> > ---
> >  drivers/staging/kpc2000/kpc2000_i2c.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
> > index a434dd0..de3a0c8 100644
> > --- a/drivers/staging/kpc2000/kpc2000_i2c.c
> > +++ b/drivers/staging/kpc2000/kpc2000_i2c.c
> > @@ -124,9 +124,9 @@ struct i2c_device {
> >  
> >  // FIXME!
> >  #undef inb_p
> > -#define inb_p(a) readq((void*)a)
> > +#define inb_p(a) readq((void *)a)
> >  #undef outb_p
> > -#define outb_p(d,a) writeq(d,(void*)a)
> > +#define outb_p(d,a) writeq(d,(void *)a)
> 
> Alternatively to fixing up the style here, did you consider just
> removing these two macros altogether and calling [read|write]q
> directly throughout the kpc_i2c driver (per the '//FIXME' comment)?
> 
> Unless, I'm misunderstanding something, these macros are shadowing the
> functions [in|out]b_p, which already exist in io.h. [in|out]b_p are for
> 8-bit i/o transactions and [read|write]q are for 64-bit transactions, so
> shadowing the original [in|out]b_p with something that actually does
> 64-bit transactions is probably potentially misleading here.

Yes, these should be fixed up "properly".  But I'll take the coding
style cleanups for now.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
