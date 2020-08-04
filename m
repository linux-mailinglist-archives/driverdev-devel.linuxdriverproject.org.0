Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6030B23B8FE
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 12:43:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76F1D85161;
	Tue,  4 Aug 2020 10:43:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lGfDiWY8hSgf; Tue,  4 Aug 2020 10:43:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 178CE845D1;
	Tue,  4 Aug 2020 10:43:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C3361BF25B
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 10:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E975B21FA9
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 10:43:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 95rcn0ygOrmq for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 10:43:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by silver.osuosl.org (Postfix) with ESMTP id EA69E1FEF0
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 10:43:37 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0389E1FB;
 Tue,  4 Aug 2020 03:43:37 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B6B7B3F718;
 Tue,  4 Aug 2020 03:43:34 -0700 (PDT)
Date: Tue, 4 Aug 2020 11:43:32 +0100
From: Qais Yousef <qais.yousef@arm.com>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v4] sched: Provide USF for the portable equipment.
Message-ID: <20200804104331.6vphb2iclwz3buig@e107158-lin.cambridge.arm.com>
References: <cover.1596526941.git.yangdongdong@xiaomi.com>
 <820a185b6765d6246ac34f612faedeb35189487c.1596526941.git.yangdongdong@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <820a185b6765d6246ac34f612faedeb35189487c.1596526941.git.yangdongdong@xiaomi.com>
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
Cc: juri.lelli@redhat.com, devel@driverdev.osuosl.org,
 vincent.guittot@linaro.org, linux-pm@vger.kernel.org, peterz@infradead.org,
 gregkh@linuxfoundation.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, rocking@linux.alibaba.com, bsegall@google.com,
 mingo@redhat.com, yangdongdong@xiaomi.com, mgorman@suse.de,
 viresh.kumar@linaro.org, yanziily@xiaomi.com, dietmar.eggemann@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dongdong

On 08/04/20 15:50, Dongdong Yang wrote:
> +What:		/sys/devices/system/cpu/sched_usf
> +		/sys/devices/system/cpu/sched_usf/sched_usf_non_ux_r
> +		/sys/devices/system/cpu/sched_usf/sched_usf_up_l0_r
> +		/sys/devices/system/cpu/sched_usf/sched_usf_down_r
> +Date:		Aug 2020
> +Contact:	Linux kernel mailing list <linux-kernel@vger.kernel.org>
> +Description:	User Sensitive Feedback factor auxiliary scheduling which
> +		is providing more utils adjustment settings to the high level
> +		by scenario identification.
> +		sched_usf_non_ux_r:
> +			The ratio of utils is cut down on screen off. The
> +			default value is 0, which no util is adjusted on sugov
> +			calculating utils to select cpufreq. Its range is
> +			[-100 , 0]. If its value falls into [-50, 0), the half
> +			of utils, which	calculates cpufreq, shall be  cut down.
> +			If its value falls into [-100, -50), only a quarter of
> +			utils are left to continue to calculate cpufreq.
> +			It is expected to be set [-100, 0) once enter into the
> +			identificated scenario, such as listen to music on
> +			screen off, and recover to 0 on out of the scenario,
> +			such as	screen on.
> +
> +		sched_usf_up_l0_r:
> +			The ratio of utils is boost up on screen on. The
> +			default value is 0, which no util is adjusted on sugov
> +			calculates utils to select cpufreq. Its range is [0 , 100].
> +			If its value falls into (0, 50], a quarter of extra utils,
> +			which calculate cpufreq, shall be added. If its value
> +			falls into (50, 100], the half of extra utils are added
> +			to continue to	calculate cpufreq.
> +			It is expected to be set (0, 100] once enter into the
> +			identificated scenario, such as browsing videolet on
> +			screen on, and recover to 0 on out of the scenario,
> +			such as screen off or videolet into background.
> +
> +		sched_usf_down_r:
> +			The ratio of utils is cut down on screen on. The
> +			default	value is 0, which no util is adjusted on sugov
> +			calculating utils to select cpufreq. Its range is
> +			[-100 , 0]. If its value falls into [-50, 0), the half
> +			of utils, which	calculate cpufreq, shall be  cut down.
> +			If its value falls into [-100, -50), only a quarter of
> +			utils are left to continue to calculate cpufreq.
> +			It is expected to be set [-100, 0) once enter into the
> +			identificated scenario, such as browsing videolet on
> +			screen on, and recover to 0 on	out of the scenario,
> +			such as screen off or vidolet into background.

AFACS you're duplicating util clamp functionality here. You can already use
util clamp to boost tasks on screen on, and cap them on screen off. And extra
brownie points; you can already use that on android 4.19 and 5.4 kernels (I'm
assuming the battery device is android based, sorry).

Any reason why util clamp isn't giving you what you want?

To cap the system on screen off you need to

	# Don't allow the util to go above 512
	echo  512 > /proc/sys/kernel/sched_util_clamp_min
	echo  512 > /proc/sys/kernel/sched_util_clamp_max

To boost the system on screen on, you need first to lift the capping done above


	# Allow util to use the full range again
	echo  1024 > /proc/sys/kernel/sched_util_clamp_min
	echo  1024 > /proc/sys/kernel/sched_util_clamp_max

	# This is pseudo C code
	for_each_important_task(p) {

		/*
		 * boost the task utilization to start from 512.
		 */
		sched_attr attr = {
			.util_min = 512,
			.util_max = 1024
		};
		sched_setattr(p, attr);
	}

	/* undo boosting once system has settled down */
	for_each_important_task(p) {

		/*
		 * reset util_min back to 0, or whatever value you want.
		 */
		sched_attr attr = {
			.util_min = 0,
			.util_max = 1024
		};
		sched_setattr(p, attr);
	}

There's a cgroup API for util clamp too.

Thanks

--
Qais Yousef
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
