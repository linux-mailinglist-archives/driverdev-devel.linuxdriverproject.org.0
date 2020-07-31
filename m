Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0B92346B6
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 15:20:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA83A86AA5;
	Fri, 31 Jul 2020 13:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AuJRLV8WUipa; Fri, 31 Jul 2020 13:20:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC417868A8;
	Fri, 31 Jul 2020 13:20:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC95D1BF27C
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 13:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C72152047B
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 13:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FX-T5qsf5fUP for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 13:20:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 87BB5203F5
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 13:20:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B268121744;
 Fri, 31 Jul 2020 13:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596201623;
 bh=uoVX3bcmvsWft+k3e/OzNfmAD+L1d0+lh517DnQsT3w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MQybmUSH4o4yjsQH3hjYptrtzYyNBgJYZX1jxcs1DCJFYTIDjSqmDX8w0ruluIazZ
 fn3x8S8I1DnNzoLKeueMDgbXg/TnEcLc/cjvj0fvHDAxixj7CJUkSs6yJ/CKkoTvT8
 Ql+71fA47Mq1Qjz4xBg7rQPn9aT9Sbt7yry84GNU=
Date: Fri, 31 Jul 2020 15:20:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v2] sched: Provide USF for the portable equipment.
Message-ID: <20200731132009.GA1712190@kroah.com>
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
>  drivers/staging/Kconfig          |   2 +
>  drivers/staging/Makefile         |   1 +
>  drivers/staging/fbsched/Kconfig  |  10 ++
>  drivers/staging/fbsched/Makefile |   2 +
>  drivers/staging/fbsched/usf.c    | 346 +++++++++++++++++++++++++++++++++++++++
>  kernel/sched/cpufreq_schedutil.c |   3 +
>  kernel/sched/sched.h             |  10 ++
>  7 files changed, 374 insertions(+)
>  create mode 100644 drivers/staging/fbsched/Kconfig
>  create mode 100644 drivers/staging/fbsched/Makefile
>  create mode 100644 drivers/staging/fbsched/usf.c

I asked for a TODO file, like all other staging drivers have, why did
you not include one here?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
