Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 706E523C990
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 11:53:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E105584C93;
	Wed,  5 Aug 2020 09:53:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7dB7B2Lt5c8e; Wed,  5 Aug 2020 09:53:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8F3C847E5;
	Wed,  5 Aug 2020 09:53:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F06D61BF47A
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 09:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DF4DB20435
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 09:53:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xlDrD12bgEU9 for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 09:53:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by silver.osuosl.org (Postfix) with ESMTP id E7C0B203FB
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 09:53:46 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3109AD6E;
 Wed,  5 Aug 2020 02:53:46 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF4B23F93E;
 Wed,  5 Aug 2020 02:53:43 -0700 (PDT)
Date: Wed, 5 Aug 2020 10:53:41 +0100
From: Qais Yousef <qais.yousef@arm.com>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v4] sched: Provide USF for the portable equipment.
Message-ID: <20200805095341.cmoxmy47ts3ntxee@e107158-lin.cambridge.arm.com>
References: <cover.1596526941.git.yangdongdong@xiaomi.com>
 <820a185b6765d6246ac34f612faedeb35189487c.1596526941.git.yangdongdong@xiaomi.com>
 <20200804104331.6vphb2iclwz3buig@e107158-lin.cambridge.arm.com>
 <CADhdXfpxWqYEL_cWVtEAxg-3OWgVZuZ5sLzNm6G+k484kG3HRw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADhdXfpxWqYEL_cWVtEAxg-3OWgVZuZ5sLzNm6G+k484kG3HRw@mail.gmail.com>
User-Agent: NeoMutt/20171215
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
Cc: "juri.lelli@redhat.com" <juri.lelli@redhat.com>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Greg KH <gregkh@linuxfoundation.org>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 "rocking@linux.alibaba.com" <rocking@linux.alibaba.com>,
 Benjamin Segall <bsegall@google.com>, "mingo@redhat.com" <mingo@redhat.com>,
 "yangdongdong@xiaomi.com" <yangdongdong@xiaomi.com>,
 "mgorman@suse.de" <mgorman@suse.de>, Viresh Kumar <viresh.kumar@linaro.org>,
 "yanziily@xiaomi.com" <yanziily@xiaomi.com>,
 Dietmar Eggemann <Dietmar.Eggemann@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 08/05/20 03:33, Dongdong Yang wrote:
> Appreciate Qais for your above comments. I believe the clamp is very good for
> terminal devices per pid or cgroup setting. I really hope it works for the
> extended scenario, "screen off", although it has a potential side effect on
> "screen on" response because it needs to be recovered  at high level with
> latency. I set  "512" to sched_util_clamp_min and max on screen off for our
> developing device with android kernel5.4. However, it still could not
> replace sched_usf_non_ux_r from the test result as attachment. The cpufreq
> could not go down in time. 
> Screenshot at 2020-08-05 09:56:38.png

Please fix your email client so that it doesn't send in HTML. LKML will reject
HTML emails.

I can't interpret the numbers in the pictures. Can you help explain what am
I looking at?

I did see an issue with frequency not capped immediately when the system was
busy. I am still trying to debug that. I already fixed one problem related to
iowait boost not honouring uclamp requests, I will be posting a patch for this
soon. If you have IO heavy workload, then iowait boost will cause schedutil to
run at high frequency, and uclamp capping is not applied in that path.

Can you trace what happens inside uclamp_rq_util_with() when it's called from
sched_cpu_util()? The clamp should be applied quickly, so it's a bug we need to
fix. In my case I noticed if I ctrl+Z then `fg`, the cap is applied. My hands
are full to look at this soon. So if you can trace it, that'd be great.

Can you expand more on your worry for "screen on"? The only latency I see is
userspace not being able to set uclamp values quickly. But since it seems you
already can set sched_usf_non_ux_r from userspace with acceptable results, then
uclamp should be able to cover the same functionality. What am I missing?

Thanks

--
Qais Yousef
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
