Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 161FF235292
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Aug 2020 15:13:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8399D203E5;
	Sat,  1 Aug 2020 13:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WH4yA0T9mvWf; Sat,  1 Aug 2020 13:13:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 64CD4203AD;
	Sat,  1 Aug 2020 13:13:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D0DD1BF282
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 13:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD46F203AB
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 13:13:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aPoRU21FD3Av for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 13:13:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id EB14E203A9
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 13:13:02 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 341392076A;
 Sat,  1 Aug 2020 13:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596287582;
 bh=/4onQlDCzaUFK/Z+RS1ZIvjtCTjj71c6KU35qFJyO1g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KEamH0x4S8u6xupbf9tA9j8S8W6D3HmNkcfzwBbhCro8L1TAqGQqpBu/W6RqBt7Si
 TAwMIN94oSGPIZKnvKBaFQxlc2RFyPdHm9kDkQJtW5EK+UYd02ErPGBmrjFzL0d8qG
 qa+YTfjeEFIcKbGZxWQ4vnexLM0b6rCZ8TYoaOIg=
Date: Sat, 1 Aug 2020 15:12:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ivan Safonov <insafonov@gmail.com>
Subject: Re: [PATCH] staging: r8188eu: replace rtw_netdev_priv define with
 inline function
Message-ID: <20200801131247.GA2131407@kroah.com>
References: <20200801094707.13449-1-insafonov@gmail.com>
 <20200801095108.GA2840539@kroah.com>
 <968d30fc-4e5f-b495-e986-b18b05e9a895@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <968d30fc-4e5f-b495-e986-b18b05e9a895@gmail.com>
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
Cc: devel@driverdev.osuosl.org, B K Karthik <bkkarthik@pesu.pes.edu>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 01, 2020 at 04:11:38PM +0300, Ivan Safonov wrote:
> On 8/1/20 12:51 PM, Greg Kroah-Hartman wrote:
> > On Sat, Aug 01, 2020 at 12:47:07PM +0300, Ivan Safonov wrote:
> > > The function guarantees type checking of arguments and return value.
> > > 
> > > Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> > > ---
> > >   drivers/staging/rtl8188eu/include/osdep_service.h | 6 ++++--
> > >   1 file changed, 4 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
> > > index 31d897f1d21f..e0ccafdea9cd 100644
> > > --- a/drivers/staging/rtl8188eu/include/osdep_service.h
> > > +++ b/drivers/staging/rtl8188eu/include/osdep_service.h
> > > @@ -71,8 +71,10 @@ struct rtw_netdev_priv_indicator {
> > >   };
> > >   struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv);
> > > -#define rtw_netdev_priv(netdev)					\
> > > -	(((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv)
> > > +static inline struct adapter *rtw_netdev_priv(struct net_device *dev)
> > > +{
> > > +	return (((struct rtw_netdev_priv_indicator *)netdev_priv(dev))->priv);
> > > +}
> > >   void rtw_free_netdev(struct net_device *netdev);
> > 
> > Is the cast really needed?
> 
> (struct rtw_netdev_priv_indicator *) cast needed for access to '->priv'.
> 
> The (struct adapter *) return type is a starting point for simplify
>     struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
> constructions.

Ah, sorry, missed that I thought this was a cast of netdev_priv(dev)
itself, and not the additional structure.

> > 
> > And no blank line before the next function prototype?
> 
> In v2.
> 
> > 
> > And is this really needed?  Type checking is already happening as this
> > is a "simple" macro, right?
> 
> 1. The flexibility of macros is not needed here.
> 2. The macro silently assigns ->priv to any pointer, while the function
> indicates such a compile-time error.

Ok, put that somewhere in the changelog please, saying how the existing
macro does not provide any error checking.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
