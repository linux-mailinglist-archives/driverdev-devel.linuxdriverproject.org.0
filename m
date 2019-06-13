Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DA943499
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 11:21:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2AA50863A4;
	Thu, 13 Jun 2019 09:21:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JzHgjtidrTmT; Thu, 13 Jun 2019 09:21:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61DD98638F;
	Thu, 13 Jun 2019 09:21:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BF321BF314
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 291608639F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RS9mYQi42mzH
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:20:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9AD9F8638F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:20:59 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E71FF2133D;
 Thu, 13 Jun 2019 09:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560417659;
 bh=oYkjTQ53+QcKNTzPbXY2C0VK/P9/ANbbVDEMw4SSfjQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Geqvxv91MD3JlKHAOR+DrJ9dOkzWNYTbcXyAJ5hJhYrZPuoiSgMKhJG8hOUfV9zKD
 p5bVn+saw0gBPayyml+HAIzxSvDvsJ43dCxKUx7IHHDtCZfsQllxOhIrfw3jjRpqOs
 VpKUkRn8miWeCsbxW5oV4iaBT63UF1HRH13Zo/sM=
Date: Thu, 13 Jun 2019 11:20:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH 1/6] staging: kpc2000_dma: added Kconfig to enable
 asynchronous I/O.
Message-ID: <20190613092056.GA5055@kroah.com>
References: <20190611195104.4828-1-jeremy@azazel.net>
 <20190611195104.4828-2-jeremy@azazel.net>
 <20190613084531.GA4630@kroah.com>
 <20190613091305.GA4292@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613091305.GA4292@azazel.net>
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 13, 2019 at 10:13:06AM +0100, Jeremy Sowden wrote:
> On 2019-06-13, at 10:45:31 +0200, Greg KH wrote:
> > On Tue, Jun 11, 2019 at 08:50:59PM +0100, Jeremy Sowden wrote:
> > > The DMA driver has call-backs for doing asynchronous I/O which are
> > > protected by a CONFIG_ macro which is not defined.  Added a Kconfig
> > > stanza to define it.
> > >
> > > Cc: Matt Sickler <matt.sickler@daktronics.com>
> > > Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> > > ---
> > >  drivers/staging/kpc2000/Kconfig           | 8 ++++++++
> > >  drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++---
> > >  2 files changed, 11 insertions(+), 3 deletions(-)
> >
> > This patch breaks the build if you enable the new build option.  So it
> > probably should go _after_ you have fixed up the code.
> >
> > Please fix this series up and resend it.
> > Also, is aio even wanted/needed for this driver?  If it's been
> > disabled for so long, can't we just delete it if no one is using it?
> 
> Matt's recommendation was also to delete it, so I have sent a later
> patch to do so.

I somehow missed that, can you resend it please as a stand-alone patch
or series or whatever is needed?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
