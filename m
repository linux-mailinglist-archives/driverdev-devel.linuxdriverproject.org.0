Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF5645777
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 10:28:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38B858697D;
	Fri, 14 Jun 2019 08:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EAVcU2ZSYUJI; Fri, 14 Jun 2019 08:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C8DE86966;
	Fri, 14 Jun 2019 08:28:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D7D01BF3E9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 08:28:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2A34E883B0
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 08:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CFPFW3KqaJca for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 08:28:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8C833883A8
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 08:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nuJWzFaHmrWndyMr2eq2rxRkyBTd82Hnqew1N2lQ4hk=; b=yKg4SPafKQn1l+kcpnvawhhLS
 kVC7GI2yCKD3vYzywRoL2D6CD1wt/5NTbpWB1HkRIWnzWJ8cM0S1iX8wC0qZXntaUIsFTG716DZBp
 9UORZw7pjo1XKw/o4dOwkqg5riOjx2o3dkOeUEt/ppFTOQXmPwNLP2+OXXsuZR/qYHqqkl93hbqZq
 DonXmBWOJWaUXodvzhMhRj4YCpp+GIceACsdt8T84z38JHzvl+XqIPQV/Yt6vucZf+x8YyVUN83Pd
 O4YGt8ac4UAZG0QPiDIb595DFrVkFkQnnCau7n2/ez6Th71ghD78qTwDHFYxLrX2LvIGyWrvqoc5Q
 lJpC6aD7Q==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhZC-0005Bg-HI; Fri, 14 Jun 2019 08:28:10 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 944F22013F74B; Fri, 14 Jun 2019 10:28:07 +0200 (CEST)
Date: Fri, 14 Jun 2019 10:28:07 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vitaly Kuznetsov <vkuznets@redhat.com>
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
Message-ID: <20190614082807.GV3436@hirez.programming.kicks-ass.net>
References: <20190611212003.26382-1-dima@arista.com>
 <8736kff6q3.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8736kff6q3.fsf@vitty.brq.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Prasanna Panchamukhi <panchamukhi@arista.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Sasha Levin <sashal@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Dmitry Safonov <dima@arista.com>,
 x86@kernel.org, "Michael Kelley \(EOSG\)" <Michael.H.Kelley@microsoft.com>,
 Ingo Molnar <mingo@redhat.com>, Roman Kagan <rkagan@virtuozzo.com>,
 Mohammed Gamal <mmorsy@redhat.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org, devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 12, 2019 at 12:17:24PM +0200, Vitaly Kuznetsov wrote:
> Dmitry Safonov <dima@arista.com> writes:
> 
> > KVM support may be compiled as dynamic module, which triggers the
> > following splat on modprobe:
> >
> >  KVM: vmx: using Hyper-V Enlightened VMCS
> >  BUG: using smp_processor_id() in preemptible [00000000] code: modprobe/466 caller is debug_smp_processor_id+0x17/0x19
> >  CPU: 0 PID: 466 Comm: modprobe Kdump: loaded Not tainted 4.19.43 #1
> >  Hardware name: Microsoft Corporation Virtual Machine/Virtual Machine, BIOS 090007  06/02/2017
> >  Call Trace:
> >   dump_stack+0x61/0x7e
> >   check_preemption_disabled+0xd4/0xe6
> >   debug_smp_processor_id+0x17/0x19
> >   set_hv_tscchange_cb+0x1b/0x89
> >   kvm_arch_init+0x14a/0x163 [kvm]
> >   kvm_init+0x30/0x259 [kvm]
> >   vmx_init+0xed/0x3db [kvm_intel]
> >   do_one_initcall+0x89/0x1bc
> >   do_init_module+0x5f/0x207
> >   load_module+0x1b34/0x209b
> >   __ia32_sys_init_module+0x17/0x19
> >   do_fast_syscall_32+0x121/0x1fa
> >   entry_SYSENTER_compat+0x7f/0x91
> 
> Hm, I never noticed this one, you probably need something like
> CONFIG_PREEMPT enabled so see it.

CONFIG_DEBUG_PREEMPT

> > @@ -91,7 +91,7 @@ EXPORT_SYMBOL_GPL(hv_max_vp_index);
> >  static int hv_cpu_init(unsigned int cpu)
> >  {
> >  	u64 msr_vp_index;
> > -	struct hv_vp_assist_page **hvp = &hv_vp_assist_page[smp_processor_id()];
> > +	struct hv_vp_assist_page **hvp = &hv_vp_assist_page[cpu];
> >  	void **input_arg;
> >  	struct page *pg;
> >  
> > @@ -103,7 +103,7 @@ static int hv_cpu_init(unsigned int cpu)
> >  
> >  	hv_get_vp_index(msr_vp_index);
> >  
> > -	hv_vp_index[smp_processor_id()] = msr_vp_index;
> > +	hv_vp_index[cpu] = msr_vp_index;
> >  
> >  	if (msr_vp_index > hv_max_vp_index)
> >  		hv_max_vp_index = msr_vp_index;
> 
> The above is unrelated cleanup (as cpu == smp_processor_id() for
> CPUHP_AP_ONLINE_DYN callbacks), right? As I'm pretty sure these can'd be
> preempted.

Yeah, makes sense though.

> > @@ -182,7 +182,6 @@ void set_hv_tscchange_cb(void (*cb)(void))
> >  	struct hv_reenlightenment_control re_ctrl = {
> >  		.vector = HYPERV_REENLIGHTENMENT_VECTOR,
> >  		.enabled = 1,
> > -		.target_vp = hv_vp_index[smp_processor_id()]
> >  	};
> >  	struct hv_tsc_emulation_control emu_ctrl = {.enabled = 1};
> >  
> > @@ -196,7 +195,11 @@ void set_hv_tscchange_cb(void (*cb)(void))
> >  	/* Make sure callback is registered before we write to MSRs */
> >  	wmb();
> >  
> > +	preempt_disable();
> > +	re_ctrl.target_vp = hv_vp_index[smp_processor_id()];
> >  	wrmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));
> > +	preempt_enable();
> > +
> 
> My personal preference would be to do something like
>    int cpu = get_cpu();
> 
>    ... set things up ...
> 
>    put_cpu();

If it doesn't matter, how about this then?

---
diff --git a/arch/x86/hyperv/hv_init.c b/arch/x86/hyperv/hv_init.c
index 1608050e9df9..e58c693a9fce 100644
--- a/arch/x86/hyperv/hv_init.c
+++ b/arch/x86/hyperv/hv_init.c
@@ -91,7 +91,7 @@ EXPORT_SYMBOL_GPL(hv_max_vp_index);
 static int hv_cpu_init(unsigned int cpu)
 {
 	u64 msr_vp_index;
-	struct hv_vp_assist_page **hvp = &hv_vp_assist_page[smp_processor_id()];
+	struct hv_vp_assist_page **hvp = &hv_vp_assist_page[cpu];
 	void **input_arg;
 	struct page *pg;
 
@@ -103,7 +103,7 @@ static int hv_cpu_init(unsigned int cpu)
 
 	hv_get_vp_index(msr_vp_index);
 
-	hv_vp_index[smp_processor_id()] = msr_vp_index;
+	hv_vp_index[cpu] = msr_vp_index;
 
 	if (msr_vp_index > hv_max_vp_index)
 		hv_max_vp_index = msr_vp_index;
@@ -182,7 +182,7 @@ void set_hv_tscchange_cb(void (*cb)(void))
 	struct hv_reenlightenment_control re_ctrl = {
 		.vector = HYPERV_REENLIGHTENMENT_VECTOR,
 		.enabled = 1,
-		.target_vp = hv_vp_index[smp_processor_id()]
+		.target_vp = hv_vp_index[raw_smp_processor_id()]
 	};
 	struct hv_tsc_emulation_control emu_ctrl = {.enabled = 1};
 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
