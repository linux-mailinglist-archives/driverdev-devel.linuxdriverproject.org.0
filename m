Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C67AB14A
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Sep 2019 05:41:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E5107875BE;
	Fri,  6 Sep 2019 03:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oydxwGpda8Uc; Fri,  6 Sep 2019 03:41:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 630C0875BC;
	Fri,  6 Sep 2019 03:41:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8FAD1BF32A
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 03:41:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C382887C7E
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 03:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kabxkzBwX+aj for <devel@linuxdriverproject.org>;
 Fri,  6 Sep 2019 03:41:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DED178489C
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 03:41:37 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id v7so3830035oib.4
 for <devel@linuxdriverproject.org>; Thu, 05 Sep 2019 20:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/UWj5FYLQqxX8OK3sv5wN+QK4oOfih0NXrF9rNtYsag=;
 b=Jwso5vdA/lIl8N41TCTTc1ljotibPSixhzpLha9iSRNu+QyBOWBJ4/Et7LNSW0G7cZ
 +UfTt0OOYNLi88obnLjjcXPTaavTrdpi8bwR1Bqr33m/UD2YpKnxPe0t9I0tVfK58vRd
 DAitJHEtN3qkUTh4NyI6DmY0CWHgrQzf+dTiLzSeYFwLnW2CWm93fFe3sjRJBdk38Nu9
 8HCULpK/SLYYKQETess/USE8k3HoJ4nuAuUriZhMLzNNeqjE83pu5k1IW9MB41IwlmRP
 yHGvnnrRFvJpx0LJ9o9RbU5UXxIDLKxoR1GHv56DNKI+eQLhcG9YzlbvNfgzFSFgTe3R
 PyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/UWj5FYLQqxX8OK3sv5wN+QK4oOfih0NXrF9rNtYsag=;
 b=teOIaHjhB8/mIC8MCxvy8ffU/hF6FM8UuWZkMhYu1ifqKhmLGFcdSuIZEm61HRj9yR
 Q8jrSutZVS0vytyL+NaYO26oHWyEcgiA8MNs3X0Rq8iqoT+8QVDSKw6phpKUYpzns+U0
 R8uKGDZCqCqt2f1AuaP8kgdBpeZABzkG1zUXin1PD+HYUfElfGWJp+i2ndGl6TS8nou0
 HaqUhtgU6YV4sJGbC7mhiaCR54yJoxY0I7D7F7z3kcHRFB8ROpZWYvdv6QuPxmuXo8JH
 VzSgakEZqI5/aNQtYtttQeTrS3auYPFvkT7HtaIfkjyB9WZV4118f2HX7+3BiW9o6/fh
 CyfQ==
X-Gm-Message-State: APjAAAX4kpdAARJgh8TKUcnDsrXn3aNC/Z6vAiY3/nGZsGbx0fCcNX9Q
 3TjrEl3EihUaSY2lpwcbe6odoUoWtktFMe3AjQM=
X-Google-Smtp-Source: APXvYqymERoKyHwQliD27rahQ8CUHy8GwvwRRgkUWzWzRpIGHhyNOVA+Ajrg2UQ28xLhSQ4dtMlYAuV8JJL/TO5v3GE=
X-Received: by 2002:a54:4814:: with SMTP id j20mr5337898oij.33.1567741296954; 
 Thu, 05 Sep 2019 20:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000e3072b0591ca1937@google.com>
 <CANRm+CxBdFjVrYzAe_Rs=v6BMSq9Gx+ngDrEitK6aez=kMq2XQ@mail.gmail.com>
 <87imq6khve.fsf@vitty.brq.redhat.com>
In-Reply-To: <87imq6khve.fsf@vitty.brq.redhat.com>
From: Wanpeng Li <kernellwp@gmail.com>
Date: Fri, 6 Sep 2019 11:41:24 +0800
Message-ID: <CANRm+CwCncK=ZUg9PwT2tgrg3-7MO40n+b0HnShhNwBp2PQH3A@mail.gmail.com>
Subject: Re: general protection fault in __apic_accept_irq
To: Vitaly Kuznetsov <vkuznets@redhat.com>
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
Cc: Sasha Levin <sashal@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, mikelley@microsoft.com,
 kvm <kvm@vger.kernel.org>, Radim Krcmar <rkrcmar@redhat.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 the arch/x86 maintainers <x86@kernel.org>, syzkaller-bugs@googlegroups.com,
 LKML <linux-kernel@vger.kernel.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 syzbot <syzbot+dff25ee91f0c7d5c1695@syzkaller.appspotmail.com>,
 Wanpeng Li <wanpengli@tencent.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 devel@linuxdriverproject.org, Thomas Gleixner <tglx@linutronix.de>,
 Joerg Roedel <joro@8bytes.org>, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 5 Sep 2019 at 21:11, Vitaly Kuznetsov <vkuznets@redhat.com> wrote:
>
> Wanpeng Li <kernellwp@gmail.com> writes:
>
> > On Thu, 5 Sep 2019 at 16:53, syzbot
> > <syzbot+dff25ee91f0c7d5c1695@syzkaller.appspotmail.com> wrote:
> >>
> >> Hello,
> >>
> >> syzbot found the following crash on:
> >>
> >> HEAD commit:    3b47fd5c Merge tag 'nfs-for-5.3-4' of git://git.linux-nfs...
> >> git tree:       upstream
> >> console output: https://syzkaller.appspot.com/x/log.txt?x=124af12a600000
> >> kernel config:  https://syzkaller.appspot.com/x/.config?x=144488c6c6c6d2b6
> >> dashboard link: https://syzkaller.appspot.com/bug?extid=dff25ee91f0c7d5c1695
> >> compiler:       clang version 9.0.0 (/home/glider/llvm/clang
> >> 80fee25776c2fb61e74c1ecb1a523375c2500b69)
> >> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10954676600000
> >> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1752fe0a600000
> >>
> >> The bug was bisected to:
> >>
> >> commit 0aa67255f54df192d29aec7ac6abb1249d45bda7
> >> Author: Vitaly Kuznetsov <vkuznets@redhat.com>
> >> Date:   Mon Nov 26 15:47:29 2018 +0000
> >>
> >>      x86/hyper-v: move synic/stimer control structures definitions to
> >> hyperv-tlfs.h
> >>
> >> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=156128c1600000
> >> console output: https://syzkaller.appspot.com/x/log.txt?x=136128c1600000
> >>
> >> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> >> Reported-by: syzbot+dff25ee91f0c7d5c1695@syzkaller.appspotmail.com
> >> Fixes: 0aa67255f54d ("x86/hyper-v: move synic/stimer control structures
> >> definitions to hyperv-tlfs.h")
> >>
> >> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000004 data
> >> 0x94
> >> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000004 data
> >> 0x48c
> >> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000004 data
> >> 0x4ac
> >> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000005 data
> >> 0x1520
> >> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000006 data
> >> 0x15d4
> >> kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000007 data
> >> 0x15c4
> >> kasan: CONFIG_KASAN_INLINE enabled
> >> kasan: GPF could be caused by NULL-ptr deref or user memory access
> >> general protection fault: 0000 [#1] PREEMPT SMP KASAN
> >> CPU: 0 PID: 9347 Comm: syz-executor665 Not tainted 5.3.0-rc7+ #0
> >> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> >> Google 01/01/2011
> >> RIP: 0010:__apic_accept_irq+0x46/0x740 arch/x86/kvm/lapic.c:1029
> >
> > Thanks for the report, I found the root cause, will send a patch soon.
> >
>
> I'm really interested in how any issue can be caused by 0aa67255f54d as
> we just moved some definitions from a c file to a common header... (ok,
> we did more than that, some structures gained '__packed' but it all
> still seems legitimate to me and I can't recall any problems with
> genuine Hyper-V...)

Yes, the bisect is false positive, we can focus on fixing the bug.

         Wanpeng
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
