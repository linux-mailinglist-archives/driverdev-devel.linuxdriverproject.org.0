Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B46A718DE7C
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 08:18:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5AFF3858FB;
	Sat, 21 Mar 2020 07:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pTmht6ELQUet; Sat, 21 Mar 2020 07:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C4EB87712;
	Sat, 21 Mar 2020 07:18:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24B571BF2B9
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 07:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 216FB87710
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 07:15:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ja2ojmruDm4L for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:15:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B22018616A
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 07:15:44 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id c145so9612074qke.12
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 00:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wFLyCcbMHtgLvt40DJJ2uQa9RLOkww+bHxdrRh/zvZ0=;
 b=rEz8pcxAS/Qcdq7Ca+miKFPxx/BUTksSrm8mo6/7/nloz9+K/0OjNRib1qZ33uGMC9
 c27uuDERD3SVuO2caywuob4h0HCPhEGOP3IIPgptciivI4EdbnAySE7yv9em3E4lRFr6
 vFpv+zuJmB6JyVorjk5WnsY0DkVzYbUgSK625t9YG501189eTw3Yjm2wTc96RfiJ8Nq9
 6OD37CejZE+feFtox9GpVi5sOajawedPtHF1r2nFm0UKR/hSPCm+uQA6eOd0DWzAH10u
 d44iQkjgCMZ3Aq54AXDtbItMkNmwaMPnlP0lSaWUJF5ZAjaQG4ep8PSAS6bUD+4jwDvj
 P4fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wFLyCcbMHtgLvt40DJJ2uQa9RLOkww+bHxdrRh/zvZ0=;
 b=GTRxrcNhuz3LLZ1di1zKrN6gLFBBtIuTIuO+b06cjeujbH1B1LYRzxdV1yqSEHsSqq
 Bja0oZvIULm2VmO98Ci5dJrXSehljSagjNncZB18Pu1XX9gpuEI+nfi/ii2kCL6yNn90
 QXBZZxV76//yQ4c2wrKomGb0wAKtdtpPQLNAdSEWncB9MSj34s45ucofoxLspICEYG96
 jQJF0lj0yT1dvqVbveyM4JAy5DKOvXAOEzl0lDqwF+539OiB6PlYNAtedwnN4ZiNEEHI
 CdmMPyiIDcP8prno2qgcMa6usO4Z7god+66rXFbtzyYLTx6tTloGhGNkGV0bGx4rwyC9
 m7lg==
X-Gm-Message-State: ANhLgQ3COQrJRC6dg82N0YCq2salelYS1DJKi0ZwPjtQhPtKLeoWId03
 A+oPJKgrIz5Xhw6CSjuCLs2i49eLhk09boIa8DmVUw==
X-Google-Smtp-Source: ADFU+vsXLo8HLVgqQmG2EbR8mc/WFsJEdsoIV9M51ZLxhyZ6LOIv4t/7J1CXV9CUrFnFgSzXrsFVCsnY34RcDNpeLpQ=
X-Received: by 2002:a05:620a:1654:: with SMTP id
 c20mr219563qko.250.1584774943333; 
 Sat, 21 Mar 2020 00:15:43 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000000bec9805a1581f05@google.com>
In-Reply-To: <0000000000000bec9805a1581f05@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Sat, 21 Mar 2020 08:15:31 +0100
Message-ID: <CACT4Y+Z_ZuQmDqq=0kKZuKAe=Dme=UsOnES6h9Y8vRmw2v3WmA@mail.gmail.com>
Subject: Re: INFO: task hung in blk_trace_remove
To: syzbot <syzbot+c07afbbb410e9f712273@syzkaller.appspotmail.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, 
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, 
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>
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
Cc: Jens Axboe <axboe@kernel.dk>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 linux-block <linux-block@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 21, 2020 at 8:12 AM syzbot
<syzbot+c07afbbb410e9f712273@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    fb33c651 Linux 5.6-rc6
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=140688d3e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=9f894bd92023de02
> dashboard link: https://syzkaller.appspot.com/bug?extid=c07afbbb410e9f712273
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
>
> Unfortunately, I don't have any reproducer for this crash yet.
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+c07afbbb410e9f712273@syzkaller.appspotmail.com

+ashmem maintainers

From the log, ashmem spews an infinite sequence of some errors which
probably stall the machine:

[ 1094.685541][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641097791
[ 1094.701750][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641383141
[ 1094.708003][ T9576] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641233534
[ 1094.723597][ T1876] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641083174
[ 1094.730025][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641098111
[ 1094.745592][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641383221
[ 1094.753153][ T9576] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641233534
[ 1094.767903][ T1876] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641084454
[ 1094.819845][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641526579
[ 1094.830116][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641098111
[ 1094.845813][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641527219
[ 1094.852188][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641098751
[ 1094.871456][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641527219
[ 1094.874256][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641098751
[ 1094.890195][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641528499
[ 1094.895999][ T1876] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641087014
[ 1094.912931][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641528499
[ 1094.918797][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641100031
[ 1094.936636][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641531059
[ 1094.941391][ T1876] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641081897
[ 1094.957463][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641531059
[ 1094.963568][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641100031
[ 1094.980233][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641536179
[ 1094.985311][ T1876] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641081899
[ 1095.001393][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641536179
[ 1095.008146][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641102591
[ 1095.024425][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641525942
[ 1095.029644][ T1876] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641081904
[ 1095.046399][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641525942
[ 1095.052377][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641102591
[ 1095.068000][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641525944
[ 1095.073934][ T1876] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641081914
[ 1095.091076][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641525944
[ 1095.096925][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641107711
[ 1095.112305][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641525949
[ 1095.118570][ T1876] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641081934
[ 1095.135413][ T7239] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641525949
[ 1095.141206][ T9460] vmscan: shrink_slab:
ashmem_shrink_scan+0x0/0x500 negative objects to delete
nr=-6917529027641107711



> INFO: task syz-executor.4:7237 blocked for more than 143 seconds.
>       Not tainted 5.6.0-rc6-syzkaller #0
> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> syz-executor.4  D26576  7237   9609 0x00004004
> Call Trace:
>  schedule+0xd0/0x2a0 kernel/sched/core.c:4154
>  schedule_preempt_disabled+0xf/0x20 kernel/sched/core.c:4213
>  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
>  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
>  blk_trace_remove+0x1e/0x40 kernel/trace/blktrace.c:361
>  sg_ioctl_common+0x221/0x2710 drivers/scsi/sg.c:1125
>  sg_ioctl+0x8f/0x120 drivers/scsi/sg.c:1159
>  vfs_ioctl fs/ioctl.c:47 [inline]
>  ksys_ioctl+0x11a/0x180 fs/ioctl.c:763
>  __do_sys_ioctl fs/ioctl.c:772 [inline]
>  __se_sys_ioctl fs/ioctl.c:770 [inline]
>  __x64_sys_ioctl+0x6f/0xb0 fs/ioctl.c:770
>  do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:294
>  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> RIP: 0033:0x45c849
> Code: Bad RIP value.
> RSP: 002b:00007f5ba5a3bc78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> RAX: ffffffffffffffda RBX: 00007f5ba5a3c6d4 RCX: 000000000045c849
> RDX: 0000000000000000 RSI: 0000000000001276 RDI: 0000000000000003
> RBP: 000000000076bf00 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 00000000ffffffff
> R13: 000000000000022b R14: 00000000004c4526 R15: 000000000076bf0c
> INFO: task syz-executor.4:7266 blocked for more than 146 seconds.
>       Not tainted 5.6.0-rc6-syzkaller #0
> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> syz-executor.4  D27752  7266   9609 0x00004004
> Call Trace:
>  schedule+0xd0/0x2a0 kernel/sched/core.c:4154
>  schedule_preempt_disabled+0xf/0x20 kernel/sched/core.c:4213
>  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
>  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
>  blk_trace_setup+0x2f/0x60 kernel/trace/blktrace.c:588
>  sg_ioctl_common+0x2f2/0x2710 drivers/scsi/sg.c:1116
>  sg_ioctl+0x8f/0x120 drivers/scsi/sg.c:1159
>  vfs_ioctl fs/ioctl.c:47 [inline]
>  ksys_ioctl+0x11a/0x180 fs/ioctl.c:763
>  __do_sys_ioctl fs/ioctl.c:772 [inline]
>  __se_sys_ioctl fs/ioctl.c:770 [inline]
>  __x64_sys_ioctl+0x6f/0xb0 fs/ioctl.c:770
>  do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:294
>  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> RIP: 0033:0x45c849
> Code: Bad RIP value.
> RSP: 002b:00007f5ba5a1ac78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> RAX: ffffffffffffffda RBX: 00007f5ba5a1b6d4 RCX: 000000000045c849
> RDX: 0000000020000080 RSI: 00000000c0481273 RDI: 0000000000000008
> RBP: 000000000076bfa0 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 00000000ffffffff
> R13: 0000000000000228 R14: 00000000004c44eb R15: 000000000076bfac
> INFO: task syz-executor.5:7265 blocked for more than 149 seconds.
>       Not tainted 5.6.0-rc6-syzkaller #0
> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> syz-executor.5  D26736  7265   9613 0x00004004
> Call Trace:
>  schedule+0xd0/0x2a0 kernel/sched/core.c:4154
>  schedule_preempt_disabled+0xf/0x20 kernel/sched/core.c:4213
>  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
>  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
>  blk_trace_setup+0x2f/0x60 kernel/trace/blktrace.c:588
>  sg_ioctl_common+0x2f2/0x2710 drivers/scsi/sg.c:1116
>  sg_ioctl+0x8f/0x120 drivers/scsi/sg.c:1159
>  vfs_ioctl fs/ioctl.c:47 [inline]
>  ksys_ioctl+0x11a/0x180 fs/ioctl.c:763
>  __do_sys_ioctl fs/ioctl.c:772 [inline]
>  __se_sys_ioctl fs/ioctl.c:770 [inline]
>  __x64_sys_ioctl+0x6f/0xb0 fs/ioctl.c:770
>  do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:294
>  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> RIP: 0033:0x45c849
> Code: Bad RIP value.
> RSP: 002b:00007f576f48ac78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> RAX: ffffffffffffffda RBX: 00007f576f48b6d4 RCX: 000000000045c849
> RDX: 0000000020000080 RSI: 00000000c0481273 RDI: 0000000000000006
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/0000000000000bec9805a1581f05%40google.com.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
