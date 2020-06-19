Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD29A2003D7
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 10:27:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D98F88E3B;
	Fri, 19 Jun 2020 08:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id weJEohC30FiT; Fri, 19 Jun 2020 08:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E3A3888E16;
	Fri, 19 Jun 2020 08:27:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECDAC1BF37B
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 08:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E968A896D5
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 08:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MZ9GgaC51UPE for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 08:27:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 29267880C7
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 08:27:17 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id b27so8195076qka.4
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 01:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gHRO6u53fICxpVEP0QhHKvY/XKkf310c1oLvKRI/vuQ=;
 b=Rd8C+Aa2deIZLBQoqhRSSDJ1aEEQQJ4chyGZ6tJROToja0WjQU0vGuFdeLXJj0+Y6P
 0rs6oE7UChzpbRU99ZenQAAcsIISjoPEGMLHwNHBmVABtErAentMmxrWSnVCe9cgtDhn
 pn47NaBswHuzBtqotO5cTqzztbHMmZXBz0/SquKdT/jqYiQdy1zI+9EwulWEc4BNTazx
 gYFJc3OOPU7g2H8DsuAUiKO0iZn4k2xWviZ0ctDM89z9qzzAwtqNnD0OpqsrNWW5EyW/
 fQg7g+oAiv4ioTydeQ0KA9KY7TWESUhn4zyc1Q9BCCWm/EFwQRWv/VgYXrK7Vo5y5/gI
 BbQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gHRO6u53fICxpVEP0QhHKvY/XKkf310c1oLvKRI/vuQ=;
 b=Blv5oIadAlJ8nDqdWcLUbZYUjhjGfubvq9t5R/FuQr+aRU5LQiTIUf6banFpcaTuQz
 ivGGoNRSwqRgFHz6prtaET7Svo/Gsbg4WE7KPK4Lh2xrnpSu3L4SANl0TMPCOc0EcGgA
 kmB7w27OuUwDx/I769W7sySPeUuySM6wIjyWQ0zKZApBMEFAz4z/2MvND6/HOMTEz4D6
 JXrg++l3DQv2N5JN0HXrDhJMomoVPCiicwwM38QVahRjkgyvbX381jt4SJ45ZxOv4hgz
 aGNrqY0WkENVySL7USqKexpEaQvhA14L8vjYQFHAxcn6mfh8tlwVnmS99B9tptauhgJM
 frrw==
X-Gm-Message-State: AOAM532FuXfmGoOGfWlNFEg+F3SfoyER0K99mWnMDLQvdXYuF0YDyRSF
 9mUX7TceVG6gu1e8J5pGCCU=
X-Google-Smtp-Source: ABdhPJzBngVrHQEWjHdgpo7pKCGKg4TafzzHNdsOgG4sXtHASTuG4EtIpKHKoYyVi38p5pWUqK7elw==
X-Received: by 2002:a37:90f:: with SMTP id 15mr2357299qkj.339.1592555236064;
 Fri, 19 Jun 2020 01:27:16 -0700 (PDT)
Received: from ip-172-31-24-31.ec2.internal
 (ec2-54-234-246-66.compute-1.amazonaws.com. [54.234.246.66])
 by smtp.gmail.com with ESMTPSA id x4sm5077822qtj.50.2020.06.19.01.27.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 19 Jun 2020 01:27:15 -0700 (PDT)
Date: Fri, 19 Jun 2020 08:27:14 +0000
From: Rodolfo C Villordo <rodolfovillordo@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: gasket: replace symbolic permissions
Message-ID: <20200619082714.GA7780@ip-172-31-24-31.ec2.internal>
References: <20200601005240.6315-1-rodolfovillordo@gmail.com>
 <20200618074750.GA186463@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618074750.GA186463@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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

On Thu, Jun 18, 2020 at 09:47:50AM +0200, Greg Kroah-Hartman wrote:
> On Mon, Jun 01, 2020 at 12:52:40AM +0000, Rodolfo C. Villordo wrote:
> > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> > +               .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> > warning detected by checkpatch.pl
> > 
> > Signed-off-by: Rodolfo C. Villordo <rodolfovillordo@gmail.com>
> > ---
> >  drivers/staging/gasket/gasket_sysfs.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> > index ab5aa351d555..d5e167dfbe76 100644
> > --- a/drivers/staging/gasket/gasket_sysfs.h
> > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > @@ -71,7 +71,7 @@ struct gasket_sysfs_attribute {
> >  
> >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
> >  	{                                                                      \
> > -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> > +		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
> 
> What about using __ATTR_RO() instead?
> 

I'm not sure if __ATTR_RO() is a good match here. The
GASKET_SYSFS_RO() is invoked with different show functions across the
code. These functions don't follow the name pattern attr_name_show
used in __ATTR_RO(). Please correct me if I misunderstood anything.

### from include/linux/sysfs.h ###
#define __ATTR_RO(_name) {                                              \
        .attr   = { .name = __stringify(_name), .mode = 0444 },         \
        .show   = _name##_show,                                         \
}
###

### macro usage across the driver: ###
$ grep GASKET_SYSFS_RO drivers/staging/gasket/*
drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_page_table_entries, sysfs_show,
drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_simple_page_table_entries, sysfs_show,
drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_num_mapped_pages, sysfs_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(bar_offsets, gasket_sysfs_data_show, ATTR_BAR_OFFSETS),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(bar_sizes, gasket_sysfs_data_show, ATTR_BAR_SIZES),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(driver_version, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(framework_version, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(device_type, gasket_sysfs_data_show, ATTR_DEVICE_TYPE),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(revision, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(pci_address, gasket_sysfs_data_show, ATTR_PCI_ADDRESS),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(status, gasket_sysfs_data_show, ATTR_STATUS),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(is_device_owned, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(device_owner, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(write_open_count, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(reset_count, gasket_sysfs_data_show, ATTR_RESET_COUNT),
drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(user_mem_ranges, gasket_sysfs_data_show,
drivers/staging/gasket/gasket_interrupt.c:      GASKET_SYSFS_RO(interrupt_counts, interrupt_sysfs_show,
###

Thank you!

> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
