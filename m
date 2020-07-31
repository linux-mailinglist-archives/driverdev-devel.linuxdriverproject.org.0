Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C879C234C81
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 22:50:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 77B052153B;
	Fri, 31 Jul 2020 20:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fq+vTY8khCyT; Fri, 31 Jul 2020 20:50:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 77B5820534;
	Fri, 31 Jul 2020 20:50:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68B041BF4DB
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 20:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6548886A47
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 20:50:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KXyenAHzl3Ne for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 20:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 78F438629C
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 20:50:27 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50178208E4;
 Fri, 31 Jul 2020 20:50:25 +0000 (UTC)
Date: Fri, 31 Jul 2020 16:50:23 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: peterz@infradead.org
Subject: Re: [PATCH] sched: Provide USF for the portable equipment.
Message-ID: <20200731165023.11eb5d5b@oasis.local.home>
In-Reply-To: <20200731181538.GB2674@hirez.programming.kicks-ass.net>
References: <cover.1596101307.git.yangdongdong@xiaomi.com>
 <1596116273-2290-1-git-send-email-contribute.kernel@gmail.com>
 <20200731181538.GB2674@hirez.programming.kicks-ass.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: juri.lelli@redhat.com, viresh.kumar@linaro.org, bsegall@google.com,
 gulinghua@xiaomi.com, duhui@xiaomi.com, rocking@linux.alibaba.com,
 devel@driverdev.osuosl.org, vincent.guittot@linaro.org, tanggeliang@xiaomi.com,
 mingo@redhat.com, yangdongdong@xiaomi.com, mgorman@suse.de,
 linux-pm@vger.kernel.org, fengwei@xiaomi.com,
 Dongdong Yang <contribute.kernel@gmail.com>, dietmar.eggemann@arm.com,
 huangqiwu@xiaomi.com, gregkh@linuxfoundation.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, zhangguoquan@xiaomi.com, taojun@xiaomi.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 31 Jul 2020 20:15:38 +0200
peterz@infradead.org wrote:

> On Thu, Jul 30, 2020 at 09:35:43PM +0800, Dongdong Yang wrote:
> > diff --git a/kernel/sched/cpufreq_schedutil.c b/kernel/sched/cpufreq_schedutil.c
> > index 7fbaee2..7bc3429 100644
> > --- a/kernel/sched/cpufreq_schedutil.c
> > +++ b/kernel/sched/cpufreq_schedutil.c
> > @@ -289,12 +289,21 @@ unsigned long schedutil_cpu_util(int cpu, unsigned long util_cfs,
> >  	return min(max, util);
> >  }
> >  
> > +#ifdef CONFIG_SCHED_USF
> > +void (*adjust_task_pred_demand)(int cpuid, unsigned long *util,
> > +	struct rq *rq) = NULL;
> > +EXPORT_SYMBOL(adjust_task_pred_demand);
> > +#endif
> > +
> >  static unsigned long sugov_get_util(struct sugov_cpu *sg_cpu)
> >  {
> >  	struct rq *rq = cpu_rq(sg_cpu->cpu);
> >  	unsigned long util = cpu_util_cfs(rq);
> >  	unsigned long max = arch_scale_cpu_capacity(sg_cpu->cpu);
> > -
> > +#ifdef CONFIG_SCHED_USF
> > +	if (adjust_task_pred_demand)
> > +		adjust_task_pred_demand(sg_cpu->cpu, &util, rq);
> > +#endif
> >  	sg_cpu->max = max;
> >  	sg_cpu->bw_dl = cpu_bw_dl(rq);  
> 
> NAK

Peter,

It's more informative if you include rational with a NAK.

-- Steve

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
