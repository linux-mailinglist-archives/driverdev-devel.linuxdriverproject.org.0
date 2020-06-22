Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 293E6203065
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 09:13:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 111ED86B76;
	Mon, 22 Jun 2020 07:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VaFopsWGcYWh; Mon, 22 Jun 2020 07:13:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5AF4864B5;
	Mon, 22 Jun 2020 07:13:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5B181BF314
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 07:13:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DBCB788087
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 07:13:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ORaJqjR2c31T for <devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 07:13:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 812FD88070
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 07:13:16 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id d27so11913931qtg.4
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 00:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WHNU4BqPOMoXAHyrLfd9lVnT4NBoEXCk4Mpzmq7GhX4=;
 b=ApgCSBjR6KQwE9jwA6OVhMb5LjAvrIIVbWtH2r+NSsPAIXg4DLiEBreZm6lm4B6UBV
 n5lD/FpyiEaDFviQ125vK/eomoSciBK3CF4PV8bm3CUknheVfozZG7Kuc5ErxXRPLvOd
 oYLi00zgbo3fCdOT9CEZMq2zvSyDGacfoRVkDXEGraFScyvYCc0QwrMZEtuqAaR2IWqf
 vtvlh2qfyfCeXFRetIisMTQnGqNfZX7fp3+iH44i6YHHH1lQLERAQtvLZX1Zg6UePggo
 8Jte5N4+1eendOw4eEK1CEdzN+5bv7NElo+MDzS0UmryKDMrytionhqoIfAVsPn9ltTe
 kttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WHNU4BqPOMoXAHyrLfd9lVnT4NBoEXCk4Mpzmq7GhX4=;
 b=dGD3XG7/w72+9NF8rF0T8ufkWRH8vOWnH/IXSGWvW0/dALns3aaiHWs58CVUS96qah
 gz8a/d4jCUuYzTjAgXoKXJd/GAuFh02cT94IitkAteeCUtTc3VOiR+zV5KT+7gR23CvI
 VK1dMtjxj1vUo9N4zrVYJUDGb+sokyBMSnYPpkDbjA2w74jyJCIDEaj4wZi200y7uGZk
 JST7GEmt7rOpy7/zEJCNI21FGladnzIj3ET4ONFim523U+vflSpMD9bdsVmm6v7ZpZE9
 IB6DHGyK6IxTbsiMjO0lKspJOsaHcmlZwhN2b+EqkQ4oxR5tB5477kgUFRLQCtGq63iz
 JejA==
X-Gm-Message-State: AOAM5314VTchIe0ufmzKc+JiFXjkPL1K5Geg0Yqszzu82XUf9MLUNff7
 lkMdBySLyAGe5S0VvHclDk4=
X-Google-Smtp-Source: ABdhPJwqlbRRjNacvHiDV4+FkmTyXT24Nd7dcjG7phBqXx+I/U8tIYUagKgxAs7zN/p290t4cVfCZg==
X-Received: by 2002:aed:3987:: with SMTP id m7mr13159266qte.220.1592809995360; 
 Mon, 22 Jun 2020 00:13:15 -0700 (PDT)
Received: from ip-172-31-24-31.ec2.internal
 (ec2-54-234-246-66.compute-1.amazonaws.com. [54.234.246.66])
 by smtp.gmail.com with ESMTPSA id h52sm5645607qtb.88.2020.06.22.00.13.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 22 Jun 2020 00:13:14 -0700 (PDT)
Date: Mon, 22 Jun 2020 07:13:13 +0000
From: Rodolfo C Villordo <rodolfovillordo@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: gasket: replace symbolic permissions
Message-ID: <20200622071313.GA11977@ip-172-31-24-31.ec2.internal>
References: <20200601005240.6315-1-rodolfovillordo@gmail.com>
 <20200618074750.GA186463@kroah.com>
 <20200619082714.GA7780@ip-172-31-24-31.ec2.internal>
 <20200619083224.GA473790@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619083224.GA473790@kroah.com>
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

On Fri, Jun 19, 2020 at 10:32:24AM +0200, Greg Kroah-Hartman wrote:
> On Fri, Jun 19, 2020 at 08:27:14AM +0000, Rodolfo C Villordo wrote:
> > On Thu, Jun 18, 2020 at 09:47:50AM +0200, Greg Kroah-Hartman wrote:
> > > On Mon, Jun 01, 2020 at 12:52:40AM +0000, Rodolfo C. Villordo wrote:
> > > > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> > > > +               .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> > > > warning detected by checkpatch.pl
> > > > 
> > > > Signed-off-by: Rodolfo C. Villordo <rodolfovillordo@gmail.com>
> > > > ---
> > > >  drivers/staging/gasket/gasket_sysfs.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> > > > index ab5aa351d555..d5e167dfbe76 100644
> > > > --- a/drivers/staging/gasket/gasket_sysfs.h
> > > > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > > > @@ -71,7 +71,7 @@ struct gasket_sysfs_attribute {
> > > >  
> > > >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
> > > >  	{                                                                      \
> > > > -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> > > > +		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
> > > 
> > > What about using __ATTR_RO() instead?
> > > 
> > 
> > I'm not sure if __ATTR_RO() is a good match here. The
> > GASKET_SYSFS_RO() is invoked with different show functions across the
> > code. These functions don't follow the name pattern attr_name_show
> > used in __ATTR_RO(). Please correct me if I misunderstood anything.
> > 
> > ### from include/linux/sysfs.h ###
> > #define __ATTR_RO(_name) {                                              \
> >         .attr   = { .name = __stringify(_name), .mode = 0444 },         \
> >         .show   = _name##_show,                                         \
> > }
> > ###
> > 
> > ### macro usage across the driver: ###
> > $ grep GASKET_SYSFS_RO drivers/staging/gasket/*
> > drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_page_table_entries, sysfs_show,
> > drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_simple_page_table_entries, sysfs_show,
> > drivers/staging/gasket/apex_driver.c:   GASKET_SYSFS_RO(node_0_num_mapped_pages, sysfs_show,
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(bar_offsets, gasket_sysfs_data_show, ATTR_BAR_OFFSETS),
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(bar_sizes, gasket_sysfs_data_show, ATTR_BAR_SIZES),
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(driver_version, gasket_sysfs_data_show,
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(framework_version, gasket_sysfs_data_show,
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(device_type, gasket_sysfs_data_show, ATTR_DEVICE_TYPE),
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(revision, gasket_sysfs_data_show,
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(pci_address, gasket_sysfs_data_show, ATTR_PCI_ADDRESS),
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(status, gasket_sysfs_data_show, ATTR_STATUS),
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(is_device_owned, gasket_sysfs_data_show,
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(device_owner, gasket_sysfs_data_show,
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(write_open_count, gasket_sysfs_data_show,
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(reset_count, gasket_sysfs_data_show, ATTR_RESET_COUNT),
> > drivers/staging/gasket/gasket_core.c:   GASKET_SYSFS_RO(user_mem_ranges, gasket_sysfs_data_show,
> > drivers/staging/gasket/gasket_interrupt.c:      GASKET_SYSFS_RO(interrupt_counts, interrupt_sysfs_show,
> > ###
> 
> Ugh, you are right, that's a mess.  Your original patch is fine, can you
> resend it and say in the changelog why it's not ok to use __ATTR_RO()?
> 
Sure, doing it now.

Thanks

> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
