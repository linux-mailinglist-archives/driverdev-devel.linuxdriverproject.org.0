Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81944A5C59
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 20:44:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B238687E19;
	Mon,  2 Sep 2019 18:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5sF3+h0dT-Ou; Mon,  2 Sep 2019 18:44:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3158785EA2;
	Mon,  2 Sep 2019 18:44:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 208DE1BF3E9
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 18:44:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D91D85E27
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 18:44:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8HnK2BM1OT_x for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 18:44:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80D7285DD1
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 18:44:26 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE3AC216C8;
 Mon,  2 Sep 2019 18:44:25 +0000 (UTC)
Date: Mon, 2 Sep 2019 20:44:23 +0200
From: Greg KH <greg@kroah.com>
To: Joe Perches <joe@perches.com>
Subject: Re: linux-next: Tree for Sep 2 (exfat)
Message-ID: <20190902184423.GA5697@kroah.com>
References: <20190902224310.208575dc@canb.auug.org.au>
 <cecc2af6-7ef6-29f6-569e-b591365e45ad@infradead.org>
 <20190902174631.GB31445@kroah.com>
 <13e2db80-0c89-0f36-6876-f9639f0d30ab@infradead.org>
 <f7f8f751e77578edb88c0d9888930de3f3b60670.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f7f8f751e77578edb88c0d9888930de3f3b60670.camel@perches.com>
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
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 02, 2019 at 11:11:45AM -0700, Joe Perches wrote:
> On Mon, 2019-09-02 at 11:07 -0700, Randy Dunlap wrote:
> > On 9/2/19 10:46 AM, Greg KH wrote:
> > > On Mon, Sep 02, 2019 at 10:39:39AM -0700, Randy Dunlap wrote:
> > > > On 9/2/19 5:43 AM, Stephen Rothwell wrote:
> > > > > Hi all,
> > > > > 
> > > > > News: I will only be doing 2 more releases before I leave for Kernel
> > > > > Summit (there may be some reports on Thursday, but I doubt I will have
> > > > > time to finish the full release) and then no more until Sept 30.
> > > > > 
> > > > > Changes since 20190830:
> > > > > 
> > > > 
> > > > Hi,
> > > > I am seeing lots of exfat build errors when CONFIG_BLOCK is not set/enabled.
> > > > Maybe its Kconfig should also say
> > > > 	depends on BLOCK
> > > > ?
> > > 
> > > Here's what I committed to my tree:
> > > 
> > > 
> > > From e2b880d3d1afaa5cad108c29be3e307b1917d195 Mon Sep 17 00:00:00 2001
> > > From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > Date: Mon, 2 Sep 2019 19:45:06 +0200
> > > Subject: staging: exfat: make exfat depend on BLOCK
> > > 
> > > This should fix a build error in some configurations when CONFIG_BLOCK
> > > is not selected.  Also properly set the dependancy for no FAT support at
> > > the same time.
> > > 
> > > Reported-by: Randy Dunlap <rdunlap@infradead.org>
> > > Cc: Valdis Kletnieks <valdis.kletnieks@vt.edu>
> > > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > 
> > That works. Thanks.
> > Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested
> > 
> > > ---
> > >  drivers/staging/exfat/Kconfig | 2 ++
> > >  1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/drivers/staging/exfat/Kconfig b/drivers/staging/exfat/Kconfig
> > > index f52129c67f97..290dbfc7ace1 100644
> > > --- a/drivers/staging/exfat/Kconfig
> > > +++ b/drivers/staging/exfat/Kconfig
> > > @@ -1,11 +1,13 @@
> > >  config EXFAT_FS
> > >  	tristate "exFAT fs support"
> > > +	depends on BLOCK
> > >  	select NLS
> > >  	help
> > >  	  This adds support for the exFAT file system.
> > >  
> > >  config EXFAT_DONT_MOUNT_VFAT
> > >  	bool "Prohibit mounting of fat/vfat filesysems by exFAT"
> > > +	depends on EXFAT_FS
> > >  	default y
> > >  	help
> > >  	  By default, the exFAT driver will only mount exFAT filesystems, and refuse
> 
> I think this last one is backwards and should be
> 
> config EXFAT_ALLOW_MOUNT_VFAT
> and
> default n

This is just a "bandage" for now, it should be fixed properly by ripping
out the code wherever possible and making this the default functionality
anyway.  This just keeps the code from breaking existing working systems
if users accidentally build this module.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
