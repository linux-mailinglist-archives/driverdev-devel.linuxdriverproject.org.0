Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B5146C12
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 23:44:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D10187DB2;
	Fri, 14 Jun 2019 21:44:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VmIrDpNtcE4i; Fri, 14 Jun 2019 21:44:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35AC187D5A;
	Fri, 14 Jun 2019 21:44:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3E3D1BF291
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 21:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E0C57884F3
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 21:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MW9cztowM9hG for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 21:44:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 72B3B884EF
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 21:44:39 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n9so3988417wru.0
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 14:44:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Ld3jYaYOalugs6NakkhvxfE6gQQVFoIIwwhNaKu9MOs=;
 b=sg6xpEZs1IXdFDcCNRZGI98gmHz9/VdV2obKTzq3rcD9i8JAWxRq/SpUEqBrvut1BC
 SZjiiUwr1F7xEJ3yAi2yx2/Vsd3d38tcvjnmV0Lue8/GaPwDr0baxPxWu1tNzlBXq5Bt
 9+ULNILuOkBFbJhGOBHN/F2VRxQSHmZq7Gx4TOm2usILVFujTlIkSch2XP3sV9JAZ1N3
 T2HmnNhGvoxgOtmN+3RjuqNfJ1dzV5tvay3i/7k+eTX3kEhfq+v8KhyCwqkzFOUkZ8EI
 3YaNi8rbcZq1Zq1+d2pBIVUZGFDlzpjoWJxyrdzvqsw/4jdwqVePxZVv8ZTAg8MMQ1sw
 UErg==
X-Gm-Message-State: APjAAAX4eD9MelkKBMt/TSHDJmO8E6TdteqXy62N2fZRpy0igggut7d5
 zEhCFZcx+3CuhxgFjDu+l6y0BA==
X-Google-Smtp-Source: APXvYqwtUzuPcck2AHyIXDAtw0zg3eNPDxrY9SB60wA2LaOW4/UoaSEnBo/i0WOqLauPH2dS3zi6EA==
X-Received: by 2002:a5d:4a0e:: with SMTP id m14mr19268175wrq.91.1560548678052; 
 Fri, 14 Jun 2019 14:44:38 -0700 (PDT)
Received: from vitty.brq.redhat.com (ip-78-102-201-117.net.upcbroadband.cz.
 [78.102.201.117])
 by smtp.gmail.com with ESMTPSA id h23sm2938104wmb.25.2019.06.14.14.44.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 14:44:37 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
In-Reply-To: <20190614122726.GL3436@hirez.programming.kicks-ass.net>
References: <20190611212003.26382-1-dima@arista.com>
 <8736kff6q3.fsf@vitty.brq.redhat.com>
 <20190614082807.GV3436@hirez.programming.kicks-ass.net>
 <877e9o7a4e.fsf@vitty.brq.redhat.com>
 <cb9e1645-98c2-4341-d6da-4effa4f57fb1@arista.com>
 <20190614122726.GL3436@hirez.programming.kicks-ass.net>
Date: Fri, 14 Jun 2019 23:44:36 +0200
Message-ID: <87pnnf6dvf.fsf@vitty.brq.redhat.com>
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

>
> I know you probably can't change the HV interface, but I'm thinking its
> rather daft you have to specify a CPU at all for this. The HV can just
> pick one and send the notification there, who cares.

Generally speaking, hypervisor can't know if the CPU is offline (or
e.g. 'isolated') from guest's perspective so I think having an option to
specify affinity for reenlightenment notification is rather a good
thing, not bad.

(Actually, I don't remember if I tried specifying 'HV_ANY' (U32_MAX-1)
here to see what happens. But then I doubt it'll notice the fact that we 
offlined some CPU so we may get a totally unexpected IRQ there).

-- 
Vitaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
