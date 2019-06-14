Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC9D460EA
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 16:35:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0612684F58;
	Fri, 14 Jun 2019 14:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ODFbW65d4wG; Fri, 14 Jun 2019 14:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1D33848A9;
	Fri, 14 Jun 2019 14:34:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB7081BF362
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:34:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E3F6E87D1A
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:34:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z7mxVt9SYU80 for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 14:34:57 +0000 (UTC)
X-Greylist: delayed 00:06:16 by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 145B387D15
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:34:57 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c66so2628951wmf.0
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 07:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gJhQ1swIhwsziMzQ39z2HtlgHPGl8G/dIf/ljZ3Elzc=;
 b=NzGe0lBZPlBdzTofmXIqrp22eBCKs83VYeCnTK1eLSFKeAtWNjdsyZ2C+eNgP34v6z
 egu+yF4BKK1a/sX3NPASmkynDghdKukYbeAAArjve9Vm9PVY37mF1MlfL6i7cnC4S/jk
 0jlTWuGX3rjIy7t9ZjO+eB1yi8wAYgeGDeHIDst0kFOxPIx1gWQC3mqbmK/Z0JzH8lOh
 15Q/Ju47sxgD5mGMCu2/Jq0peO7YPgQHySPoTjD3MDzwE8D6Ab+JiHN4+eYCfR9qeC1z
 ou79yxXjD2bH/FKleRdybm5V1f34MAS6rLu1cvz+J6VpQVOpJ7u3D0PYOLlSoNPlkZpK
 Dp0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gJhQ1swIhwsziMzQ39z2HtlgHPGl8G/dIf/ljZ3Elzc=;
 b=c4oqXCYDE7GbKOP7Q94h3F5YMTDM3HCNikVQP0OxJLqxVWHPd2wiKVM7MgwSiFefD9
 IV7Q3Lk/gkNlDaNS5bACnf9v2UN6KPhKNYHR3fmZnu5b5XFEO5gY+JbPExz6I5xBfTfS
 G6M+kCJGSoZebo+ym3nBI0FkUTU4NU5+yV6xfecyzAgWCeH3rM0oeOtkeX+nq0YETPOI
 7ZrhclqIrqkKGU58nhzNgrSWPFts1jVpmbV9KzXNM4oAHnzlAVL3BzYta2LSBRT6N0yw
 U3iAHKN7voF9RfDi20PL58Zm8PUp1JNayeh0xk01WhWFANpYHNP5tnXgJghZSMgsNCCh
 GodA==
X-Gm-Message-State: APjAAAUN6aZIIeWdDbn9Ed1yrzxRtNCYpaeipi2QEPN7wIsuk/Gy0rLR
 j7Z2Wfo+E9kRW+iznPpftbGWUo+OFsQ=
X-Google-Smtp-Source: APXvYqzSaBn/LW5PNl3Fw68CoiWJ8zHyUfbFM0QEo1S/tMx9V8OOACrj70RsjtKYpezFPjq9p2+eYw==
X-Received: by 2002:a1c:208c:: with SMTP id g134mr8349611wmg.112.1560522519747; 
 Fri, 14 Jun 2019 07:28:39 -0700 (PDT)
Received: from [10.83.36.153] ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id f2sm4990720wrq.48.2019.06.14.07.28.37
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 07:28:38 -0700 (PDT)
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
To: Peter Zijlstra <peterz@infradead.org>
References: <20190611212003.26382-1-dima@arista.com>
 <8736kff6q3.fsf@vitty.brq.redhat.com>
 <20190614082807.GV3436@hirez.programming.kicks-ass.net>
 <877e9o7a4e.fsf@vitty.brq.redhat.com>
 <cb9e1645-98c2-4341-d6da-4effa4f57fb1@arista.com>
 <20190614122726.GL3436@hirez.programming.kicks-ass.net>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <d0ea735e-487e-8205-9415-8708a686ede9@arista.com>
Date: Fri, 14 Jun 2019 15:28:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190614122726.GL3436@hirez.programming.kicks-ass.net>
Content-Language: en-US
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
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
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



On 6/14/19 1:27 PM, Peter Zijlstra wrote:
> On Fri, Jun 14, 2019 at 12:50:51PM +0100, Dmitry Safonov wrote:
>> On 6/14/19 11:08 AM, Vitaly Kuznetsov wrote:
>>> Peter Zijlstra <peterz@infradead.org> writes:
>>>
>>>> @@ -182,7 +182,7 @@ void set_hv_tscchange_cb(void (*cb)(void))
>>>>  	struct hv_reenlightenment_control re_ctrl = {
>>>>  		.vector = HYPERV_REENLIGHTENMENT_VECTOR,
>>>>  		.enabled = 1,
>>>> -		.target_vp = hv_vp_index[smp_processor_id()]
>>>> +		.target_vp = hv_vp_index[raw_smp_processor_id()]
>>>>  	};
>>>>  	struct hv_tsc_emulation_control emu_ctrl = {.enabled = 1};
>>>>  
>>>
>>> Yes, this should do, thanks! I'd also suggest to leave a comment like
>>> 	/* 
>>>          * This function can get preemted and migrate to a different CPU
>>> 	 * but this doesn't matter. We just need to assign
>>> 	 * reenlightenment notification to some online CPU. In case this
>>>          * CPU goes offline, hv_cpu_die() will re-assign it to some
>>>  	 * other online CPU.
>>> 	 */
>>
>> What if the cpu goes down just before wrmsrl()?
>> I mean, hv_cpu_die() will reassign another cpu, but this thread will be
>> resumed on some other cpu and will write cpu number which is at that
>> moment already down?
>>
>> (probably I miss something)
>>
>> And I presume it's guaranteed that during hv_cpu_die() no other cpu may
>> go down:
>> :	new_cpu = cpumask_any_but(cpu_online_mask, cpu);
>> :	re_ctrl.target_vp = hv_vp_index[new_cpu];
>> :	wrmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));
> 
> Then cpus_read_lock() is the right interface, not preempt_disable().
> 
> I know you probably can't change the HV interface, but I'm thinking its
> rather daft you have to specify a CPU at all for this. The HV can just
> pick one and send the notification there, who cares.

Heh, I thought cpus_read_lock() is more "internal" api and
preempt_diable() is prefered ;-)

Will send v2 with the suggested comment and cpus_read_lock().

-- 
          Dima
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
