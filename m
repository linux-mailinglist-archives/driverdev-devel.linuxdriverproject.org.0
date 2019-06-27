Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FF758E39
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 01:00:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 46679226D4;
	Thu, 27 Jun 2019 23:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AIldL+V1pQ9R; Thu, 27 Jun 2019 23:00:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A9346226AF;
	Thu, 27 Jun 2019 23:00:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 962D81BF3DB
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 23:00:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 92D4887EB8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 23:00:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BVZDHUwXzrdO for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 23:00:34 +0000 (UTC)
X-Greylist: delayed 00:20:50 by SQLgrey-1.7.6
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3E3E786981
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 23:00:34 +0000 (UTC)
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hgd3D-0001yR-93; Fri, 28 Jun 2019 00:39:31 +0200
Date: Fri, 28 Jun 2019 00:39:30 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCHv2] x86/hyperv: Hold cpus_read_lock() on assigning
 reenlightenment vector
In-Reply-To: <20190617163955.25659-1-dima@arista.com>
Message-ID: <alpine.DEB.2.21.1906280033510.32342@nanos.tec.linutronix.de>
References: <20190617163955.25659-1-dima@arista.com>
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
Cc: linux-hyperv@vger.kernel.org, kvm@vger.kernel.org,
 =?ISO-8859-2?Q?Radim_Kr=E8m=E1=F8?= <rkrcmar@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Prasanna Panchamukhi <panchamukhi@arista.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Sasha Levin <sashal@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 "Michael Kelley \(EOSG\)" <Michael.H.Kelley@microsoft.com>,
 Ingo Molnar <mingo@redhat.com>, Roman Kagan <rkagan@virtuozzo.com>,
 Mohammed Gamal <mmorsy@redhat.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, linux-kernel@vger.kernel.org,
 devel@linuxdriverproject.org, Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 17 Jun 2019, Dmitry Safonov wrote:
> @@ -196,7 +196,16 @@ void set_hv_tscchange_cb(void (*cb)(void))
>  	/* Make sure callback is registered before we write to MSRs */
>  	wmb();
>  
> +	/*
> +	 * As reenlightenment vector is global, there is no difference which
> +	 * CPU will register MSR, though it should be an online CPU.
> +	 * hv_cpu_die() callback guarantees that on CPU teardown
> +	 * another CPU will re-register MSR back.
> +	 */
> +	cpus_read_lock();
> +	re_ctrl.target_vp = hv_vp_index[raw_smp_processor_id()];
>  	wrmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));
> +	cpus_read_unlock();

Should work

>  	wrmsrl(HV_X64_MSR_TSC_EMULATION_CONTROL, *((u64 *)&emu_ctrl));
>  }
>  EXPORT_SYMBOL_GPL(set_hv_tscchange_cb);
> @@ -239,6 +248,7 @@ static int hv_cpu_die(unsigned int cpu)
>  
>  	rdmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));
>  	if (re_ctrl.target_vp == hv_vp_index[cpu]) {
> +		lockdep_assert_cpus_held();

So you're not trusting the hotplug core code to hold the lock when it
brings a CPU down and invokes that callback? Come on

>  		/* Reassign to some other online CPU */
>  		new_cpu = cpumask_any_but(cpu_online_mask, cpu);

Thanks,

	tglx
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
