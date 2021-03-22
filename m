Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B011343F4F
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 12:12:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD6E482948;
	Mon, 22 Mar 2021 11:12:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8WxlsUBfRxnA; Mon, 22 Mar 2021 11:12:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12ADE827B1;
	Mon, 22 Mar 2021 11:12:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D96471BF398
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 11:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C83ED402AB
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 11:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PFKDMQk_BHQC for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 11:11:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BB2E4022D
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 11:11:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C3326192E;
 Mon, 22 Mar 2021 11:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616411513;
 bh=0CN0X34xkIfwT4nyg0xZ77hwCD6IbLh1oX9HfmB0giY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Sr1cvS6ZEd8qQWkOHNT+0H/fM1D/RwxUR2H4SFMhsuWTEzbP3a7/ZYh7X/XUwZrd0
 Izw5ViLWfVpwKsdWUgpqmFelpFm15jo8gAsjQW9bZ1qMVncn0QOhXfi4uXQpuNHOIO
 TIg3RzO9zH6FK0Gg0Aml2zEXZBHLzzxGxsF9mY5Y=
Date: Mon, 22 Mar 2021 12:11:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Eli Billauer <eli.billauer@gmail.com>
Subject: Re: [PATCH v4 1/2] char: xillybus: Move class-related functions to
 new xillybus_class.c
Message-ID: <YFh7dlY9cntgoLXD@kroah.com>
References: <20210311095033.20956-1-eli.billauer@gmail.com>
 <20210311095033.20956-2-eli.billauer@gmail.com>
 <YFc65bvAN3/ZNsww@kroah.com> <6058792C.90801@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6058792C.90801@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org, arnd@arndb.de,
 linux-kernel@vger.kernel.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 01:02:04PM +0200, Eli Billauer wrote:
> On 21/03/21 14:24, Greg KH wrote:
> > > +config XILLYBUS_CLASS
> > > >  +	tristate
> > > >  +
> > > >    config XILLYBUS
> > > >    	tristate "Xillybus generic FPGA interface"
> > > >    	depends on PCI || OF
> > > >    	select CRC32
> > > >  +	select XILLYBUS_CLASS
> > depends on, do not select.
> > 
> XILLYBUS and XILLYBUS_PCIE are currently enabled as M in several Linux
> distributions. Making them depend on, rather than select XILLYBUS_CLASS is
> likely to disable the driver in those distributions.

That's not an issue here, depends-on will allow those distros to also
enable this option.

But wait, why is this a separate option at all?  Shouldn't the class
code just be part of the "core" XILLYBUS code anyway?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
