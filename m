Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DECB7F4A
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 18:40:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5833586BE0;
	Thu, 19 Sep 2019 16:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EcxTXQgyAub5; Thu, 19 Sep 2019 16:40:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42F4386BBD;
	Thu, 19 Sep 2019 16:40:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCF1E1BF3BD
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 16:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B41FC87DAA
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 16:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nMqOGz3JWhwj for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 16:40:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C67187B77
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 16:40:32 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66A5D2067B;
 Thu, 19 Sep 2019 16:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568911231;
 bh=qCz7XbvXfrl9oabTRXwqcnH8N8PB63x5aI3wL4H34mU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZS/pDHFPv7jIulCXvFILgjD0pN463LF2IKbKGWNOcgpedvny3d7f7t1aMMsvDlDkn
 f2bRxD5Te6IezM3nDftV8Jyp17HG2IDX2re+xEVryEr+jESSbktbbAi3RDaz1Teb4y
 36k5XpWwueJSOnnv/xhdqWf3Zms2VEfb83LrWp34=
Date: Thu, 19 Sep 2019 18:40:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 02/20] staging: wfx: add support for I/O access
Message-ID: <20190919164029.GA4045207@kroah.com>
References: <20190919105153.15285-1-Jerome.Pouiller@silabs.com>
 <20190919105153.15285-3-Jerome.Pouiller@silabs.com>
 <20190919163429.GB27277@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919163429.GB27277@lunn.ch>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Le Goff <David.Legoff@silabs.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 19, 2019 at 06:34:29PM +0200, Andrew Lunn wrote:
> On Thu, Sep 19, 2019 at 10:52:35AM +0000, Jerome Pouiller wrote:
> > +static int wfx_sdio_copy_from_io(void *priv, unsigned int reg_id,
> > +				 void *dst, size_t count)
> > +{
> > +	struct wfx_sdio_priv *bus = priv;
> > +	unsigned int sdio_addr = reg_id << 2;
> > +	int ret;
> > +
> > +	BUG_ON(reg_id > 7);
> 
> Hi Jerome
> 
> BUG_ON should only be used when the system is corrupted, and there is
> no alternative than to stop the machine, so it does not further
> corrupt itself. Accessing a register which does not exist is not a
> reason the kill the machine. A WARN() and a return of -EINVAL would be
> better.

dev_warn() is even better.

But that's one reason this is going into staging I guess :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
