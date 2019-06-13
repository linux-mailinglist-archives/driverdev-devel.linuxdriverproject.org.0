Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE3244C37
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 21:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D32B87841;
	Thu, 13 Jun 2019 19:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8LOo43RqGzow; Thu, 13 Jun 2019 19:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A174B877B4;
	Thu, 13 Jun 2019 19:35:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EFFF1BF3FB
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 19:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1C43E88302
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 19:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VDoAySRROIem for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 19:35:47 +0000 (UTC)
X-Greylist: delayed 00:34:27 by SQLgrey-1.7.6
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 477CD881EC
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 19:35:47 +0000 (UTC)
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hbUy1-0000Pv-7Q; Thu, 13 Jun 2019 21:00:57 +0200
Date: Thu, 13 Jun 2019 21:00:56 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vitaly Kuznetsov <vkuznets@redhat.com>
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
In-Reply-To: <8736kff6q3.fsf@vitty.brq.redhat.com>
Message-ID: <alpine.DEB.2.21.1906132059020.1791@nanos.tec.linutronix.de>
References: <20190611212003.26382-1-dima@arista.com>
 <8736kff6q3.fsf@vitty.brq.redhat.com>
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 x86@kernel.org, Stephen Hemminger <sthemmin@microsoft.com>,
 kvm@vger.kernel.org, Dmitry Safonov <dima@arista.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 =?ISO-8859-2?Q?Radim_Kr=E8m=E1=F8?= <rkrcmar@redhat.com>,
 linux-kernel@vger.kernel.org, devel@linuxdriverproject.org,
 "Michael Kelley \(EOSG\)" <Michael.H.Kelley@microsoft.com>,
 Prasanna Panchamukhi <panchamukhi@arista.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Roman Kagan <rkagan@virtuozzo.com>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Mohammed Gamal <mmorsy@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 12 Jun 2019, Vitaly Kuznetsov wrote:
> Dmitry Safonov <dima@arista.com> writes:
> > diff --git a/arch/x86/hyperv/hv_init.c b/arch/x86/hyperv/hv_init.c
> > index 1608050e9df9..0bdd79ecbff8 100644
> > --- a/arch/x86/hyperv/hv_init.c
> > +++ b/arch/x86/hyperv/hv_init.c
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

They can be preempted, but they are guaranteed to run on the upcoming CPU,
i.e. smp_processor_id() is allowed even in preemptible context as the task
cannot migrate.

Thanks,

	tglx
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
