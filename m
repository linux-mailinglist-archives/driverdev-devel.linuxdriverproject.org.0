Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE1E23CA38
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 13:22:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DB84214EB;
	Wed,  5 Aug 2020 11:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mqqQXuBxX8l; Wed,  5 Aug 2020 11:22:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 216EE207A2;
	Wed,  5 Aug 2020 11:22:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D035F1BF33A
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 11:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C0F9D875E2
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 11:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wy-mimzoHIZe for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 11:22:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F3258875A0
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 11:22:07 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 075BM4J3011083;
 Wed, 5 Aug 2020 11:22:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=ef0TFqbJXOaEk51yN7NbfcMEPxC8zkZBk+g2daQjwwM=;
 b=sd+hWNyt24DluvYKyq/C8bN0idgU1m9NF7wVLfymxZc0KADFcr2xNngmjJ44E+1c7EYc
 /VfKViqHlUgHlZhXixAOBTpU6P94ulsO3joUiTt1i8zi5HCqmZ+QIxHmjetEefCtTayu
 BWYkytU72472FyWtDa5kLWbV71p6mPJM3GrXtcDsbX/i5di7W5yOIywBMYQlwK5gKOpc
 SFCssDPNi/gulB9tkvsj0JaD59XkeYKhgj+H8VW3R3PgdYKzWRF9XOo8vuDHPDVYY4KS
 VpzTq2Ts/qnegUFcOT2PliafEz+TgxLeLQ3ZHed7jAQJwioP4AmvgzPG7C4ApqMNcjox Cg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 32qnd41qh2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 05 Aug 2020 11:22:04 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 075BCsGN178275;
 Wed, 5 Aug 2020 11:22:03 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 32pdnt1tw6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 05 Aug 2020 11:22:03 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 075BLvqS007651;
 Wed, 5 Aug 2020 11:21:59 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 05 Aug 2020 04:21:55 -0700
Date: Wed, 5 Aug 2020 14:21:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v5] sched: Provide USF for the portable equipment.
Message-ID: <20200805112146.GD1793@kadam>
References: <cover.1596612536.git.yangdongdong@xiaomi.com>
 <3bbd9a487176a05588e33ff660d4e58efa1fdb10.1596612536.git.yangdongdong@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bbd9a487176a05588e33ff660d4e58efa1fdb10.1596612536.git.yangdongdong@xiaomi.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9703
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 mlxscore=0
 bulkscore=0 adultscore=0 phishscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008050094
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9703
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 clxscore=1011 mlxscore=0
 priorityscore=1501 mlxlogscore=999 malwarescore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008050095
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 05, 2020 at 03:36:21PM +0800, Dongdong Yang wrote:
> From: Dongdong Yang <yangdongdong@xiaomi.com>
> =

> The power consumption and UI response are more cared for by the portable
> equipment=A0users. USF(User Sensitive Feedback factor) auxiliary cpufreq
> governor is providing more util adjustment settings to the high level
> by scenario identification.
> =

> From the view of portable equipment, screen off status usually stands
> for no request from the user, however, the kernel is still expected to
> notify the user in time on modem, network or powerkey events occur. In
> some scenarios, such as listening to music, low power processors, such
> as DSP, take more actions and CPU load requirements cut down.=A0 It would
> bring more power consumption benefit if high level have interfaces to
> adjust utils according to the current scenario and load.
> =

> In addition, the portable equipment user usually heavily interact with
> devices by touch, and other peripherals. The boost preemptive counts
> are marking the load requirement urgent, vice versa. If such feedback
> factor could be set to high level according to the scenario, it would
> contribute to the power consumption and UI response.
> =

> If no USF sysfs inode is set, and no screen on or off event,
> adjust_pred_demand shall not be invoked. Once up_l0_r down_r or non_ux_r
> be set, adjust_pred_demand shall be called back to update settings
> according to high level scenario identification.
> =

> We can get about 17% mean power consumption save at listening to music
> with speaker on "screen off" scenario, as below statistical data from
> 7766 XiaoMi devices for two weeks with non_ux_r be set:
> =

>         day1         day2         day3         day4
> count   7766.000000  7766.000000  7766.000000  7766.000000
> mean    88.035525    85.500282    83.829305    86.054997
> std     111.049980   108.258834   107.562583   108.558240
> min     0.099000     0.037000     0.067000     0.045000
> 25%     34.765500    34.021750    34.101500    34.423000
> 50%     54.950000    55.286500    54.189500    54.248500
> 75%     95.954000    93.942000    91.738000    94.0592500
> 80%     114.675000   107.430000   106.378000   108.673000
> 85%     137.851000   129.511000   127.156500   131.750750
> 90%     179.669000   170.208500   164.027000   172.348000
> 95%     272.395000   257.845500   247.750500   263.275750
> 98%     399.034500   412.170400   391.484000   402.835600
> =

>         day5         day6        day7         day8
> count   7766.000000  7766.00000  7766.000000  7766.000000
> mean    82.532677    79.21923    77.611380    81.075081
> std     104.870079   101.34819   103.140037   97.506221
> min     0.051000     0.02900     0.007000     0.068000
> 25%     32.873000    33.44400    31.965500    33.863500
> 50%     52.180500    51.56550    50.806500    53.080000
> 75%     90.905750    86.82625    83.859250    89.973000
> 80%     105.455000   99.64700    97.271000    104.225000
> 85%     128.300000   118.47825   116.570250   126.648250
> 90%     166.647500   149.18000   150.649500   161.087000
> 95%     247.208500   224.36050   226.380000   245.291250
> 98%     393.002000   347.92060   369.791800   378.778600
> =

>         day9         day10        day11        day12
> count   7766.000000  7766.000000  7766.000000  7766.000000
> mean    79.989170    83.859417    78.032930    77.060542
> std     104.226122   108.893043   102.561715   99.844276
> min     0.118000     0.017000     0.028000     0.039000
> 25%     32.056250    33.454500    31.176250    30.897750
> 50%     51.506000    54.056000    48.969500    49.069000
> 75%     88.513500    92.953500    83.506750    84.096000
> 80%     102.876000   107.845000   97.717000    98.073000
> 85%     124.363000   128.288000   118.366500   116.869250
> 90%     160.557000   167.084000   154.342500   148.187500
> 95%     231.149000   242.925750   236.759000   228.131250
> 98%     367.206600   388.619100   385.269100   376.541600
> =

>         day13        day14
> count   7766.000000  7766.000000
> mean    75.528036    73.702878
> std     90.750594    86.796016
> min     0.066000     0.054000
> 25%     31.170500    31.608500
> 50%     48.758500    49.215000
> 75%     84.522750    83.053000
> 80%     97.879000    94.875000
> 85%     116.680250   113.573750
> 90%     149.083500   144.089500
> 95%     226.177750   211.488750
> 98%     347.011100   331.317100
> =

> Signed-off-by: Dongdong Yang <yangdongdong@xiaomi.com>
> Co-developed-by: Jun Tao <taojun@xiaomi.com>
> Co-developed-by: Qiwu Huang <huangqiwu@xiaomi.com>
> Co-developed-by: Peng Wang <rocking@linux.alibaba.com>
> Signed-off-by: Dongdong Yang <yangdongdong@xiaomi.com>
> ---
>  Documentation/ABI/testing/sysfs-devices-system-cpu |  31 ++
>  drivers/cpufreq/Kconfig                            |  11 +
>  kernel/sched/Makefile                              |   1 +
>  kernel/sched/cpufreq_schedutil.c                   |   5 +
>  kernel/sched/usf.c                                 | 314 +++++++++++++++=
++++++
>  5 files changed, 362 insertions(+)
>  create mode 100644 kernel/sched/usf.c
> =

> diff --git a/Documentation/ABI/testing/sysfs-devices-system-cpu b/Documen=
tation/ABI/testing/sysfs-devices-system-cpu
> index b555df8..e9a4cfd 100644
> --- a/Documentation/ABI/testing/sysfs-devices-system-cpu
> +++ b/Documentation/ABI/testing/sysfs-devices-system-cpu
> @@ -614,3 +614,34 @@ Description:	SPURR ticks for cpuX when it was idle.
>  =

>  		This sysfs interface exposes the number of SPURR ticks
>  		for cpuX when it was idle.
> +
> +What:		/sys/devices/system/cpu/sched_usf
> +		/sys/devices/system/cpu/sched_usf/non_ux_r
> +		/sys/devices/system/cpu/sched_usf/up_l0_r
> +		/sys/devices/system/cpu/sched_usf/down_r
> +Date:		Aug 2020
> +Contact:	Linux kernel mailing list <linux-kernel@vger.kernel.org>
> +Description:	User Sensitive Feedback factor auxiliary scheduling which
> +		is providing more util adjustment settings based on schedutil
> +		governor to the high level by scenario identification on
> +		portable equipment.
> +		non_ux_r:
> +			The default value is 0.	The range is [-100 , 0].
> +			If it falls into [-50, 0), the half of utils, which
> +			calculates cpufreq, shall be cut down on screen off.
> +			If it falls into [-100, -50), only a quarter of utils
> +			are left to continue to calculate cpufreq on screen off.
> +
> +		up_l0_r:
> +			The default value is 0.	The range is [0 , 100].
> +			If it falls into (0, 50], a quarter of extra utils,
> +			which calculate cpufreq, shall be added on screen on.
> +			If it falls into (50, 100], the half of extra utils are
> +			added to continue to calculate cpufreq on screen on.
> +
> +		down_r:
> +			The default value is 0.	The range is [-100 , 0].
> +			If it falls into [-50, 0), the half of utils, which
> +			calculate cpufreq, shall be  cut down on screen on.
> +			If it falls into [-100, -50), only a quarter of utils
> +			are left to continue to calculate cpufreq on screen on.
> diff --git a/drivers/cpufreq/Kconfig b/drivers/cpufreq/Kconfig
> index e917501..a21c6ad 100644
> --- a/drivers/cpufreq/Kconfig
> +++ b/drivers/cpufreq/Kconfig
> @@ -224,6 +224,17 @@ config CPUFREQ_DT_PLATDEV
>  =

>  	  If in doubt, say N.
>  =

> +config SCHED_USF
> +	bool "User Sensitive Factors for Scheduler"
> +	depends on CPU_FREQ_GOV_SCHEDUTIL && FB
> +	help
> +	  Select this option to enable the adjustment on the cpufreq with
> +	  the user sensitive factors on schedule. It is special for mobile
> +	  devices which more power care and quick response requirement on
> +	  screen on.
> +
> +	  If unsure, say N.
> +
>  if X86
>  source "drivers/cpufreq/Kconfig.x86"
>  endif
> diff --git a/kernel/sched/Makefile b/kernel/sched/Makefile
> index 5fc9c9b..58a0e7b 100644
> --- a/kernel/sched/Makefile
> +++ b/kernel/sched/Makefile
> @@ -36,3 +36,4 @@ obj-$(CONFIG_CPU_FREQ_GOV_SCHEDUTIL) +=3D cpufreq_sched=
util.o
>  obj-$(CONFIG_MEMBARRIER) +=3D membarrier.o
>  obj-$(CONFIG_CPU_ISOLATION) +=3D isolation.o
>  obj-$(CONFIG_PSI) +=3D psi.o
> +obj-$(CONFIG_SCHED_USF) +=3D usf.o
> diff --git a/kernel/sched/cpufreq_schedutil.c b/kernel/sched/cpufreq_sche=
dutil.c
> index 7fbaee2..6f9cb6c 100644
> --- a/kernel/sched/cpufreq_schedutil.c
> +++ b/kernel/sched/cpufreq_schedutil.c
> @@ -289,12 +289,17 @@ unsigned long schedutil_cpu_util(int cpu, unsigned =
long util_cfs,
>  	return min(max, util);
>  }
>  =

> +void (*adjust_pred_demand_p)(int cpuid, unsigned long *util,
> +			     struct rq *rq) =3D NULL;

Remove the _p.  We all know this is a pointer already without the
Hungarian notation.

> +
>  static unsigned long sugov_get_util(struct sugov_cpu *sg_cpu)
>  {
>  	struct rq *rq =3D cpu_rq(sg_cpu->cpu);
>  	unsigned long util =3D cpu_util_cfs(rq);
>  	unsigned long max =3D arch_scale_cpu_capacity(sg_cpu->cpu);
>  =

> +	if (unlikely(adjust_pred_demand_p))
> +		adjust_pred_demand_p(sg_cpu->cpu, &util, rq);
>  	sg_cpu->max =3D max;
>  	sg_cpu->bw_dl =3D cpu_bw_dl(rq);
>  =

> diff --git a/kernel/sched/usf.c b/kernel/sched/usf.c
> new file mode 100644
> index 0000000..f3183f1
> --- /dev/null
> +++ b/kernel/sched/usf.c
> @@ -0,0 +1,314 @@
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
> + */
> +
> +#include <linux/module.h>
> +#include <linux/init.h>
> +#include <linux/platform_device.h>
> +#include <linux/kthread.h>
> +#include <linux/cpu.h>
> +#include <linux/sysfs.h>
> +#include <linux/kthread.h>
> +#include <linux/module.h>
> +#include <linux/kernel.h>
> +#include <linux/init.h>
> +#include <linux/kallsyms.h>
> +#include <linux/fb.h>
> +#include <linux/notifier.h>
> +#include "sched.h"
> +
> +#define BOOST_MIN_V -100
> +#define BOOST_MAX_V 100
> +#define LEVEL_TOP 3
> +
> +extern void (*adjust_pred_demand_p)(int cpuid,
> +			unsigned long *util, struct rq *rq);
> +DEFINE_PER_CPU(unsigned long[PID_MAX_DEFAULT], task_hist_nivcsw);
> +
> +static struct {
> +	bool is_enabled;
> +	bool is_screen_on;
> +	int sysctl_up_l0;
> +	int sysctl_down;
> +	int sysctl_non_ux;

I don't understand the point of sysctl_up_l0, sysctl_down and
sysctl_non_ux.  They are a value from BOOST_MIN_V-BOOST_MAX_V but we
only check them against zero/non-zero.  Am I missing something?

> +	int usf_up_l0;
> +	int usf_down;
> +	int usf_non_ux;
> +} usf_vdev;
> +
> +void adjust_pred_demand(int cpuid,
> +			unsigned long *util,
> +			struct rq *rq)
> +{
> +	/*
> +	 * The initial value of bl_sw_num is the ratio of
> +	 * sysctl_sched_latency/sysctl_sched_min_granularity.
> +	 * It stands for the basic acceptable fluency.
> +	 */
> +	u32 bl_sw_num =3D 3;
> +
> +	if (!usf_vdev.is_enabled || !rq || !rq->curr ||
> +		(rq->curr->pid >=3D PID_MAX_DEFAULT))
> +		return;


Please indent like this:

	if (!usf_vdev.is_enabled || !rq || !rq->curr ||
	    (rq->curr->pid >=3D PID_MAX_DEFAULT))
		return;

> +	/*
> +	 * usf_non_ux:
> +	 *	It comes from non_ux_r, which is the ratio of utils
> +	 *	cut down on screen off. There are 3 levels. The default
> +	 *	value is 0, which no util is adjusted on calculating
> +	 *	utils to select cpufreq. If non_ux_r falls into [-50, 0),
> +	 *	usf_non_ux equals 1, and a half of utils, which calculates
> +	 *	cpufreq, shall be cut down. If non_ux_r falls into
> +	 *	[-100, -50), usf_non_ux equals to 2, only a quarter of
> +	 *	utils are left to continue to calculate cpufreq.
> +	 *
> +	 * usf_up_l0:
> +	 *	It comes from sysfs up_l0, which is the ratio of utils
> +	 *	boost up on screen on. There are 3 levels. The default
> +	 *	value is 0, which no util is adjusted when cpufreq be
> +	 *	calculated according it. If up_l0 falls into (0, 50],
> +	 *	usf_up_l0 equals to 2. And a quarter of extra utils,
> +	 *	which calculate cpufreq, shall be added. If up_l0 falls
> +	 *	into (50, 100], usf_up_l0 equals to 1. And the half of
> +	 *	extra utils are added to continue to calculate cpufreq.
> +	 *
> +	 * usf_down:
> +	 *	It comes from down_r, which is the ratio of utils cut
> +	 *	down on screen on. There are 3 levels. The default value
> +	 *	is 0, which no util is adjusted on calculating utils to
> +	 *	select cpufreq. If down_r falls into [-50, 0), usf_down
> +	 *	equals to 1, and a half of utils, which calculate cpufreq
> +	 *	shall be  cut down. If down_r falls into [-100, -50)
> +	 *	usf_down equals to 2, and only a quarter of utils are
> +	 *	left to continue to calculate cpufreq.
> +	 */
> +	if (usf_vdev.is_screen_on) {
> +		if (rq->curr->nivcsw >
> +		    (per_cpu(task_hist_nivcsw, cpuid)[rq->curr->pid]
> +		     + bl_sw_num + 1)) {

Put the + on the first line:

		if (rq->curr->nivcsw >
		    (per_cpu(task_hist_nivcsw, cpuid)[rq->curr->pid] +
		     bl_sw_num + 1)) {


> +			(*util) +=3D (*util) >> usf_vdev.usf_up_l0;
> +		} else if (rq->curr->nivcsw <
> +			   (per_cpu(task_hist_nivcsw, cpuid)[rq->curr->pid]
> +			    + bl_sw_num - 1) && (rq->nr_running < bl_sw_num)) {

Plus on the first line.

> +			(*util) >>=3D usf_vdev.usf_down;
> +		}
> +		per_cpu(task_hist_nivcsw, cpuid)[rq->curr->pid] =3D
> +		    rq->curr->nivcsw;
> +	} else if (rq->curr->mm) {
> +		(*util) >>=3D usf_vdev.usf_non_ux;
> +	}
> +}
> +
> +static int usf_lcd_notifier(struct notifier_block *nb,
> +			    unsigned long val, void *data)
> +{
> +	struct fb_event *evdata =3D data;
> +	unsigned int blank;
> +
> +	if (!evdata)
> +		return 0;

Should this be return NOTIFY_DONE?

> +
> +	if (val !=3D FB_EVENT_BLANK)
> +		return 0;
> +
> +	if (evdata->data && val =3D=3D FB_EVENT_BLANK) {

The FB_EVENT_BLANK check is duplicated from the line before.  Remove it
and flip the condition around.

	if (!evdata->data)
		return NOTIFY_DONE;

Then we can pull everything in one indent level.

> +		blank =3D *(int *)(evdata->data);
> +
> +		switch (blank) {
> +		case FB_BLANK_POWERDOWN:
> +			usf_vdev.is_screen_on =3D false;
> +			if (usf_vdev.sysctl_non_ux !=3D 0)
> +				adjust_pred_demand_p =3D adjust_pred_demand;
> +			else
> +				adjust_pred_demand_p =3D NULL;
> +
> +			break;
> +
> +		case FB_BLANK_UNBLANK:
> +			usf_vdev.is_screen_on =3D true;
> +			if (usf_vdev.sysctl_up_l0 !=3D 0 ||
> +			    usf_vdev.sysctl_down !=3D 0)
> +				adjust_pred_demand_p =3D adjust_pred_demand;
> +			else
> +				adjust_pred_demand_p =3D NULL;
> +			break;
> +		default:
> +			break;
> +		}
> +
> +		usf_vdev.is_enabled =3D true;
> +		pr_info("%s : usf_vdev.is_screen_on:%b\n",
> +				     __func__, usf_vdev.is_screen_on);

I don't think you want to print this every time the notifier is called.

> +	}
> +	return NOTIFY_OK;
> +}
> +
> +static struct notifier_block usf_lcd_nb =3D {
> +	.notifier_call =3D usf_lcd_notifier,
> +	.priority =3D INT_MAX,
> +};
> +
> +static ssize_t up_l0_r_store(struct device *kobj,
> +			     struct device_attribute *attr,
> +			     const char *buf, size_t count)
> +{
> +	int val =3D 0;
> +	int ret =3D 0;

Delete both of these unused initializers.

> +
> +	ret =3D kstrtoint(buf, 0, &val);
> +	if (ret)
> +		return ret;
> +
> +	if (val =3D=3D 0) {
> +		usf_vdev.sysctl_up_l0 =3D val;
> +		usf_vdev.usf_up_l0 =3D 0;

Set ret on this path?

> +	} else if ((val > 0) && (val <=3D BOOST_MAX_V)) {
> +		usf_vdev.sysctl_up_l0 =3D val;
> +		usf_vdev.usf_up_l0 =3D LEVEL_TOP -
> +				DIV_ROUND_UP(val, BOOST_MAX_V / 2);
> +		ret =3D count;
> +	} else {
> +		pr_err("USF BUG: %d should fall into [%d %d]",
> +		       val, 0, BOOST_MAX_V);
> +		ret =3D -EINVAL;

I really wish this just returned when we passed invalid data instead of
setting adjust_pred_demand_p =3D NULL;

> +	}
> +	if ((usf_vdev.sysctl_up_l0 =3D=3D 0) &&
> +	    (usf_vdev.sysctl_down =3D=3D 0))
> +		adjust_pred_demand_p =3D NULL;
> +	else
> +		adjust_pred_demand_p =3D adjust_pred_demand;
> +
> +	return ret;
> +}
> +
> +static ssize_t down_r_store(struct device *kobj,
> +			    struct device_attribute *attr,
> +			    const char *buf, size_t count)
> +{
> +	int val =3D 0;
> +	int ret =3D 0;

Delete initializers.

> +
> +	ret =3D kstrtoint(buf, 0, &val);
> +	if (ret)
> +		return ret;
> +
> +	if ((val >=3D BOOST_MIN_V) && (val <=3D 0)) {
> +		usf_vdev.sysctl_down =3D val;
> +		usf_vdev.usf_down =3D DIV_ROUND_UP(-val, -BOOST_MIN_V / 2);
> +		ret =3D count;
> +	} else {
> +		pr_err("USF BUG: %d should fall into [%d %d]",
> +		       val, BOOST_MIN_V, 0);
> +		ret =3D -EINVAL;
> +	}
> +	if ((usf_vdev.sysctl_up_l0 =3D=3D 0) &&
> +	    (usf_vdev.sysctl_down =3D=3D 0))
> +		adjust_pred_demand_p =3D NULL;
> +	else
> +		adjust_pred_demand_p =3D adjust_pred_demand;
> +
> +	return ret;
> +}
> +
> +static ssize_t non_ux_r_store(struct device *kobj,
> +			      struct device_attribute *attr,
> +			      const char *buf, size_t count)
> +{
> +	int val =3D 0;
> +	int ret =3D 0;

Delete initializers.

> +
> +	ret =3D kstrtoint(buf, 0, &val);
> +	if (ret)
> +		return ret;
> +
> +	if ((val >=3D BOOST_MIN_V) && (val <=3D 0)) {
> +		usf_vdev.sysctl_non_ux =3D val;
> +		usf_vdev.usf_non_ux =3D DIV_ROUND_UP(-val, -BOOST_MIN_V / 2);
> +		ret =3D count;
> +	} else {
> +		pr_err("USF BUG: %d should fall into [%d %d]",
> +		       val, BOOST_MIN_V, 0);
> +		ret =3D -EINVAL;
> +	}
> +	if (usf_vdev.sysctl_non_ux =3D=3D 0)
> +		adjust_pred_demand_p =3D NULL;
> +	else
> +		adjust_pred_demand_p =3D adjust_pred_demand;
> +
> +	return ret;
> +}
> +
> +#define usf_attr_rw(_name)						\
> +static struct device_attribute _name =3D					\
> +__ATTR_RW(_name)
> +
> +#define usf_show_node(_name, _value)					\
> +static ssize_t _name##_show						\
> +(struct device *kobj, struct device_attribute *attr,  char *buf)		\
> +{									\
> +	return sprintf(buf, "%d", usf_vdev.sysctl_##_value);		\
> +}
> +
> +usf_show_node(up_l0_r, up_l0);
> +usf_show_node(down_r, down);
> +usf_show_node(non_ux_r, non_ux);
> +
> +usf_attr_rw(up_l0_r);
> +usf_attr_rw(down_r);
> +usf_attr_rw(non_ux_r);
> +
> +static struct attribute *sched_usf_attrs[] =3D {
> +	&up_l0_r.attr,
> +	&down_r.attr,
> +	&non_ux_r.attr,
> +	NULL,
> +};
> +
> +ATTRIBUTE_GROUPS(sched_usf);
> +
> +static int __init intera_monitor_init(void)
> +{
> +	int res =3D -1;

Delete initializer

> +	struct device *dev;

Get rid of the dev variable and use cpu_subsys.dev_root directly.

> +
> +	res =3D fb_register_client(&usf_lcd_nb);
> +	if (res < 0) {
> +		pr_err("Failed to register usf_lcd_nb!\n");
> +		return res;
> +	}
> +
> +	/*
> +	 * create a sched_usf in cpu_subsys:
> +	 * /sys/devices/system/cpu/sched_usf/...
> +	 */
> +	dev =3D cpu_subsys.dev_root;
> +	res =3D sysfs_create_group(&dev->kobj, &sched_usf_group);
> +	if (res) {
> +		fb_unregister_client(&usf_lcd_nb);
> +		return res;
> +	}
> +
> +	return res;

"return 0;" is more readable than "return res;"

> +}
> +
> +module_init(intera_monitor_init);
> +
> +static void __exit intera_monitor_exit(void)
> +{
> +	struct device *dev;

Get rid of the dev variable.

> +
> +	dev =3D cpu_subsys.dev_root;
> +	sysfs_remove_group(&dev->kobj, &sched_usf_group);
> +	fb_unregister_client(&usf_lcd_nb);
> +	adjust_pred_demand_p =3D NULL;

I'm pretty sure this is not required.  Delete this line.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
