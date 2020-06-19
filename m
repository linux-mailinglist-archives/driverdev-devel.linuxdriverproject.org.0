Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 294072003F7
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 10:33:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C596D87147;
	Fri, 19 Jun 2020 08:33:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h2C8wviT6QQh; Fri, 19 Jun 2020 08:33:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9371786BCC;
	Fri, 19 Jun 2020 08:33:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 317F11BF37B
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 08:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 183122047F
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 08:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B6BdDzZ61z6G for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 08:33:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8792E20474
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 08:33:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8605120776;
 Fri, 19 Jun 2020 08:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592555587;
 bh=xCa39vg9kNjBEYkhG0pB5fRGthr4MY4uUu99DAVyKfU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VwBrs1OoYHy0uCnuLbIyPQTW0ec5FbUPeoHP6or1oMqEt0gxRb17DyC3qH8LqFF4Y
 bziggZFurrMfEVYgOGdWzt+NFunvzPqfGYj5pfb2uZriPNgfJI7DJ6wCGPxhJhKTy5
 nrw9KDmzWzx+mEL4saVOhVMeOLWPUObok9wgAl3Q=
Date: Fri, 19 Jun 2020 10:32:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rodolfo C Villordo <rodolfovillordo@gmail.com>
Subject: Re: [PATCH] staging: gasket: replace symbolic permissions
Message-ID: <20200619083224.GA473790@kroah.com>
References: <20200601005240.6315-1-rodolfovillordo@gmail.com>
 <20200618074750.GA186463@kroah.com>
 <20200619082714.GA7780@ip-172-31-24-31.ec2.internal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619082714.GA7780@ip-172-31-24-31.ec2.internal>
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
Cc: devel@driverdev.osuosl.org, Richard Yeh <rcy@google.com>,
 Todd Poynor <toddpoynor@google.com>, Rob Springer <rspringer@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 19, 2020 at 08:27:14AM +0000, Rodolfo C Villordo wrote:
> On Thu, Jun 18, 2020 at 09:47:50AM +0200, Greg Kroah-Hartman wrote:
> > On Mon, Jun 01, 2020 at 12:52:40AM +0000, Rodolfo C. Villordo wrote:
> > > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> > > +               .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> > > warning detected by checkpatch.pl
> > > 
> > > Signed-off-by: Rodolfo C. Villordo <rodolfovillordo@gmail.com>
> > > ---
> > >  drivers/staging/gasket/gasket_sysfs.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> > > index ab5aa351d555..d5e167dfbe76 100644
> > > --- a/drivers/staging/gasket/gasket_sysfs.h
> > > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > > @@ -71,7 +71,7 @@ struct gasket_sysfs_attribute {
> > >  
> > >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
> > >  	{                                                                      \
> > > -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> > > +		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
> > 
> > What about using __ATTR_RO() instead?
> > 
> 
> I'm not sure if __ATTR_RO() is a good match here. The
> GASKET_SYSFS_RO() is invoked with different show functions across the
> code. These functions don't follow the name pattern attr_name_show
> used in __ATTR_RO(). Please correct me if I misunderstood anything.
> 
> ### from include/linux/sysfs.h ###
> #define __ATTR_RO(_name) {                                              \
>         .attr   = { .name = __stringify(_name), .mode = 0444 },         \
>         .show   = _name##_show,                                         \
> }
> ###
> 
> ### macro usage across the driver: ###
> $ grep GASKET_SYSFS_RO drivers/staging/gasket/*
> drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_page_table_entries, sysfs_show,
> drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_simple_page_table_entries, sysfs_show,
> drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_num_mapped_pages, sysfs_show,
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(bar_offsets, gasket_sysfs_data_show, ATTR_BAR_OFFSETS),
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(bar_sizes, gasket_sysfs_data_show, ATTR_BAR_SIZES),
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(driver_version, gasket_sysfs_data_show,
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(framework_version, gasket_sysfs_data_show,
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(device_type, gasket_sysfs_data_show, ATTR_DEVICE_TYPE),
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(revision, gasket_sysfs_data_show,
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(pci_address, gasket_sysfs_data_show, ATTR_PCI_ADDRESS),
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(status, gasket_sysfs_data_show, ATTR_STATUS),
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(is_device_owned, gasket_sysfs_data_show,
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(device_owner, gasket_sysfs_data_show,
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(write_open_count, gasket_sysfs_data_show,
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(reset_count, gasket_sysfs_data_show, ATTR_RESET_COUNT),
> drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(user_mem_ranges, gasket_sysfs_data_show,
> drivers/staging/gasket/gasket_interrupt.c:      GASKET_SYSFS_RO(interrupt_counts, interrupt_sysfs_show,
> ###

Ugh, you are right, that's a mess.  Your original patch is fine, can you
resend it and say in the changelog why it's not ok to use __ATTR_RO()?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
