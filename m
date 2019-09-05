Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E318AA3EC
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 15:11:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 548A087CBE;
	Thu,  5 Sep 2019 13:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uImFNGXfQQkx; Thu,  5 Sep 2019 13:11:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A06587CA3;
	Thu,  5 Sep 2019 13:11:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A1151BF681
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 13:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5337E873CE
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 13:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A1Zj3R044RZt for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 13:11:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 733728700D
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 13:11:38 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BC131C0578C9
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 13:11:37 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id j3so978762wrn.7
 for <devel@linuxdriverproject.org>; Thu, 05 Sep 2019 06:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=9ANyZ4dBkBOltXnKi+WoWQpmuFWiDil0u88wFq4AYQY=;
 b=hcoYxGVgX21dvumudVn6f3jZpQVCCXefGKmosmTfjrlAaYIaKUncZFio7p6dNlzTWL
 0OGjCM2MZBDD2aDJpjVgFPj/q4SF/wHktFOhcR+M8XiBjzKijXKmaFAHC6mGuQUY56b5
 u7uxiEXvHDYxaYA2lwBNKdc3OaxF0bIZmKhroT3VLYER/kpTWt5aDrcQiHT969IJ4o5V
 W/+achQEC8Csb2t2GmuIVGxnuvI8JJo04qgoBgZV86A1/Hr38ndf+rni2fCU5N5+9dDQ
 ezrml3wRxsu0AoHnIg9xx0Wk4SGtIWfBatwkJQo2zQ1LYk0xOsx65AaGSmfr+q1RsDMl
 5Krg==
X-Gm-Message-State: APjAAAXOg7bb7Wbv89+6mKG6VOetHuszEorIj35ig3nSbHhNKMpp2HEB
 XgAi7TJoD4Jw0sov1LYdteZEAYYjwYOddNbztE32due50jARTbMD9Hi4coEYo/ioGGxwuEdXkcH
 60lhbOI6UMH8Hwkpm86mf7ge1
X-Received: by 2002:a1c:80ca:: with SMTP id b193mr2630538wmd.171.1567689095197; 
 Thu, 05 Sep 2019 06:11:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyKbK6O+n/cVqLS49y3v2z3Wc3ajQWQx/waHdOI+hpMRHK7GNQBFj0JYwrQL53NYvHAotP2eA==
X-Received: by 2002:a1c:80ca:: with SMTP id b193mr2630501wmd.171.1567689094909; 
 Thu, 05 Sep 2019 06:11:34 -0700 (PDT)
Received: from vitty.brq.redhat.com (nat-pool-brq-t.redhat.com.
 [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id x5sm3093960wrg.69.2019.09.05.06.11.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 06:11:34 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Wanpeng Li <kernellwp@gmail.com>,
 syzbot <syzbot+dff25ee91f0c7d5c1695@syzkaller.appspotmail.com>
Subject: Re: general protection fault in __apic_accept_irq
In-Reply-To: <CANRm+CxBdFjVrYzAe_Rs=v6BMSq9Gx+ngDrEitK6aez=kMq2XQ@mail.gmail.com>
References: <000000000000e3072b0591ca1937@google.com>
 <CANRm+CxBdFjVrYzAe_Rs=v6BMSq9Gx+ngDrEitK6aez=kMq2XQ@mail.gmail.com>
Date: Thu, 05 Sep 2019 15:11:33 +0200
Message-ID: <87imq6khve.fsf@vitty.brq.redhat.com>
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
Cc: Sasha Levin <sashal@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 Paolo Bonzini <pbonzini@redhat.com>, kvm <kvm@vger.kernel.org>,
 Radim Krcmar <rkrcmar@redhat.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 the arch/x86 maintainers <x86@kernel.org>, syzkaller-bugs@googlegroups.com,
 LKML <linux-kernel@vger.kernel.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>, mikelley@microsoft.com,
 Wanpeng Li <wanpengli@tencent.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 devel@linuxdriverproject.org, Thomas Gleixner <tglx@linutronix.de>,
 Joerg Roedel <joro@8bytes.org>, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Wanpeng Li <kernellwp@gmail.com> writes:

> On Thu, 5 Sep 2019 at 16:53, syzbot
> <syzbot+dff25ee91f0c7d5c1695@syzkaller.appspotmail.com> wrote:
>>
>> Hello,
>>
>> syzbot found the following crash on:
>>
>> HEAD commit:    3b47fd5c Merge tag 'nfs-for-5.3-4' of git://git.linux-nfs...
>> git tree:       upstream
>> console output: https://syzkaller.appspot.com/x/log.txt?x=124af12a600000
>> kernel config:  https://syzkaller.appspot.com/x/.config?x=144488c6c6c6d2b6
>> dashboard link: https://syzkaller.appspot.com/bug?extid=dff25ee91f0c7d5c1695
>> compiler:       clang version 9.0.0 (/home/glider/llvm/clang
>> 80fee25776c2fb61e74c1ecb1a523375c2500b69)
>> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10954676600000
>> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1752fe0a600000
>>
>> The bug was bisected to:
>>
>> commit 0aa67255f54df192d29aec7ac6abb1249d45bda7
>> Author: Vitaly Kuznetsov <vkuznets@redhat.com>
>> Date:   Mon Nov 26 15:47:29 2018 +0000
>>
>>      x86/hyper-v: move synic/stimer control structures definitions to
>> hyperv-tlfs.h
>>
>> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=156128c1600000
>> console output: https://syzkaller.appspot.com/x/log.txt?x=136128c1600000
>>
>> IMPORTANT: if you fix the bug, please add the following tag to the commit:
>> Reported-by: syzbot+dff25ee91f0c7d5c1695@syzkaller.appspotmail.com
>> Fixes: 0aa67255f54d ("x86/hyper-v: move synic/stimer control structures
>> definitions to hyperv-tlfs.h")
>>
>> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000004 data
>> 0x94
>> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000004 data
>> 0x48c
>> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000004 data
>> 0x4ac
>> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000005 data
>> 0x1520
>> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000006 data
>> 0x15d4
>> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000007 data
>> 0x15c4
>> kasan: CONFIG_KASAN_INLINE enabled
>> kasan: GPF could be caused by NULL-ptr deref or user memory access
>> general protection fault: 0000 [#1] PREEMPT SMP KASAN
>> CPU: 0 PID: 9347 Comm: syz-executor665 Not tainted 5.3.0-rc7+ #0
>> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
>> Google 01/01/2011
>> RIP: 0010:__apic_accept_irq+0x46/0x740 arch/x86/kvm/lapic.c:1029
>
> Thanks for the report, I found the root cause, will send a patch soon.
>

I'm really interested in how any issue can be caused by 0aa67255f54d as
we just moved some definitions from a c file to a common header... (ok,
we did more than that, some structures gained '__packed' but it all
still seems legitimate to me and I can't recall any problems with
genuine Hyper-V...)

-- 
Vitaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
