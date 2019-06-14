Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B149B45BF6
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 13:59:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E0D18785E;
	Fri, 14 Jun 2019 11:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l-ei5Act3O+L; Fri, 14 Jun 2019 11:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2291A85E12;
	Fri, 14 Jun 2019 11:59:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E44A11BF23B
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 11:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E0DC2860ED
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 11:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ukDZS-nKE6IA for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 11:59:16 +0000 (UTC)
X-Greylist: delayed 00:08:21 by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1647C85E12
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 11:59:16 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id v14so2247582wrr.4
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 04:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=j/mrTktDdZBIOs0fb7bg3GlLfNmxkoW9xlbMZCkSZ0I=;
 b=X57dInWjSfJLzXwFIEJdQ5q6FsaS7CvV1EF+IkBVFhkzOOrUcEJ8GYohyKra30O9bL
 DgC889Z97zOmyYvArr3dNR5uguITXF/4k25N90biUzdDwX1YLc0K55cClHn5hD/m9DQr
 GdX6zoEcAVANQOs9OMkNUHsBNPvc6+jXi/+cnRu1AqqUYVMizGmHhzJuymsJAs72qSnY
 e8F3/ZPbxbdHSq7MdgpmfoT4ec4DS0vA3tZVPQHXLmbCs/pEXNbRSZdJNq/EDlac9ieS
 yGsbdUapKayV7E6lyKh04LQsF1MKh2CokJE48bCM7aGEJOUNIYWhm+teYHC79YzfoQJa
 GwVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j/mrTktDdZBIOs0fb7bg3GlLfNmxkoW9xlbMZCkSZ0I=;
 b=F0rULgfVgaYnmD4cs8lurfP6HWcEAZErjr/CCAF3CzG70YcUTSZaIggangYas8ON/S
 9vlr8h34dOdKXbmgjPhF10AZtOmuPWGxCpUU2IZeO5A3tisLQrZS6aCiNOReYOYsCNXc
 Lel9yJPmbWevNFAzSRRP+zPhyFvy4Y05/FQz4r/K6KgwIHyCw8YxZQZADHS+mMFOYktu
 CzMm3JlJZ010dHIE+ZWcAUkiYtt+8F30oOIcLA1eKvA9iDhxfVDxdEC95g5GzhUUseqc
 4gjkwLGrLOkRmHVy2JIg/l7EzY/RM4YBfNKU9fLKeV/CZbYdW4VY/YzStXQhI4Ida2Ao
 esag==
X-Gm-Message-State: APjAAAUiC4mgmygA/kyy5ynqjVkHZ6IoayDdZHuQ/AQ8cd8Zb7vi3h1Y
 ZwYHvlDWDvpvFNU+pDvOaDQiezZsUAo=
X-Google-Smtp-Source: APXvYqzAYHdO6w8DBfi5lPDXVFzFFl/H9Zr+6ay+lTLK6DZ+DrLmMao9TSeNccrggbh94rgdTebIrA==
X-Received: by 2002:a5d:540e:: with SMTP id g14mr5857286wrv.346.1560513053775; 
 Fri, 14 Jun 2019 04:50:53 -0700 (PDT)
Received: from [10.83.36.153] ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id x129sm4138600wmg.44.2019.06.14.04.50.52
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 04:50:53 -0700 (PDT)
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
To: Vitaly Kuznetsov <vkuznets@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
References: <20190611212003.26382-1-dima@arista.com>
 <8736kff6q3.fsf@vitty.brq.redhat.com>
 <20190614082807.GV3436@hirez.programming.kicks-ass.net>
 <877e9o7a4e.fsf@vitty.brq.redhat.com>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <cb9e1645-98c2-4341-d6da-4effa4f57fb1@arista.com>
Date: Fri, 14 Jun 2019 12:50:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <877e9o7a4e.fsf@vitty.brq.redhat.com>
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Stephen Hemminger <sthemmin@microsoft.com>, kvm@vger.kernel.org,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, devel@linuxdriverproject.org,
 "Michael Kelley \(EOSG\)" <Michael.H.Kelley@microsoft.com>,
 Prasanna Panchamukhi <panchamukhi@arista.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Roman Kagan <rkagan@virtuozzo.com>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mohammed Gamal <mmorsy@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/14/19 11:08 AM, Vitaly Kuznetsov wrote:
> Peter Zijlstra <peterz@infradead.org> writes:
> 
>> @@ -182,7 +182,7 @@ void set_hv_tscchange_cb(void (*cb)(void))
>>  	struct hv_reenlightenment_control re_ctrl = {
>>  		.vector = HYPERV_REENLIGHTENMENT_VECTOR,
>>  		.enabled = 1,
>> -		.target_vp = hv_vp_index[smp_processor_id()]
>> +		.target_vp = hv_vp_index[raw_smp_processor_id()]
>>  	};
>>  	struct hv_tsc_emulation_control emu_ctrl = {.enabled = 1};
>>  
> 
> Yes, this should do, thanks! I'd also suggest to leave a comment like
> 	/* 
>          * This function can get preemted and migrate to a different CPU
> 	 * but this doesn't matter. We just need to assign
> 	 * reenlightenment notification to some online CPU. In case this
>          * CPU goes offline, hv_cpu_die() will re-assign it to some
>  	 * other online CPU.
> 	 */

What if the cpu goes down just before wrmsrl()?
I mean, hv_cpu_die() will reassign another cpu, but this thread will be
resumed on some other cpu and will write cpu number which is at that
moment already down?

(probably I miss something)

And I presume it's guaranteed that during hv_cpu_die() no other cpu may
go down:
:	new_cpu = cpumask_any_but(cpu_online_mask, cpu);
:	re_ctrl.target_vp = hv_vp_index[new_cpu];
:	wrmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));

-- 
          Dima
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
