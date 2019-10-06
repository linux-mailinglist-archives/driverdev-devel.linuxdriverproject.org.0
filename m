Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C515CD1B3
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 13:24:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 47D2F204BC;
	Sun,  6 Oct 2019 11:24:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3iaWJ0EkMoVZ; Sun,  6 Oct 2019 11:24:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 08EF42041E;
	Sun,  6 Oct 2019 11:24:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D9D81BF39E
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 11:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 77E5D8676A
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 11:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bC75jpiEs97x for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 11:24:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F2C9F86761
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 11:24:11 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,263,1566856800"; d="scan'208";a="321762246"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Oct 2019 13:24:08 +0200
Date: Sun, 6 Oct 2019 13:24:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: greybus: add blank line
 after declarations
In-Reply-To: <2ed3bf96312dbd9abcd626868ce84e01a066b201.camel@perches.com>
Message-ID: <alpine.DEB.2.21.1910061322070.2515@hadrien>
References: <20191005210046.27224-1-gabrielabittencourt00@gmail.com>
 <20191006095042.GA2918514@kroah.com>
 <2ed3bf96312dbd9abcd626868ce84e01a066b201.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sun, 6 Oct 2019, Joe Perches wrote:

> On Sun, 2019-10-06 at 11:50 +0200, Greg KH wrote:
> > On Sat, Oct 05, 2019 at 06:00:46PM -0300, Gabriela Bittencourt wrote:
> > > Fix CHECK: add blank line after declarations
> []
> > > diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> []
> > > @@ -24,6 +24,7 @@ struct gb_control {
> > >  	char *vendor_string;
> > >  	char *product_string;
> > >  };
> > > +
> > >  #define to_gb_control(d) container_of(d, struct gb_control, dev)
> >
> > No, the original code is "better" here, it's a common pattern despite
> > what checkpatch.pl tells you, sorry.
>
> Statistics please.
>
> I believe it's not a common pattern.

I get 464 that have a blank line before the container_of #define and 185
that have no blank line.

Of the 464 that have a blank line, 135 contain clk in the file name.

julia
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
