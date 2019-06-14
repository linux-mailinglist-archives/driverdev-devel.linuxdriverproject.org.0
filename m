Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24145459F8
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 12:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 078BD8842E;
	Fri, 14 Jun 2019 10:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SS7FPxW4Y01V; Fri, 14 Jun 2019 10:08:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75ECC8841F;
	Fri, 14 Jun 2019 10:08:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AA051BF3E8
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 10:08:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 06A628697D
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 10:08:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9H_YU6T-04BC for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 10:08:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C400868BF
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 10:08:04 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id g135so1708648wme.4
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 03:08:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=rjUazryDHv7wuzJPfN35mvC+nqyi403EO56ab8UJ3vM=;
 b=TUyRaA48YguqELutZZNWvXt1rxcG812TsDrEwTjU0rVT5NKjXphmcmIDl36Wosriwr
 VqMM/pmiK6eBwU8664IIs2b/j2YJLAkPJUpWSa55VQg6vfhxy3Tkh54J5iCGbLiS1wwA
 KZUhP2lglIPMRaTA63Q4VX4/2mn102sx9ctxLqdLs6JVOjzvVbJJvBHoz8lsThSYzfzl
 mkKpG+jPVpkJovpedeAe3btbW/pJCSti4cQyfVx5269Gq0QY+RaFOQqYfHX/5fa1eTNA
 /4EzzDe33yO6fBYS+4gaZmKE/w5Hsa0PgYXs/2NNpTDVZPyLvhjPxV9W/79YHXrBrZ4w
 EyGg==
X-Gm-Message-State: APjAAAUZZd2BL6xZuLp7ch3LjXzUNqkTG5luQqKOt/fXPMaPFakIZ9E6
 /7bi0N8wBBrlAsagwAGgAow/Gg==
X-Google-Smtp-Source: APXvYqzCWohsnjsTkpzB4opXNwIILIOK7t34ke5ERFVDtWha+QAnoaQQBbp73Yhj7uy5IC+qUKcSIQ==
X-Received: by 2002:a1c:63d7:: with SMTP id x206mr7451274wmb.19.1560506882990; 
 Fri, 14 Jun 2019 03:08:02 -0700 (PDT)
Received: from vitty.brq.redhat.com (nat-pool-brq-t.redhat.com.
 [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id t7sm1683230wrn.52.2019.06.14.03.08.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 03:08:02 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
In-Reply-To: <20190614082807.GV3436@hirez.programming.kicks-ass.net>
References: <20190611212003.26382-1-dima@arista.com>
 <8736kff6q3.fsf@vitty.brq.redhat.com>
 <20190614082807.GV3436@hirez.programming.kicks-ass.net>
Date: Fri, 14 Jun 2019 12:08:01 +0200
Message-ID: <877e9o7a4e.fsf@vitty.brq.redhat.com>
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

Peter Zijlstra <peterz@infradead.org> writes:

> @@ -182,7 +182,7 @@ void set_hv_tscchange_cb(void (*cb)(void))
>  	struct hv_reenlightenment_control re_ctrl = {
>  		.vector = HYPERV_REENLIGHTENMENT_VECTOR,
>  		.enabled = 1,
> -		.target_vp = hv_vp_index[smp_processor_id()]
> +		.target_vp = hv_vp_index[raw_smp_processor_id()]
>  	};
>  	struct hv_tsc_emulation_control emu_ctrl = {.enabled = 1};
>  

Yes, this should do, thanks! I'd also suggest to leave a comment like
	/* 
         * This function can get preemted and migrate to a different CPU
	 * but this doesn't matter. We just need to assign
	 * reenlightenment notification to some online CPU. In case this
         * CPU goes offline, hv_cpu_die() will re-assign it to some
 	 * other online CPU.
	 */
  
-- 
Vitaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
