Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF7F27B671
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 22:38:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B57E820500;
	Mon, 28 Sep 2020 20:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6faBhsTtGF6; Mon, 28 Sep 2020 20:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 94CA520442;
	Mon, 28 Sep 2020 20:38:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D198F1BF355
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 20:38:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 818D0203CE
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 20:38:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eO3B7bQl+xOY for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 20:38:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic302-22.consmr.mail.gq1.yahoo.com
 (sonic302-22.consmr.mail.gq1.yahoo.com [98.137.68.148])
 by silver.osuosl.org (Postfix) with ESMTPS id 96DDA20117
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 20:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1601325482; bh=GZprWnTl+eBHSNmQV5uJKps1Zts7hTFzMj6gKmT4ZWQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=ZVJJJ+yQ+KR3dNBuJ/amrwqCHhf19H0Ii5HVplUqPqKAXNipeT60DiYPge54rA14LJMoXGV2ymt90/2QFbLatR4Aiye+ng7kZEaalkNVeIfvokX7+J7v0yN4rVNTIMl1/YzQ7tAtUQxOf9DuntvMbwsM7qh+vOnl1E14+6M45aXxEBu+05qYaJfUKEm508rs/ElDjxZOsRhl+EN+Ix95GB9LjFEkjI2dZPRdzRKvRHLqnLkCqn554i3B0GJcOktDtdxhcBhQqcWuQz56q8PylIIwdq2xmp0TuzvKWfrahkKKupDbLFCVFjSETeWYTixW+1gg3mUBUMeWdpD1M/yzjg==
X-YMail-OSG: qxLJVzQVM1lQSqYJ6MoZ3aW5WK957rVzm2ddGQEjg2ehiZR.ERUCkUBB.xK7sZ_
 aW2eDUJjsm7iLn.O1kaR2F2VNLlEWyBYNMs7XjZWS.CmuyZVSCAADky5dr4Po.yuNNklMNKoMqjp
 DkdZV2ujaWNXrGDYrd7pT6noQNS2ZAW70lt_0kEKbEMHe6SgWX3NIC3fDbo.KT7FYHsSpEwlZnI3
 J5CEwM11WUQC6p.0Y2WVqQyv9G.M3I25C5AChyrBu0IjsYCnFY7D6JURCs9sObR1but6K2b2cSet
 ie0BNXAzPgZToDrVJNgbuBxBgfNQ5p1zrILKR2eHgpsarx2kqHIm3b06BoZ3ddfXtKxbI746Er71
 SHgItSCWTgYxX.HlU19Tfc7nERdLL8CpLojpjPU7BozgxxwFL2y7JeeRbanJLtZPMjIxBeED8e8L
 lZhjds.zeOyqtDxlXML40jBrfw.G4RBK1CXKKsN6CURIKYZ7RLGA5NgFQbRIrmYwlWsaCs7iMPwk
 k3vpXwTLJfsdoGtlTM29hQYI_m7nCnhTS0Lg4PCnPZ99kRBGQg6lwgUnXa0F9jHnUlS08XJHo4Pg
 q927lGndaWDjn..2gZ8b8.TGucCUFO8xMNpYrxxeGrESKZoEeWfQ.if5UusmlEh5B3iO2aWp6YR2
 JUS8XSzzqeWtX6oeEmLn.XTQSvIPaH7auIRqTTZm6NWZpenFa11.NjF9K1tGqJAdGt3zfAybBwmD
 5.bXFtcgXIzhZaHhxKQM48YqVN_dl_yDjyCbCP96v03DtxgKrO2gob8vkRyH6GVHJcWKlfg433Yf
 BMuyH2hKQFM64CZ4JcxypRIt.2YWtSlvbxO9gYNHU6TgTRdsHQwzIs.hxCqOQgtK2YvVUIf8iZ.V
 AKH2Sw2kSMq.dVeJ.AdL1D6wkDhEdqVeQaS6fkmg1JrSynb1JJmmX4SEid7bgTBh_RZAFfxBOhdq
 3YBRANepO0Pn4x940jgI12uJ85VQv9fk9VDXabsyid8I3MbWe7HzP6hMlMD55j0726YNnxR0.wZS
 5L7RuDNpnFev9UpuOCsK0h53BcGYPhsj1PqJqjjHfL.SGiOeiRXQkIlXfEJKJjIk61GPC2LGMKHC
 E3W.eyZw7Jam6EYLyIlRHfK0TxoIyNXe.8zGrlBT9ytE4VQG6jnm7yxtci5TuiVh.uAByuTqFy6E
 SiQmoeKGCsbyQ9QLNh_8N9Ce2J6IGN7G9nirvogpfX3UOXBz0AP2gag5Q3wUQR3raivuUJ8GDxpW
 7GRsa1tk19MDTx5d.hMKA0O20APOvs2cDVPWnMu6PkhAAhDgdV1VdtmrM3yC76jIU4YGckBXPX6I
 70H_6DtoTpVZPArRSnA20A8FLrXwtsMvZYYEPpXiTIT49X6fai9BK97_Uj9MbywQWdws70j4O65Y
 XtLCnfMftb45kcnRDZUtBDeTQauBa9KUMgLgg5W1pFAh8w6mpnObAej1lHMdELP7Yel73cKqs_V0
 MUBxL4IG2Pq9P1tyc7E8Kpor0i_3VChL8hOEumjCPgcXD
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.gq1.yahoo.com with HTTP; Mon, 28 Sep 2020 20:38:02 +0000
Received: by smtp419.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 1dcce5b8f69c9421ae96c4d2986bd734; 
 Mon, 28 Sep 2020 20:36:39 +0000 (UTC)
Date: Tue, 29 Sep 2020 04:36:30 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: syzbot <syzbot+8afc256dce324523609d@syzkaller.appspotmail.com>
Subject: Re: kernel BUG at fs/erofs/inode.c:LINE!
Message-ID: <20200928203035.GA7770@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <0000000000000044ba05b05a9961@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000000044ba05b05a9961@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailer: WebService/1.1.16674
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.7)
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
Cc: devel@driverdev.osuosl.org, yuchao0@huawei.com, gregkh@linuxfoundation.org,
 chao@kernel.org, syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 xiang@kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Mon, Sep 28, 2020 at 12:27:24AM -0700, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    d1d2220c Add linux-next specific files for 20200924
> git tree:       linux-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=166cb7d9900000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=254e028a642027c
> dashboard link: https://syzkaller.appspot.com/bug?extid=8afc256dce324523609d
> compiler:       gcc (GCC) 10.1.0-syz 20200507
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=127762c3900000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=124ccf3b900000
> 
> The issue was bisected to:
> 
> commit 382329a9d8553a98418a6f6e3425f0c288837897
> Author: Gao Xiang <gaoxiang25@huawei.com>
> Date:   Wed Aug 14 10:37:04 2019 +0000
> 
>     staging: erofs: differentiate unsupported on-disk format

if CONFIG_EROFS_DEBUG=y, the kernel will also BUG_ON on
currupted images in order to check potential mkfs fault.

So it's an expected behavior for now (if syzbot needs some more requirement,
e.g. differ from runtime error vs corrupted image error, I can do it if
needed.)

Thanks,
Gao Xiang

> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=149889e3900000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=169889e3900000
> console output: https://syzkaller.appspot.com/x/log.txt?x=129889e3900000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+8afc256dce324523609d@syzkaller.appspotmail.com
> Fixes: 382329a9d855 ("staging: erofs: differentiate unsupported on-disk format")
> 
> erofs: (device loop0): erofs_read_inode: bogus i_mode (0) @ nid 36
> ------------[ cut here ]------------
> kernel BUG at fs/erofs/inode.c:182!
> invalid opcode: 0000 [#1] PREEMPT SMP KASAN
> CPU: 1 PID: 6895 Comm: syz-executor894 Not tainted 5.9.0-rc6-next-20200924-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:erofs_read_inode fs/erofs/inode.c:182 [inline]
> RIP: 0010:erofs_fill_inode fs/erofs/inode.c:235 [inline]
> RIP: 0010:erofs_iget+0xfd8/0x2390 fs/erofs/inode.c:322
> Code: 00 0f 85 aa 10 00 00 49 8b 7c 24 28 49 89 d8 44 89 e9 48 c7 c2 a0 9c ef 88 48 c7 c6 40 9f ef 88 e8 b5 df b0 04 e8 88 5a 07 fe <0f> 0b e8 81 5a 07 fe 4c 89 e7 4c 63 e3 e8 b6 61 5b fe e9 ed f0 ff
> RSP: 0018:ffffc90001017c10 EFLAGS: 00010293
> RAX: 0000000000000000 RBX: 0000000000000024 RCX: 0000000000000000
> RDX: ffff8880a172e480 RSI: ffffffff836dd6e8 RDI: fffff52000202f72
> RBP: ffff8880a8ca4480 R08: 0000000000000042 R09: ffff8880ae5319a7
> R10: 0000000000000000 R11: 0000000000000000 R12: ffff8880854fd9b8
> R13: 0000000000000000 R14: ffffea0002a32900 R15: 0000000000000000
> FS:  000000000108e880(0000) GS:ffff8880ae500000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 000000000043eb80 CR3: 00000000a7edb000 CR4: 00000000001506e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  erofs_fc_fill_super+0xaa3/0x1010 fs/erofs/super.c:382
>  get_tree_bdev+0x421/0x740 fs/super.c:1342
>  vfs_get_tree+0x89/0x2f0 fs/super.c:1547
>  do_new_mount fs/namespace.c:2896 [inline]
>  path_mount+0x12ae/0x1e70 fs/namespace.c:3227
>  __do_sys_mount fs/namespace.c:3438 [inline]
>  __se_sys_mount fs/namespace.c:3411 [inline]
>  __x64_sys_mount+0x278/0x2f0 fs/namespace.c:3411
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> RIP: 0033:0x446d6a
> Code: b8 08 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 fd ad fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 da ad fb ff c3 66 0f 1f 84 00 00 00 00 00
> RSP: 002b:00007fffa8ef9ef8 EFLAGS: 00000297 ORIG_RAX: 00000000000000a5
> RAX: ffffffffffffffda RBX: 00007fffa8ef9f50 RCX: 0000000000446d6a
> RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007fffa8ef9f10
> RBP: 00007fffa8ef9f10 R08: 00007fffa8ef9f50 R09: 00007fff00000015
> R10: 0000000000000000 R11: 0000000000000297 R12: 0000000000000001
> R13: 0000000000000004 R14: 0000000000000003 R15: 0000000000000003
> Modules linked in:
> ---[ end trace 66a5371a9bd8a3b2 ]---
> RIP: 0010:erofs_read_inode fs/erofs/inode.c:182 [inline]
> RIP: 0010:erofs_fill_inode fs/erofs/inode.c:235 [inline]
> RIP: 0010:erofs_iget+0xfd8/0x2390 fs/erofs/inode.c:322
> Code: 00 0f 85 aa 10 00 00 49 8b 7c 24 28 49 89 d8 44 89 e9 48 c7 c2 a0 9c ef 88 48 c7 c6 40 9f ef 88 e8 b5 df b0 04 e8 88 5a 07 fe <0f> 0b e8 81 5a 07 fe 4c 89 e7 4c 63 e3 e8 b6 61 5b fe e9 ed f0 ff
> RSP: 0018:ffffc90001017c10 EFLAGS: 00010293
> RAX: 0000000000000000 RBX: 0000000000000024 RCX: 0000000000000000
> RDX: ffff8880a172e480 RSI: ffffffff836dd6e8 RDI: fffff52000202f72
> RBP: ffff8880a8ca4480 R08: 0000000000000042 R09: ffff8880ae5319a7
> R10: 0000000000000000 R11: 0000000000000000 R12: ffff8880854fd9b8
> R13: 0000000000000000 R14: ffffea0002a32900 R15: 0000000000000000
> FS:  000000000108e880(0000) GS:ffff8880ae500000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 000000000043eb80 CR3: 00000000a7edb000 CR4: 00000000001506e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> 
> 
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
> 
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection
> syzbot can test patches for this issue, for details see:
> https://goo.gl/tpsmEJ#testing-patches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
