Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5317623C78F
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 10:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1FAE020C92;
	Wed,  5 Aug 2020 08:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S+XMa-Bg1A2m; Wed,  5 Aug 2020 08:15:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 05EC120552;
	Wed,  5 Aug 2020 08:15:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A4F61BF4E6
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 08:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 098D92047F
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 08:15:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uq0GqBRlhrAh for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 08:15:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by silver.osuosl.org (Postfix) with ESMTPS id 06AE02035D
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=O9maNZgxo9jG14qKmejuN27LhV8t5XITkhKE0XSd29E=; b=jFS7DMDh25OL9yC/twevC8JZBM
 ceBuRQ2PJnyXbv98USNDdcIfSF91o2AdMye0v3SbkljZF1DbjEXBSrV+hOqKiP0ddDHiNynFY0cHw
 viv7hgykkDIA1XEFjmaFABC+Yk+zQ0Wdx65zLDIaCiU2wG6pthEqj+NytzrffvrnceAs9R94xv8EM
 HPqT6PrZ/OHdUNFvVH2GD2dMTuIANBTevZQhGIQ4uV8Sl8qzpbo7IbFchKrmglloSXsW8WDM71Npy
 N8FP3PkXwr1/Jl8Ig1Uc6jhJ/PnCcJFnt8+8XCAKLp9AlPTsLp8+3o8otfz+Nkob62iTQn7PsOSY6
 LNilp1Wg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3Ea9-00061h-Ha; Wed, 05 Aug 2020 08:15:29 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3B958301EE3;
 Wed,  5 Aug 2020 10:15:23 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 1F7A42C3020ED; Wed,  5 Aug 2020 10:15:23 +0200 (CEST)
Date: Wed, 5 Aug 2020 10:15:23 +0200
From: peterz@infradead.org
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v5] sched: Provide USF for the portable equipment.
Message-ID: <20200805081523.GN2674@hirez.programming.kicks-ass.net>
References: <cover.1596612536.git.yangdongdong@xiaomi.com>
 <3bbd9a487176a05588e33ff660d4e58efa1fdb10.1596612536.git.yangdongdong@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bbd9a487176a05588e33ff660d4e58efa1fdb10.1596612536.git.yangdongdong@xiaomi.com>
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
 vincent.guittot@linaro.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, rocking@linux.alibaba.com, bsegall@google.com,
 mingo@redhat.com, yangdongdong@xiaomi.com, mgorman@suse.de,
 viresh.kumar@linaro.org, yanziily@xiaomi.com, dietmar.eggemann@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 05, 2020 at 03:36:21PM +0800, Dongdong Yang wrote:
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

You're still suffering all the same problems, still NAK.

Read carefully: "we do *NOT* do special case hacks"

If you keep sending the same stuff over and over, you'll be elegible for
an entry in my mailfilter.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
