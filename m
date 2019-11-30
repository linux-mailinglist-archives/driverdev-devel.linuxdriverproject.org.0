Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ACD10DD13
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Nov 2019 09:01:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7054486A85;
	Sat, 30 Nov 2019 08:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jAeu8OD_Lb_z; Sat, 30 Nov 2019 08:01:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62CAA86A15;
	Sat, 30 Nov 2019 08:01:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83DA81BF8B4
 for <devel@linuxdriverproject.org>; Sat, 30 Nov 2019 08:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B8D8869DE
 for <devel@linuxdriverproject.org>; Sat, 30 Nov 2019 08:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bF7IaMwURu_N for <devel@linuxdriverproject.org>;
 Sat, 30 Nov 2019 08:01:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A2A586A15
 for <devel@driverdev.osuosl.org>; Sat, 30 Nov 2019 08:01:27 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id v23so19844901qkg.2
 for <devel@driverdev.osuosl.org>; Sat, 30 Nov 2019 00:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xopoO7QTmMqAl137aSAIMPCPz+JISOQuaoX9y1SYgzs=;
 b=WbdOU1MJ8FOMdNtyb910nMwqZcOs9Fp/EUo/ZJ7vcpKHggvBIl5ymCWuD4Cj4RXgNX
 EgDaIhxn4os6zH72DqkQGt5inmpp8D28Lr2qdEXtVUxnh+27f6xMssihH8wyifmgRlp+
 whvd4e3OL6l0uG4naTPRZuVdjtFecWiCDtcR+e0MrwyzG5qhO2FCAONZia/WQT0nQD2l
 4gqZdRbN2ZjHAT/vrmw/8ykf0B981djTCaZtuIFuxjXy3noKqAR7UDCi10NSNlQMg7xx
 wnGW9zGdbolac+fEnZyL4F1ThnIPtALHazaeh/K1vqpNPfS8b3u9wM6KA7rNsa9/K97c
 XrWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xopoO7QTmMqAl137aSAIMPCPz+JISOQuaoX9y1SYgzs=;
 b=SSZk3ezX9E17TJO6Cm9YswbTfO72GkZJKQ2nVYj5fPNqAb3e5/RKzLKveBHOYEMn5a
 xYr2MpSsPoObkE4Q55TfyZBzePUcOm3sOHHEj5/FZkiPsTxE6l64j+GU0q27iHLqQMpD
 F84hf1fTpdDN1/7MRZnYP+EsbVi0UWVrKFA6gMljmY0E4nEQWvmuEe9GuLzEfZjnLbgP
 b8bvEGARIyI65ukFp2Wd/uiGo/D6sq37qjqhHpR5giAK5uQ5JlKK1n7wokoVvcJSFvVN
 YAKNVheZl0+6TqDZvPsaUyX20yUBrKxlOT3OHJurP0qNhxFchvG5F/SgTRitLX+uA5DR
 lh6w==
X-Gm-Message-State: APjAAAWp52MbGJEZIPsgZ2QsdTuhZ4M8P9bQlv7r9Bi5sSzNNLDXZMTH
 Gj6MRFXlP5NkbSJ/wAJ2lISUeEMRjAZOrtkXxI0sQw==
X-Google-Smtp-Source: APXvYqwtA6svBwaL5lgo1c6jik89HUgULfo09BRKK+HEsmPPfoh5GzA+/3fjTNmztHHpQPnLhYpROE2+71j+t9egTF8=
X-Received: by 2002:a37:4782:: with SMTP id u124mr12295484qka.8.1575100885769; 
 Sat, 30 Nov 2019 00:01:25 -0800 (PST)
MIME-Version: 1.0
References: <00000000000080f1d305988bb8ba@google.com>
In-Reply-To: <00000000000080f1d305988bb8ba@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Sat, 30 Nov 2019 09:01:14 +0100
Message-ID: <CACT4Y+ZFZxXDOEC3=wP8ZAcVoOjCZsvX07vvRP8yrTofg8sh_Q@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel paging request in
 ion_heap_clear_pages
To: syzbot <syzbot+be6ccf3081ce8afd1b56@syzkaller.appspotmail.com>, 
 Daniel Axtens <dja@axtens.net>, kasan-dev <kasan-dev@googlegroups.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, DRI <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Nov 30, 2019 at 8:59 AM syzbot
<syzbot+be6ccf3081ce8afd1b56@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    419593da Add linux-next specific files for 20191129
> git tree:       linux-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=12bfd882e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=7c04b0959e75c206
> dashboard link: https://syzkaller.appspot.com/bug?extid=be6ccf3081ce8afd1b56
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
>
> Unfortunately, I don't have any reproducer for this crash yet.
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+be6ccf3081ce8afd1b56@syzkaller.appspotmail.com

+Daniel, kasan-dev
This is presumably from the new CONFIG_KASAN_VMALLOC and should be:
#syz fix: kasan: support vmalloc backing of vm_map_ram()


> BUG: unable to handle page fault for address: fffff52002e00000
> #PF: supervisor read access in kernel mode
> #PF: error_code(0x0000) - not-present page
> PGD 21ffee067 P4D 21ffee067 PUD aa11c067 PMD 0
> Oops: 0000 [#1] PREEMPT SMP KASAN
> CPU: 0 PID: 3644 Comm: ion_system_heap Not tainted
> 5.4.0-next-20191129-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> Google 01/01/2011
> RIP: 0010:memory_is_nonzero mm/kasan/generic.c:121 [inline]
> RIP: 0010:memory_is_poisoned_n mm/kasan/generic.c:135 [inline]
> RIP: 0010:memory_is_poisoned mm/kasan/generic.c:166 [inline]
> RIP: 0010:check_memory_region_inline mm/kasan/generic.c:182 [inline]
> RIP: 0010:check_memory_region+0x9c/0x1a0 mm/kasan/generic.c:192
> Code: c9 4d 0f 49 c1 49 c1 f8 03 45 85 c0 0f 84 10 01 00 00 41 83 e8 01 4e
> 8d 44 c0 08 eb 0d 48 83 c0 08 4c 39 c0 0f 84 a7 00 00 00 <48> 83 38 00 74
> ed 4c 8d 40 08 eb 09 48 83 c0 01 49 39 c0 74 53 80
> RSP: 0018:ffffc9000c9f7ab8 EFLAGS: 00010212
> RAX: fffff52002e00000 RBX: fffff52002e01600 RCX: ffffffff85d5c229
> RDX: 0000000000000001 RSI: 000000000000b000 RDI: ffffc90017000000
> RBP: ffffc9000c9f7ad0 R08: fffff52002e01600 R09: 0000000000001600
> R10: fffff52002e015ff R11: ffffc9001700afff R12: fffff52002e00000
> R13: 000000000000b000 R14: 0000000000000000 R15: ffffc9000c9f7d08
> FS:  0000000000000000(0000) GS:ffff8880ae600000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: fffff52002e00000 CR3: 00000000778bd000 CR4: 00000000001406f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>   memset+0x24/0x40 mm/kasan/common.c:107
>   memset include/linux/string.h:410 [inline]
>   ion_heap_clear_pages+0x49/0x70 drivers/staging/android/ion/ion_heap.c:106
>   ion_heap_sglist_zero+0x245/0x270 drivers/staging/android/ion/ion_heap.c:130
>   ion_heap_buffer_zero+0xf5/0x150 drivers/staging/android/ion/ion_heap.c:145
>   ion_system_heap_free+0x1eb/0x250
> drivers/staging/android/ion/ion_system_heap.c:163
>   ion_buffer_destroy+0x159/0x2d0 drivers/staging/android/ion/ion.c:93
>   ion_heap_deferred_free+0x29d/0x630
> drivers/staging/android/ion/ion_heap.c:239
>   kthread+0x361/0x430 kernel/kthread.c:255
>   ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
> Modules linked in:
> CR2: fffff52002e00000
> ---[ end trace ee5c63907f1d6f00 ]---
> RIP: 0010:memory_is_nonzero mm/kasan/generic.c:121 [inline]
> RIP: 0010:memory_is_poisoned_n mm/kasan/generic.c:135 [inline]
> RIP: 0010:memory_is_poisoned mm/kasan/generic.c:166 [inline]
> RIP: 0010:check_memory_region_inline mm/kasan/generic.c:182 [inline]
> RIP: 0010:check_memory_region+0x9c/0x1a0 mm/kasan/generic.c:192
> Code: c9 4d 0f 49 c1 49 c1 f8 03 45 85 c0 0f 84 10 01 00 00 41 83 e8 01 4e
> 8d 44 c0 08 eb 0d 48 83 c0 08 4c 39 c0 0f 84 a7 00 00 00 <48> 83 38 00 74
> ed 4c 8d 40 08 eb 09 48 83 c0 01 49 39 c0 74 53 80
> RSP: 0018:ffffc9000c9f7ab8 EFLAGS: 00010212
> RAX: fffff52002e00000 RBX: fffff52002e01600 RCX: ffffffff85d5c229
> RDX: 0000000000000001 RSI: 000000000000b000 RDI: ffffc90017000000
> RBP: ffffc9000c9f7ad0 R08: fffff52002e01600 R09: 0000000000001600
> R10: fffff52002e015ff R11: ffffc9001700afff R12: fffff52002e00000
> R13: 000000000000b000 R14: 0000000000000000 R15: ffffc9000c9f7d08
> FS:  0000000000000000(0000) GS:ffff8880ae600000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: fffff52002e00000 CR3: 00000000778bd000 CR4: 00000000001406f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>
>
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/00000000000080f1d305988bb8ba%40google.com.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
