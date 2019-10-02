Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267B8C8EA1
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 18:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF08987EA9;
	Wed,  2 Oct 2019 16:42:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ld-UllfCsUq5; Wed,  2 Oct 2019 16:42:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4992F87E75;
	Wed,  2 Oct 2019 16:42:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7388C1BF5B4
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 16:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70DAD203CE
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 16:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ve6TbCm2285l for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 16:42:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A93EC20387
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 16:42:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA07A21848;
 Wed,  2 Oct 2019 16:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570034530;
 bh=+GvdqKLdJALo2p5Pa+6RnxgCWX4K+UJRXPkY+UvcGZw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=meka3ZSLyUApfmBUEjF2hlHv1pXpzYI5TjezHJ+eg31mq+EwCxw0AjyGVn1nuGkBt
 RgYskIUgQLopV3062FLyyveDefdQLedC5NfQ68UDUDYZXiC0BLIG6MFhY+89nwr0Im
 OD2rb557Cysne+pX7fqMprPnmGR2V+Dy9ODqEZ6k=
Date: Wed, 2 Oct 2019 18:42:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 02/20] staging: wfx: add support for I/O access
Message-ID: <20191002164207.GA1758310@kroah.com>
References: <20190919105153.15285-1-Jerome.Pouiller@silabs.com>
 <20190919105153.15285-3-Jerome.Pouiller@silabs.com>
 <20190919163429.GB27277@lunn.ch> <4024590.nSQgSsaaFe@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4024590.nSQgSsaaFe@pc-42>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Le Goff <David.Legoff@silabs.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 02, 2019 at 04:29:09PM +0000, Jerome Pouiller wrote:
> On Thursday 19 September 2019 18:34:48 CEST Andrew Lunn wrote:
> > On Thu, Sep 19, 2019 at 10:52:35AM +0000, Jerome Pouiller wrote:
> > > +static int wfx_sdio_copy_from_io(void *priv, unsigned int reg_id,
> > > +                              void *dst, size_t count)
> > > +{
> > > +     struct wfx_sdio_priv *bus = priv;
> > > +     unsigned int sdio_addr = reg_id << 2;
> > > +     int ret;
> > > +
> > > +     BUG_ON(reg_id > 7);
> > 
> > Hi Jerome
> > 
> > BUG_ON should only be used when the system is corrupted, and there is
> > no alternative than to stop the machine, so it does not further
> > corrupt itself. Accessing a register which does not exist is not a
> > reason the kill the machine. A WARN() and a return of -EINVAL would be
> > better.
> 
> Hi Andrew,
> 
> I did not forget your suggestion. However, if everyone is agree with that, I'd 
> prefer to address it in a next pull request. Indeed, I'd prefer to keep this 
> version in sync with version 2.3.1 published on github.

Ugh, you aren't doing development outside of the kernel tree and
expecting things to stay in sync somehow are you?  That way lies madness
and a sure way to get me to just delete the staging driver.  Just work
on it in-tree please.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
