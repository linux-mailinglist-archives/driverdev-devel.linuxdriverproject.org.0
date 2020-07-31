Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7A52346C9
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 15:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BC7786AB1;
	Fri, 31 Jul 2020 13:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2MQ-esfX-gpg; Fri, 31 Jul 2020 13:22:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0C9C86978;
	Fri, 31 Jul 2020 13:22:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 909AC1BF27C
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 13:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C3EA87CBE
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 13:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mg2os84CXBGG for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 13:22:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6BAEE87C5B
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 13:22:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A496E21744;
 Fri, 31 Jul 2020 13:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596201740;
 bh=fSZT8j8Q56S+X8wVCP0FfOqs/yNJDKaYWLtqjNf+5kM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Le2hBFz8FZfk929djZVF90YdpLUaDO2LYKHKDoNNYI38z2Isfu3EXpllQ9gDpAEef
 LmIBmoHq9LxlDex2+0hsMssnIUcexmDjeTutM+V+DsxCQCdgLpAPRwosPHcj9jJPDz
 GtBwC47XzO6fXUT9A1v0EoltNY0QdDPWZpRLwkck=
Date: Fri, 31 Jul 2020 15:22:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v2] sched: Provide USF for the portable equipment.
Message-ID: <20200731132207.GB1712190@kroah.com>
References: <cover.1596196060.git.yangdongdong@xiaomi.com>
 <e992fea6ad249694e615640862a28346936f8844.1596196062.git.yangdongdong@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e992fea6ad249694e615640862a28346936f8844.1596196062.git.yangdongdong@xiaomi.com>
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
Cc: juri.lelli@redhat.com, peterz@infradead.org, viresh.kumar@linaro.org,
 bsegall@google.com, gulinghua@xiaomi.com, duhui@xiaomi.com,
 rocking@linux.alibaba.com, devel@driverdev.osuosl.org,
 vincent.guittot@linaro.org, tanggeliang@xiaomi.com, mingo@redhat.com,
 yangdongdong@xiaomi.com, mgorman@suse.de, linux-pm@vger.kernel.org,
 rostedt@goodmis.org, fengwei@xiaomi.com, taojun@xiaomi.com,
 dietmar.eggemann@arm.com, huangqiwu@xiaomi.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, zhangguoquan@xiaomi.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 31, 2020 at 08:46:30PM +0800, Dongdong Yang wrote:
> --- /dev/null
> +++ b/drivers/staging/fbsched/usf.c
> @@ -0,0 +1,346 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 XiaoMi Inc.
> + * Author: Yang Dongdong <yangdongdong@xiaomi.com>
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> + * See http://www.gnu.org/licenses/gpl-2.0.html for more details.

Please remove the license "boilerplate" text as you have the SPDX line
on top.

> + */
> +
> +#include <linux/module.h>
> +#include <linux/init.h>
> +#include <linux/platform_device.h>
> +#include <linux/kthread.h>
> +#include <linux/cpu.h>
> +#include <linux/sysfs.h>
> +#include <linux/kthread.h>
> +#include <linux/kobject.h>
> +#include <linux/module.h>
> +#include <linux/kernel.h>
> +#include <linux/init.h>
> +#include <linux/kallsyms.h>
> +#include <linux/debugfs.h>
> +#include <linux/fb.h>
> +#include <linux/notifier.h>
> +
> +#define BOOST_MIN_V -100
> +#define BOOST_MAX_V 100
> +#define LEVEL_TOP 3
> +
> +#define USF_TAG	"[usf_sched]"
> +
> +DEFINE_PER_CPU(unsigned long[PID_MAX_LIMIT], task_hist_nivcsw);
> +
> +static struct {
> +	bool is_sched_usf_enabled;
> +	int enable_debug;
> +	int is_screen_on;
> +	struct kobject *kobj;

A raw kobject?  For a driver?  are you _SURE_???

> +	struct dentry *debugfs_entry;

Why do you need this?

> +	usf_vdev.enable_debug = 0;
> +	usf_vdev.debugfs_entry = debugfs_create_file("usf_dbg",
> +						     0660, NULL, NULL,
> +						     &usf_dbg_fops);
> +	if (!usf_vdev.debugfs_entry)
> +		pr_err("Failed to create usf_dbg!\n");

How can that value be NULL?

There is no need to check debugfs functions for error values.

But in this case, why are you writing a single file to the root of
debugfs?  Why not put it in a directory instead?  That would be much
nicer, don't you think?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
