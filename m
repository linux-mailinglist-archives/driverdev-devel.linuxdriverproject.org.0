Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 425A6233EF1
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 08:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6528686A54;
	Fri, 31 Jul 2020 06:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d1l_vKka7mfh; Fri, 31 Jul 2020 06:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12DF8869EC;
	Fri, 31 Jul 2020 06:16:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0BA21BF40E
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 06:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9D160869EC
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 06:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id piVL8b6AXzGM for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 06:16:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 965FB851FA
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 06:16:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D272F20663;
 Fri, 31 Jul 2020 06:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596176207;
 bh=WHR8jRh3qw/PGsoIxzFulqDz9Zu+JVeoIc2MSsUYN/M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OI5lVO20EM3bWyyFImTT9FJvGHHPbgWeedyvuONmw7eQzwK2guodFYtmM8wMtPQo7
 84E9DviWGEsGT/vuijIg0pZsD91cb3fTYtBZzPAsf09vLA3IFwP3MyIMVuZC5x4YES
 PRf7eWSVxUIqpW41z3Nb3Tm1G6btg7r5zEwIz+Do=
Date: Fri, 31 Jul 2020 08:16:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH] sched: Provide USF for the portable equipment.
Message-ID: <20200731061634.GA1508201@kroah.com>
References: <cover.1596101307.git.yangdongdong@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1596101307.git.yangdongdong@xiaomi.com>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 30, 2020 at 09:35:42PM +0800, Dongdong Yang wrote:
> From: Dongdong Yang <yangdongdong@xiaomi.com>
> =

> This patch provides USF(User Sensitive Feedback factor)
> auxiliary cpufreq governor to support high level layer
> sysfs inodes setting for utils adjustment purpose from
> the identified scenario on portable equipment.
> Because the power consumption and UI response are more
> cared for by portable equipment=A0users. And the "screen
> off" status stands for no request from the user, however,
> the kernel is still expected to notify the user in time
> on modem, network or powerkey events occur. USF provides
> "sched_usf_non_ux_r" sysfs inode to cut down the utils
> from user space tasks according to high level scenario.
> In addition, it usually hints more cpufreq demand that
> the preemptive counts of the tasks on the cpu burst and
> over the user expecting completed time such as the ratio
> sysctl_sched_latency to sysctl_sched_min_granularity
> on "screen on" status, which more likely with more UI.
> The sysfs inodes "sched_usf_up_l0_r" and "sched_usf_down_r"
> have been provided to adjust the utils according to high
> level identified scenario to alloc the cpufreq in time.
> =

> Dongdong Yang (1):
>   sched: Provide USF for portable equipment.
> =

>  drivers/staging/Kconfig          |   2 +
>  drivers/staging/Makefile         |   1 +
>  drivers/staging/fbsched/Kconfig  |  10 ++
>  drivers/staging/fbsched/Makefile |   2 +
>  drivers/staging/fbsched/usf.c    | 351 +++++++++++++++++++++++++++++++++=
++++++
>  kernel/sched/cpufreq_schedutil.c |  11 +-
>  6 files changed, 376 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/staging/fbsched/Kconfig
>  create mode 100644 drivers/staging/fbsched/Makefile
>  create mode 100644 drivers/staging/fbsched/usf.c

For new staging drivers/code, we need a TODO file that lists what
remains to be done on the code to get it out of staging/

I don't see any good reason why this has to go to staging now, what
prevents it from being merged to the "real" part of the kernel today?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
