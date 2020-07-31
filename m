Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E73234AB5
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 20:15:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A4D7886D2;
	Fri, 31 Jul 2020 18:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ZcOh6P9I5mQ; Fri, 31 Jul 2020 18:15:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80EB8886C6;
	Fri, 31 Jul 2020 18:15:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 422341BF868
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 18:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E9D4887CA
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 18:15:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lH0kbKRE1c+M for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 18:15:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6950D887C8
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 18:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=WbtzOVCRlAfFjJFM2IifB/d+SPx9ULrVUgo17CsAxIk=; b=c1nSfus8ldaPmfvbONTg9B72M/
 5obEFm0AxYVrEpBqZ5YyQc/gp8+2RT+5eVMnSoVxp0MQTMjSO98HJhIeqUK/LHi3jbky8gJduRFIu
 Kpx5puS0FwnHYqgn08qUQfdNsMCeXO6RZ2ZiXBv4dXUqNMREKU9WxcrVSwXoN/nLj78AgDzZKD5Fv
 mtr2930HRl9Eh3I9iKbhI4YXdPXQFRco8nVzv1sfneISnZTbvKUkIhUDyv81w9k3qEfJWDu5RLIIy
 JY01QCELVFs5/SmjWnhqcLoWVPpixhQa5UcMNsC1SdIlR7SQuNOX4hab60WmSyY1THl0b2mMz0x59
 e7BWzo6w==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k1ZZG-0002Ky-Id; Fri, 31 Jul 2020 18:15:42 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id B552330066E;
 Fri, 31 Jul 2020 20:15:38 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 9865E203C0A1B; Fri, 31 Jul 2020 20:15:38 +0200 (CEST)
Date: Fri, 31 Jul 2020 20:15:38 +0200
From: peterz@infradead.org
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH] sched: Provide USF for the portable equipment.
Message-ID: <20200731181538.GB2674@hirez.programming.kicks-ass.net>
References: <cover.1596101307.git.yangdongdong@xiaomi.com>
 <1596116273-2290-1-git-send-email-contribute.kernel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1596116273-2290-1-git-send-email-contribute.kernel@gmail.com>
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
 linux-pm@vger.kernel.org, rostedt@goodmis.org, fengwei@xiaomi.com,
 taojun@xiaomi.com, dietmar.eggemann@arm.com, huangqiwu@xiaomi.com,
 gregkh@linuxfoundation.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 zhangguoquan@xiaomi.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 30, 2020 at 09:35:43PM +0800, Dongdong Yang wrote:
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
> +#endif
>  	sg_cpu->max = max;
>  	sg_cpu->bw_dl = cpu_bw_dl(rq);

NAK
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
