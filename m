Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFB26C367
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jul 2019 01:04:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BEE3722731;
	Wed, 17 Jul 2019 23:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJyFsczuUVke; Wed, 17 Jul 2019 23:03:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AFB9220472;
	Wed, 17 Jul 2019 23:03:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E01B1BF314
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 23:03:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A7C5868C7
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 23:03:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7_28EsG5dEfk
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 23:03:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 75FAB868BB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 23:03:53 +0000 (UTC)
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hnsxW-0006ey-Qb; Thu, 18 Jul 2019 01:03:39 +0200
Date: Thu, 18 Jul 2019 01:03:37 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dexuan Cui <decui@microsoft.com>
Subject: Re: [PATCH] x86/hyper-v: Zero out the VP assist page to fix CPU
 offlining
In-Reply-To: <PU1P153MB01697CBE66649B4BA91D8B48BFFA0@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
Message-ID: <alpine.DEB.2.21.1907180058210.1778@nanos.tec.linutronix.de>
References: <PU1P153MB01697CBE66649B4BA91D8B48BFFA0@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
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
Cc: Ingo Molnar <mingo@kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 "apw@canonical.com" <apw@canonical.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 vkuznets <vkuznets@redhat.com>, "olaf@aepfle.de" <olaf@aepfle.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dexuan,

On Thu, 4 Jul 2019, Dexuan Cui wrote:

> When a CPU is being offlined, the CPU usually still receives a few
> interrupts (e.g. reschedule IPIs), after hv_cpu_die() disables the
> HV_X64_MSR_VP_ASSIST_PAGE, so hv_apic_eoi_write() may not write the EOI
> MSR, if the apic_assist field's bit0 happens to be 1; as a result, Hyper-V
> may not be able to deliver all the interrupts to the CPU, and the CPU may
> not be stopped, and the kernel will hang soon.
> 
> The VP ASSIST PAGE is an "overlay" page (see Hyper-V TLFS's Section
> 5.2.1 "GPA Overlay Pages"), so with this fix we're sure the apic_assist
> field is still zero, after the VP ASSIST PAGE is disabled.
> 
> Fixes: ba696429d290 ("x86/hyper-v: Implement EOI assist")
> Signed-off-by: Dexuan Cui <decui@microsoft.com>
> ---
>  arch/x86/hyperv/hv_init.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/hyperv/hv_init.c b/arch/x86/hyperv/hv_init.c
> index 0e033ef11a9f..db51a301f759 100644
> --- a/arch/x86/hyperv/hv_init.c
> +++ b/arch/x86/hyperv/hv_init.c
> @@ -60,8 +60,14 @@ static int hv_cpu_init(unsigned int cpu)
>  	if (!hv_vp_assist_page)
>  		return 0;
>  
> +	/*
> +	 * The ZERO flag is necessary, because in the case of CPU offlining
> +	 * the page can still be used by hv_apic_eoi_write() for a while,
> +	 * after the VP ASSIST PAGE is disabled in hv_cpu_die().
> +	 */
>  	if (!*hvp)
> -		*hvp = __vmalloc(PAGE_SIZE, GFP_KERNEL, PAGE_KERNEL);
> +		*hvp = __vmalloc(PAGE_SIZE, GFP_KERNEL | __GFP_ZERO,
> +				 PAGE_KERNEL);

This is the allocation when the CPU is brought online for the first
time. So what effect has zeroing at allocation time vs. offlining and
potentially receiving IPIs? That allocation is never freed.

Neither the comment nor the changelog make any sense to me.

Thanks,

	tglx

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
