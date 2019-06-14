Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A1A45CCC
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 14:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A92C86812;
	Fri, 14 Jun 2019 12:27:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxFqjD9M-s94; Fri, 14 Jun 2019 12:27:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5BB087CAC;
	Fri, 14 Jun 2019 12:27:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EE301BF344
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 12:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7BC6B8655C
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 12:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GBx6cQuCxIIS for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 12:27:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EF16885FA4
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 12:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QxUKDdY2dKpoYGcE4+TvUL/5FWjEOYf2V7NOvYst/OY=; b=Jhve8YJcuersR0vM8sELxrHaP
 GfdkAw8sRhMjj2lQASFIotkwAlHdA0Aacss9m4SyklG6PGhfdT11lREyD7IoOZ/Rbwd7jvU7RSL2I
 NwSxQ4Vj/txHuukYGmgNxwTRvqPpX3fo8CWcTSwSwdSxceji+sxS8N6ybSVSv9qcP8cBViYJkgX/a
 cn4yquF7ua1eLa48mNq+b8CTEH+EibrtV63t1nMVgdKA6jHmCyv2DXNpE7If8uZSnJK7aDRHyLGi6
 AQdSMsmihP2b3AFGHWK6RgtDeolehY1tN4w4k04Hwj2rWXSyP+dKejiQNCWL+NJtJo5TXX8UBElGk
 U8/wu12Tg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hblIm-0007fe-0U; Fri, 14 Jun 2019 12:27:28 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id C62FC2040DE62; Fri, 14 Jun 2019 14:27:26 +0200 (CEST)
Date: Fri, 14 Jun 2019 14:27:26 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
Message-ID: <20190614122726.GL3436@hirez.programming.kicks-ass.net>
References: <20190611212003.26382-1-dima@arista.com>
 <8736kff6q3.fsf@vitty.brq.redhat.com>
 <20190614082807.GV3436@hirez.programming.kicks-ass.net>
 <877e9o7a4e.fsf@vitty.brq.redhat.com>
 <cb9e1645-98c2-4341-d6da-4effa4f57fb1@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb9e1645-98c2-4341-d6da-4effa4f57fb1@arista.com>
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
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 "Michael Kelley \(EOSG\)" <Michael.H.Kelley@microsoft.com>,
 Ingo Molnar <mingo@redhat.com>, Roman Kagan <rkagan@virtuozzo.com>,
 Mohammed Gamal <mmorsy@redhat.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org, devel@linuxdriverproject.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 14, 2019 at 12:50:51PM +0100, Dmitry Safonov wrote:
> On 6/14/19 11:08 AM, Vitaly Kuznetsov wrote:
> > Peter Zijlstra <peterz@infradead.org> writes:
> > 
> >> @@ -182,7 +182,7 @@ void set_hv_tscchange_cb(void (*cb)(void))
> >>  	struct hv_reenlightenment_control re_ctrl = {
> >>  		.vector = HYPERV_REENLIGHTENMENT_VECTOR,
> >>  		.enabled = 1,
> >> -		.target_vp = hv_vp_index[smp_processor_id()]
> >> +		.target_vp = hv_vp_index[raw_smp_processor_id()]
> >>  	};
> >>  	struct hv_tsc_emulation_control emu_ctrl = {.enabled = 1};
> >>  
> > 
> > Yes, this should do, thanks! I'd also suggest to leave a comment like
> > 	/* 
> >          * This function can get preemted and migrate to a different CPU
> > 	 * but this doesn't matter. We just need to assign
> > 	 * reenlightenment notification to some online CPU. In case this
> >          * CPU goes offline, hv_cpu_die() will re-assign it to some
> >  	 * other online CPU.
> > 	 */
> 
> What if the cpu goes down just before wrmsrl()?
> I mean, hv_cpu_die() will reassign another cpu, but this thread will be
> resumed on some other cpu and will write cpu number which is at that
> moment already down?
> 
> (probably I miss something)
> 
> And I presume it's guaranteed that during hv_cpu_die() no other cpu may
> go down:
> :	new_cpu = cpumask_any_but(cpu_online_mask, cpu);
> :	re_ctrl.target_vp = hv_vp_index[new_cpu];
> :	wrmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));

Then cpus_read_lock() is the right interface, not preempt_disable().

I know you probably can't change the HV interface, but I'm thinking its
rather daft you have to specify a CPU at all for this. The HV can just
pick one and send the notification there, who cares.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
