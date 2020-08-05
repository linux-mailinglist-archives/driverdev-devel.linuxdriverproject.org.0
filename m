Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AC123CAA5
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 14:41:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0AFDC88175;
	Wed,  5 Aug 2020 12:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xouf+aSNxxLh; Wed,  5 Aug 2020 12:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA09287327;
	Wed,  5 Aug 2020 12:41:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B107F1BF34E
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 12:41:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB68F86370
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 12:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ej7C4eP3+eA for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 12:41:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by hemlock.osuosl.org (Postfix) with ESMTP id AC6EF860BC
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 12:41:34 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE2281063;
 Wed,  5 Aug 2020 05:41:33 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A34A93FA1C;
 Wed,  5 Aug 2020 05:41:31 -0700 (PDT)
Date: Wed, 5 Aug 2020 13:41:29 +0100
From: Qais Yousef <qais.yousef@arm.com>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v4] sched: Provide USF for the portable equipment.
Message-ID: <20200805124128.kfx7uofqnrtk6kux@e107158-lin.cambridge.arm.com>
References: <cover.1596526941.git.yangdongdong@xiaomi.com>
 <820a185b6765d6246ac34f612faedeb35189487c.1596526941.git.yangdongdong@xiaomi.com>
 <20200804104331.6vphb2iclwz3buig@e107158-lin.cambridge.arm.com>
 <CADhdXfpxWqYEL_cWVtEAxg-3OWgVZuZ5sLzNm6G+k484kG3HRw@mail.gmail.com>
 <20200805095341.cmoxmy47ts3ntxee@e107158-lin.cambridge.arm.com>
 <CADhdXfqJhE6F9q2dhnRhZGQvgJ0GSWXG1AmgL9i+rYqAwxvZDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADhdXfqJhE6F9q2dhnRhZGQvgJ0GSWXG1AmgL9i+rYqAwxvZDw@mail.gmail.com>
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

On 08/05/20 19:13, Dongdong Yang wrote:
> Appreciate Qais for your clamp implementation. I would like to add traces
> for uclamp_rq_util_with and feedback you if I run into any issues.

Thanks.

FYI, top posting in LKML is frowned upon. Please put your answer underneath the
quoted text.

> 
> The util would not be adjusted as soon as FB screen on notification be
> received by USF from kernel level if it is set by sched_usf_non_ux, no
> matter whether screen on or off. However, sched_util_clamp_min/max have not
> been recovered until user space screen on detection. The screen on response
> would not be in time for the sensitive user when many background tasks are
> running.  Whether the kernel module could also
> set sched_util_clamp_min/max?

For boosting, are you just changing the sysctl or are you actively using
sched_setattr() to boost tasks too?

Please have a look at the documentation for the sysctl interface.

	https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/tree/Documentation/admin-guide/sysctl/kernel.rst?h=sched/core#n1065

In summary, they just control the _allowed_ levels. So you can use it to
cap/throttle the maximum performance level the system is running at. But you
can't use it to boost the whole system. You must use the sched_setattr() to
boost important tasks individually or if all the tasks are in a cgroup you
can use that. For cgroup interface there's a caveat. If you want to use it
let me know so I can explain how boosting would work there.

I advise to use the sched_setattr() interface to target and boost those
important tasks only. You can as well be smart and target all the background
tasks to cap them via sched_setattr(). In this case you wouldn't have to modify
the sysctl_sched_util_clamp_min/max.

I don't see uclamp being a suitable interface for in-kernel users. PM_QOS is
more suitable in my opinion for in-kernel users if you want to impact the
overall system performance.

I might have misunderstood what you were saying above. If so, can you please
rephrase?

Thanks

--
Qais Yousef
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
