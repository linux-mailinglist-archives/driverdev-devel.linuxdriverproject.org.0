Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F62F68E9
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Nov 2019 13:22:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 322AD86742;
	Sun, 10 Nov 2019 12:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id poo4Wo8SVrjh; Sun, 10 Nov 2019 12:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE3318648E;
	Sun, 10 Nov 2019 12:22:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 264621BF5F8
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 12:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 20DC120360
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 12:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i--898fBWdjL for <devel@linuxdriverproject.org>;
 Sun, 10 Nov 2019 12:22:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id D2577204C1
 for <devel@driverdev.osuosl.org>; Sun, 10 Nov 2019 12:22:37 +0000 (UTC)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AF26428A46F;
 Sun, 10 Nov 2019 12:22:34 +0000 (GMT)
Date: Sun, 10 Nov 2019 13:22:32 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
Message-ID: <20191110132232.3815f1af@collabora.com>
In-Reply-To: <20191110123919.5c998839@collabora.com>
References: <20191107073521.11413-1-gerg@kernel.org>
 <20191107084007.GA1203521@kroah.com>
 <20191110123919.5c998839@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, gerg@kernel.org,
 linux-mtd@lists.infradead.org, neil@brown.name,
 linux-mediatek@lists.infradead.org, blogic@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 10 Nov 2019 12:39:19 +0100
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Thu, 7 Nov 2019 09:40:07 +0100
> Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Thu, Nov 07, 2019 at 05:35:21PM +1000, gerg@kernel.org wrote:  
> > > From: Greg Ungerer <gerg@kernel.org>
> > > 
> > > Add a driver to support the NAND flash controller of the MediaTek MT7621
> > > System-on-Chip device. (This one is the MIPS based parts from Mediatek).
> > > 
> > > This code is a re-working of the earlier patches for this hardware that
> > > have been floating around the internet for years:
> > > 
> > > https://github.com/ReclaimYourPrivacy/cloak/blob/master/target/linux/ramips/patches-3.18/0045-mtd-add-mt7621-nand-support.patch
> > > 
> > > This is a much cleaned up version, put in staging to start with.
> > > It does still have some problems, mainly that it still uses a lot of the
> > > mtd raw nand legacy support.    
> > 
> > Is that an issue?  
> 
> Well, yes that's an issue since we decided that all new drivers should
> implement ->exec_op() instead of the legacy hooks. But that would be an
> issue even if we were merging the driver in staging.
> 
> > Why not just put it in the "real" part of the kernel
> > then, if those apis are still in use?
> >   
> > > The driver not only compiles, but it works well on the small range of
> > > hardware platforms that it has been used on so far. I have been using
> > > for quite a while now, cleaning up as I get time.
> > > 
> > > So... I am looking for comments on the best approach forward with this.
> > > At least in staging it can get some more eyeballs going over it.    
> > 
> > staging will just nit-pick it to death for coding style issues, it's not
> > going to be get any major api changes/cleanups there usually.  I'd
> > recommend just merging this to the "real" part of the kernel now if it's
> > working for you.  
> 
> I agree on that point: we should merge this driver directly in the NAND
> framework after it's been reworked to implement ->exec_op() instead of

  s/framework/subsystem/

> the legacy hooks.
> 
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
