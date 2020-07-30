Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E556C233B3C
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 00:22:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA976203F9;
	Thu, 30 Jul 2020 22:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id incY05KSZzSz; Thu, 30 Jul 2020 22:22:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0AC722042A;
	Thu, 30 Jul 2020 22:22:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D5731BF2F0
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 22:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 699B9876A0
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 22:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Zk4iFVLYKto for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 22:22:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A2A1E87695
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 22:22:01 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67DCD20809;
 Thu, 30 Jul 2020 22:21:59 +0000 (UTC)
Date: Thu, 30 Jul 2020 18:21:57 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH] sched: Provide USF for the portable equipment.
Message-ID: <20200730182157.110a5cf0@oasis.local.home>
In-Reply-To: <1596116273-2290-1-git-send-email-contribute.kernel@gmail.com>
References: <cover.1596101307.git.yangdongdong@xiaomi.com>
 <1596116273-2290-1-git-send-email-contribute.kernel@gmail.com>
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
Cc: juri.lelli@redhat.com, peterz@infradead.org, viresh.kumar@linaro.org,
 bsegall@google.com, gulinghua@xiaomi.com, duhui@xiaomi.com,
 rocking@linux.alibaba.com, devel@driverdev.osuosl.org,
 vincent.guittot@linaro.org, tanggeliang@xiaomi.com, mingo@redhat.com,
 yangdongdong@xiaomi.com, mgorman@suse.de, linux-pm@vger.kernel.org,
 fengwei@xiaomi.com, taojun@xiaomi.com, dietmar.eggemann@arm.com,
 huangqiwu@xiaomi.com, gregkh@linuxfoundation.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, zhangguoquan@xiaomi.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 30 Jul 2020 21:35:43 +0800
Dongdong Yang <contribute.kernel@gmail.com> wrote:

I'll let others decide the value of this, but I have some comments.

> 
> Signed-off-by: Dongdong Yang <yangdongdong@xiaomi.com>
> Signed-off-by: Jun Tao <taojun@xiaomi.com>
> Signed-off-by: Qiwu Huang <huangqiwu@xiaomi.com>
> Signed-off-by: Geliang Tang <tanggeliang@xiaomi.com>
> Signed-off-by: Peng Wang <rocking@linux.alibaba.com>

Why all the signed-off-bys? All of you worked on it?



> +	if (evdata->data && val == FB_EVENT_BLANK) {
> +		blank = *(int *)(evdata->data);
> +
> +		switch (blank) {
> +		case FB_BLANK_POWERDOWN:
> +			usf_vdev.is_screen_on = 0;
> +			if (usf_vdev.sysctl_sched_usf_non_ux != 0)
> +				adjust_task_pred_demand =
> +				    &adjust_task_pred_demand_impl;
> +			else
> +				adjust_task_pred_demand = NULL;

So sysctl can enable and disable this?

> +
> +			break;
> +

> diff --git a/kernel/sched/cpufreq_schedutil.c b/kernel/sched/cpufreq_schedutil.c
> index 7fbaee2..7bc3429 100644
> --- a/kernel/sched/cpufreq_schedutil.c
> +++ b/kernel/sched/cpufreq_schedutil.c
> @@ -289,12 +289,21 @@ unsigned long schedutil_cpu_util(int cpu, unsigned long util_cfs,
>  	return min(max, util);
>  }
>  
> +#ifdef CONFIG_SCHED_USF
> +void (*adjust_task_pred_demand)(int cpuid, unsigned long *util,
> +	struct rq *rq) = NULL;
> +EXPORT_SYMBOL(adjust_task_pred_demand);
> +#endif
> +
>  static unsigned long sugov_get_util(struct sugov_cpu *sg_cpu)
>  {
>  	struct rq *rq = cpu_rq(sg_cpu->cpu);
>  	unsigned long util = cpu_util_cfs(rq);
>  	unsigned long max = arch_scale_cpu_capacity(sg_cpu->cpu);
> -
> +#ifdef CONFIG_SCHED_USF
> +	if (adjust_task_pred_demand)
> +		adjust_task_pred_demand(sg_cpu->cpu, &util, rq);

The above is racy. Nothing stops adjust_task_pred_demand from being
non-null at the if condition, then becoming NULL before it is called.

Instead I would have the following:

DEFINE_STATIC_KEY_FALSE(adjust_task_pred_set);

#ifdef CONFIG_SCHED_USF
void adjust_task_pred_demand(int cpuid, unsigned long *util,
				struct rq *rq);
#else
static inline void adjust_task_pred_demand(int cpuid,
		unsigned long *util, struct rq *rq)
{ }
#endif


	if (static_key_unlikely(adjust_task_pred_set))
		adjust_task_pred_demand(sg_cpu->cpu, &util, rq);

And hopefully the compiler will just remove all of it if it's not
enabled.

Then you set the static branch when you want it to be called, and do
not use a racy function pointer.

-- Steve



> +#endif
>  	sg_cpu->max = max;
>  	sg_cpu->bw_dl = cpu_bw_dl(rq);
>  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
