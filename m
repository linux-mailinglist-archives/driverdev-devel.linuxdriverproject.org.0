Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ACA23BD5A
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 17:41:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C70586108;
	Tue,  4 Aug 2020 15:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bVh9GGdB33Uk; Tue,  4 Aug 2020 15:41:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAC9B85FBA;
	Tue,  4 Aug 2020 15:41:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6CF61BF5A0
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 15:41:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B094F87E45
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 15:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 38v7K4DWw8ZG for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 15:41:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1DFC87E41
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 15:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=4HYOsiWuipXA9W4Av6msL0bg5EM4ZU//zWeqQbSSb4Y=; b=AjZY9OLE4ER6XFJ2LVIu7XnO8R
 x/MYxLmAhfurUe1u0rvS4b04CnTUXL/Bo8iCnghvFmgeg1saQ3q1aOKmqfzE3/qgJnVV3Y5avqAod
 lCNKowcjrhCg//YQvJxo/84zGJdiuF6goSnR2lqUDLlgi4unVpeeHwE8bwvZLTdHzYTHVIRradfmz
 WVr7MZ+gpANvhDltZd8un/D1I0DeqhsXNaUk6mG0xRFjx4LEuVp3rzSzvkBVidFuxxbwlZ8uftgG8
 r1CaBHAgqUttriiMtjiV2LomrsJ3kV8NtaJJwV1S8TLpAtlo6HcAA7/LWp8df3gTMVMWRkSE1kPOS
 1W2jPmGw==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2z4H-0000fW-5v; Tue, 04 Aug 2020 15:41:34 +0000
Subject: Re: [PATCH v4] sched: Provide USF for the portable equipment.
To: Dongdong Yang <contribute.kernel@gmail.com>, gregkh@linuxfoundation.org,
 rjw@rjwysocki.net, viresh.kumar@linaro.org, mingo@redhat.com,
 peterz@infradead.org, juri.lelli@redhat.com, vincent.guittot@linaro.org,
 dietmar.eggemann@arm.com, rostedt@goodmis.org, bsegall@google.com,
 mgorman@suse.de
References: <cover.1596526941.git.yangdongdong@xiaomi.com>
 <820a185b6765d6246ac34f612faedeb35189487c.1596526941.git.yangdongdong@xiaomi.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <2a35c303-6c28-cc16-3f12-3d7b25ff4dfc@infradead.org>
Date: Tue, 4 Aug 2020 08:41:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <820a185b6765d6246ac34f612faedeb35189487c.1596526941.git.yangdongdong@xiaomi.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, yangdongdong@xiaomi.com, yanziily@xiaomi.com,
 rocking@linux.alibaba.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/4/20 12:50 AM, Dongdong Yang wrote:
> From: Dongdong Yang <yangdongdong@xiaomi.com>
> 
> ---
> 
> diff --git a/Documentation/ABI/testing/sysfs-devices-system-cpu b/Documentation/ABI/testing/sysfs-devices-system-cpu
> index b555df8..e299418 100644
> --- a/Documentation/ABI/testing/sysfs-devices-system-cpu
> +++ b/Documentation/ABI/testing/sysfs-devices-system-cpu
> @@ -614,3 +614,51 @@ Description:	SPURR ticks for cpuX when it was idle.
>  
>  		This sysfs interface exposes the number of SPURR ticks
>  		for cpuX when it was idle.
> +
> +What:		/sys/devices/system/cpu/sched_usf
> +		/sys/devices/system/cpu/sched_usf/sched_usf_non_ux_r
> +		/sys/devices/system/cpu/sched_usf/sched_usf_up_l0_r
> +		/sys/devices/system/cpu/sched_usf/sched_usf_down_r
> +Date:		Aug 2020
> +Contact:	Linux kernel mailing list <linux-kernel@vger.kernel.org>
> +Description:	User Sensitive Feedback factor auxiliary scheduling which
> +		is providing more utils adjustment settings to the high level
> +		by scenario identification.

what is "utils"?

> +		sched_usf_non_ux_r:
> +			The ratio of utils is cut down on screen off. The

same question.

> +			default value is 0, which no util is adjusted on sugov

what is "sugov"?

> +			calculating utils to select cpufreq. Its range is
> +			[-100 , 0]. If its value falls into [-50, 0), the half
> +			of utils, which	calculates cpufreq, shall be  cut down.
> +			If its value falls into [-100, -50), only a quarter of
> +			utils are left to continue to calculate cpufreq.
> +			It is expected to be set [-100, 0) once enter into the
> +			identificated scenario, such as listen to music on

			^^^^^^^^^^^^^ not a word.


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

what is "videolet"?

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


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
