Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ECE456F7
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 10:07:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91FCD87C37;
	Fri, 14 Jun 2019 08:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4IA7wb44Fea7; Fri, 14 Jun 2019 08:06:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35CB987C0D;
	Fri, 14 Jun 2019 08:06:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50F951BF3E9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 08:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4D8C087C9F
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 08:06:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T8gbxL5+xAzV for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 08:06:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B30387697
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 08:06:47 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a15so1313235wmj.5
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 01:06:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=brjrLWL4JqGzja9isRfXWMtKybZ6QGrjuL4EguZLxds=;
 b=Agibyyvzl/qOb9ZPnuFhl4i67rVA4uBhwpIlz8tq3iDF2tSUXym0Mjiwk2up9ih7Ri
 pZcMO2zsCPwXf607aLL1Ti+nI2ZWrMuhUBvx1Ee5ZLISxSIZywHNk18pTpdYbGKrv2m5
 JQCvHCjsOCYb75/SMUnOGnYKVXkcFm1WLV1MlcdbWdn9RvMV3w1HKQ5zT4LUb0vHLRxR
 hs9P8KKVfm23S1STw3AmQWvZXR+umS0zNOX1N48YPj7pPxqJ4Y20sjh6sAw+Y58mSYTr
 FvCDWJcTI7dr3wLjGsAfxKtnyfrh37mjs06xvT1J92z2x4Rfx+n8LZqlQt+zX3/dljTZ
 zkQQ==
X-Gm-Message-State: APjAAAV6fzjOGAlG3Ar8le7BayD+z+O8lj2zcfnW0plFvbF93F5id9Pf
 3If9ZiOEYcLNG1Inzt542ZP5YQ==
X-Google-Smtp-Source: APXvYqwHJDyTaSrq4WgrXVTA7Ep8ta1CbNp62od8lhVoOZy25e7JaJ95qKwKmYFkG2m/gFo3I4gJSg==
X-Received: by 2002:a1c:7d4e:: with SMTP id y75mr6838905wmc.169.1560499605862; 
 Fri, 14 Jun 2019 01:06:45 -0700 (PDT)
Received: from vitty.brq.redhat.com (nat-pool-brq-t.redhat.com.
 [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id x8sm3073690wmc.5.2019.06.14.01.06.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 01:06:45 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
In-Reply-To: <alpine.DEB.2.21.1906132059020.1791@nanos.tec.linutronix.de>
References: <20190611212003.26382-1-dima@arista.com>
 <8736kff6q3.fsf@vitty.brq.redhat.com>
 <alpine.DEB.2.21.1906132059020.1791@nanos.tec.linutronix.de>
Date: Fri, 14 Jun 2019 10:06:43 +0200
Message-ID: <87a7ek7fqk.fsf@vitty.brq.redhat.com>
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
 x86@kernel.org, Stephen Hemminger <sthemmin@microsoft.com>,
 kvm@vger.kernel.org, Dmitry Safonov <dima@arista.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
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

Thomas Gleixner <tglx@linutronix.de> writes:

> On Wed, 12 Jun 2019, Vitaly Kuznetsov wrote:
>> Dmitry Safonov <dima@arista.com> writes:
>> > diff --git a/arch/x86/hyperv/hv_init.c b/arch/x86/hyperv/hv_init.c
>> > index 1608050e9df9..0bdd79ecbff8 100644
>> > --- a/arch/x86/hyperv/hv_init.c
>> > +++ b/arch/x86/hyperv/hv_init.c
>> > @@ -91,7 +91,7 @@ EXPORT_SYMBOL_GPL(hv_max_vp_index);
>> >  static int hv_cpu_init(unsigned int cpu)
>> >  {
>> >  	u64 msr_vp_index;
>> > -	struct hv_vp_assist_page **hvp = &hv_vp_assist_page[smp_processor_id()];
>> > +	struct hv_vp_assist_page **hvp = &hv_vp_assist_page[cpu];
>> >  	void **input_arg;
>> >  	struct page *pg;
>> >  
>> > @@ -103,7 +103,7 @@ static int hv_cpu_init(unsigned int cpu)
>> >  
>> >  	hv_get_vp_index(msr_vp_index);
>> >  
>> > -	hv_vp_index[smp_processor_id()] = msr_vp_index;
>> > +	hv_vp_index[cpu] = msr_vp_index;
>> >  
>> >  	if (msr_vp_index > hv_max_vp_index)
>> >  		hv_max_vp_index = msr_vp_index;
>> 
>> The above is unrelated cleanup (as cpu == smp_processor_id() for
>> CPUHP_AP_ONLINE_DYN callbacks), right? As I'm pretty sure these can'd be
>> preempted.
>
> They can be preempted, but they are guaranteed to run on the upcoming CPU,
> i.e. smp_processor_id() is allowed even in preemptible context as the task
> cannot migrate.
>

Ah, right, thanks! The guarantee that they don't migrate should be enough.

-- 
Vitaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
