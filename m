Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0724946BF3
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 23:36:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72B1987916;
	Fri, 14 Jun 2019 21:36:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m86GFL8p9jum; Fri, 14 Jun 2019 21:36:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6BE787ADF;
	Fri, 14 Jun 2019 21:36:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 11DEA1BF291
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 21:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0E39986A72
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 21:36:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6AGmuwSrNoVM for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 21:36:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CE22786A61
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 21:36:12 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id v14so3952197wrr.4
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:36:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=bCvKwbWJesvWCy0sKuZ4V0I/xR2OhzdiNEAy87dgHgM=;
 b=TX7AESPmIha7VB4owP7FlYsBsqfbgKiOHzacJT4ZQhTZ+1isbe4syzS5GLYo3ueCBt
 8ecd0ZpHZMlWlib6kBsrefBLXPVaZ1qA1WeuxBlaBz+pIu3YJwBLUFRPL6gBMLh4PVEY
 pjDXcT54WEAFLkC/GsoruKASL6UIei/mzq21DS59DDjXBjsZ4A9wJZmcpNxIK2EUGKfi
 Ei7TfJ0Xc7n8dvIIFOtHtiwPTY+Kd+tAbzG4HnsZOKaKlhdlx8/YO2NJf3tmaCPvO42V
 SknP2NsLcAw6u4P5kK05d2gD/BkkxgjBrcFGBsN2OD7F5IuLdNgomxSoJSGnoMgbACtm
 CnwQ==
X-Gm-Message-State: APjAAAVXy/w2gE4QXueYvBeL+vhhGb7lP9Sq8g5ktVH/fQH4XTaMt6bR
 o88xAAORouPBuV6hcwmA1CfIOg==
X-Google-Smtp-Source: APXvYqyaz9SMMAfY94vjBsF6aHQAfX+3a3A9OUyl0nhTjKgPhD32zJqRx7RQJvJahMVOLtJk25eU4Q==
X-Received: by 2002:a5d:500d:: with SMTP id e13mr3847025wrt.337.1560548171165; 
 Fri, 14 Jun 2019 14:36:11 -0700 (PDT)
Received: from vitty.brq.redhat.com (ip-78-102-201-117.net.upcbroadband.cz.
 [78.102.201.117])
 by smtp.gmail.com with ESMTPSA id y6sm2905993wma.6.2019.06.14.14.36.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 14:36:10 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Dmitry Safonov <dima@arista.com>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
In-Reply-To: <cb9e1645-98c2-4341-d6da-4effa4f57fb1@arista.com>
References: <20190611212003.26382-1-dima@arista.com>
 <8736kff6q3.fsf@vitty.brq.redhat.com>
 <20190614082807.GV3436@hirez.programming.kicks-ass.net>
 <877e9o7a4e.fsf@vitty.brq.redhat.com>
 <cb9e1645-98c2-4341-d6da-4effa4f57fb1@arista.com>
Date: Fri, 14 Jun 2019 23:36:09 +0200
Message-ID: <87sgsb6e9i.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
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
 Stephen Hemminger <sthemmin@microsoft.com>, kvm@vger.kernel.org,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, devel@linuxdriverproject.org, "Michael
 Kelley \(EOSG\)" <Michael.H.Kelley@microsoft.com>,
 Prasanna Panchamukhi <panchamukhi@arista.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Roman Kagan <rkagan@virtuozzo.com>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mohammed Gamal <mmorsy@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dmitry Safonov <dima@arista.com> writes:

> On 6/14/19 11:08 AM, Vitaly Kuznetsov wrote:
>> Peter Zijlstra <peterz@infradead.org> writes:
>> 
>>> @@ -182,7 +182,7 @@ void set_hv_tscchange_cb(void (*cb)(void))
>>>  	struct hv_reenlightenment_control re_ctrl = {
>>>  		.vector = HYPERV_REENLIGHTENMENT_VECTOR,
>>>  		.enabled = 1,
>>> -		.target_vp = hv_vp_index[smp_processor_id()]
>>> +		.target_vp = hv_vp_index[raw_smp_processor_id()]
>>>  	};
>>>  	struct hv_tsc_emulation_control emu_ctrl = {.enabled = 1};
>>>  
>> 
>> Yes, this should do, thanks! I'd also suggest to leave a comment like
>> 	/* 
>>          * This function can get preemted and migrate to a different CPU
>> 	 * but this doesn't matter. We just need to assign
>> 	 * reenlightenment notification to some online CPU. In case this
>>          * CPU goes offline, hv_cpu_die() will re-assign it to some
>>  	 * other online CPU.
>> 	 */
>
> What if the cpu goes down just before wrmsrl()?
> I mean, hv_cpu_die() will reassign another cpu, but this thread will be
> resumed on some other cpu and will write cpu number which is at that
> moment already down?
>

Right you are, we need to guarantee wrmsr() happens before the CPU gets
a chance to go offline: we don't save the cpu number anywhere, we just
read it with rdmsr() in hv_cpu_die().

>
> And I presume it's guaranteed that during hv_cpu_die() no other cpu may
> go down:
> :	new_cpu = cpumask_any_but(cpu_online_mask, cpu);
> :	re_ctrl.target_vp = hv_vp_index[new_cpu];
> :	wrmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));

I *think* I got convinced that CPUs don't go offline simultaneously when
I was writing this.

-- 
Vitaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
