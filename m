Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679B123A925
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 17:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5514387AFE;
	Mon,  3 Aug 2020 15:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NDGlXYEh8mTb; Mon,  3 Aug 2020 15:08:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9F9E87884;
	Mon,  3 Aug 2020 15:08:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAE761BF2B1
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 15:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B43ED20117
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 15:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3zbKvaFKSLiE for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 15:08:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A477B2010A
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 15:08:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C71A12076E;
 Mon,  3 Aug 2020 15:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596467294;
 bh=Lrbi2rsIAExF59EuLBc7ucnI9amz38W6mCJdKugNiSY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ICoWVarNkJzobZx++tnhhJngFcae6r4xhlEqj89aatZag49QjN5O7mXay7bxj7NCH
 JQE6yTT6PfFgtOkugp3ORwOlnC4/BgyQYnlSHTNw08W/1cT7W8D1WHH92PsbDVprvw
 hGrE+qO9QSqdzq+k0XSsdZeJMweV3FqiiRp79DUg=
Date: Mon, 3 Aug 2020 17:07:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v3] sched: Provide USF for the portable equipment.
Message-ID: <20200803150756.GA1098726@kroah.com>
References: <cover.1596464894.git.yangdongdong@xiaomi.com>
 <23719695ee476715ec54d3310c95d535f8e1391a.1596464896.git.yangdongdong@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23719695ee476715ec54d3310c95d535f8e1391a.1596464896.git.yangdongdong@xiaomi.com>
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

On Mon, Aug 03, 2020 at 10:31:15PM +0800, Dongdong Yang wrote:
> +	/*
> +	 * create a sched_usf in cpu_subsys:
> +	 * /sys/devices/system/cpu/sched_usf/...

I thought I asked you not to use a "raw" kobject, you are making this
much harder than it has to be.

Just use a normal struct device.

Also you failed to document your new sysfs files in Documentation/ABI/
like is required :(

Because of both of those things, this isn't ok as-is, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
