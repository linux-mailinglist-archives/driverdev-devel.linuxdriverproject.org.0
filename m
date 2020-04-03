Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918B219DA05
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 17:23:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26EA789332;
	Fri,  3 Apr 2020 15:23:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CGFG92aJEhEe; Fri,  3 Apr 2020 15:23:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0AFBF892A8;
	Fri,  3 Apr 2020 15:23:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EA621BF281
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 15:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A14485C7D
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 15:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jcrODvgLjUOg for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 15:23:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
 [209.85.222.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C2F3685C56
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 15:23:51 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id g10so2861925uae.5
 for <devel@driverdev.osuosl.org>; Fri, 03 Apr 2020 08:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cvwynjiCwSw46XyikhL7KgyzcNnPMcyNoDe/2pFYidU=;
 b=RPTZMSvo9LR/T9/++5ilFX/uLZ533I5y1z91cGHS8Vn3E7TwI5L0e5eeu7hmGaaXUf
 Kd13SVgV38zOdWw/Tk0kNInnzA8M+LBa07Fw1xXpycn89hWbk+Dw2xKcwhxk/uhB55rt
 LvrZNC8ww++TL8FYLHtexpJmpojcxYkV9QrnOwFmNEUcCB2elZPdbQQ9ct73iybhbCN1
 kUH3od4km8qxC20uZBzx7yKGs8UgnSU604QkzFW6HIBEgx96JNfiZjjb+ziRjZurtyU0
 hg0dEgMlz3Qx5NUxzBP4QzDYVTAVwmRa1ECGFC+1a3P6UcyTsqLT7pSOjDnEIpW++Reo
 WoPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cvwynjiCwSw46XyikhL7KgyzcNnPMcyNoDe/2pFYidU=;
 b=jqyIvea/7BqOaKV6QoiWX2n36WF/OF0uV3kGmOARaVcN6ZWGs3H9on0gulufiedmUp
 qsJU85YrtGE2ijw1vD4v841CC/c3tGz7AdEYZW2K/pPMWCq7ByaJWtBbjYIPT2MH4VU0
 p13uZM0k/sshIddkh/yNMwW69hdG7MsanXcXvnwgdKU6a9RBrsLivVlIeL4vHTuAzBRx
 FmnNiatTnl5nTh8zeOt/0Zir6h6Mp8T5bwZOkBC9Tja6h2Lw2vc4WxDTsqZuMlDgoUPz
 Sj2spA2tTU/PRNcAKj2erDDoi3EWH7P82V86bIDwEOk4YCc0QD5i5+zsCn37vl4XEpa/
 qjKA==
X-Gm-Message-State: AGi0PuZAe/2RaKBye87iZbX7vCg7XadEy6FOa5rv/eVYE1j797yRCMKy
 L52m2HbVnkaCcyO1RlYIoalDuyb4mlDn0sXvXPLQJw==
X-Google-Smtp-Source: APiQypKUY1bin7vGdS6Iz2ghvaKSkf9NDV1Xa9iEOuG15xv6ubN4yR0IRWosM5qvSKIXCGOVlLyT5mocR/2pajgixxc=
X-Received: by 2002:a9f:35e6:: with SMTP id u35mr6857302uad.32.1585927430454; 
 Fri, 03 Apr 2020 08:23:50 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000102ba005a2622624@google.com>
In-Reply-To: <000000000000102ba005a2622624@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 3 Apr 2020 08:23:38 -0700
Message-ID: <CAHRSSEyGn3vo6VdzHFPRafM=0Df7Ok9WZmEvAJgMZjH1Q-wQ3w@mail.gmail.com>
Subject: Re: KCSAN: data-race in binder_dec_node_nilocked / binder_state_show
To: syzbot <syzbot+71f39766a98dddab97b5@syzkaller.appspotmail.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>, elver@google.com,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

+Hridya Valsaraju

On Fri, Apr 3, 2020 at 5:35 AM syzbot
<syzbot+71f39766a98dddab97b5@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    245a4300 Merge branch 'rcu/kcsan' into tip/locking/kcsan
> git tree:       https://github.com/google/ktsan.git kcsan
> console output: https://syzkaller.appspot.com/x/log.txt?x=106b67f1e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=a4b9db179318d21f
> dashboard link: https://syzkaller.appspot.com/bug?extid=71f39766a98dddab97b5
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
>
> Unfortunately, I don't have any reproducer for this crash yet.
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+71f39766a98dddab97b5@syzkaller.appspotmail.com
>
> ==================================================================
> BUG: KCSAN: data-race in binder_dec_node_nilocked / binder_state_show
>
> write to 0xffff88809f276954 of 4 bytes by task 1408 on cpu 0:
>  binder_state_show+0xd8/0x260 drivers/android/binder.c:5938
>  seq_read+0x350/0x9d0 fs/seq_file.c:229
>  full_proxy_read+0xbd/0x100 fs/debugfs/file.c:220
>  do_loop_readv_writev fs/read_write.c:714 [inline]
>  do_loop_readv_writev fs/read_write.c:701 [inline]
>  do_iter_read+0x357/0x3d0 fs/read_write.c:935
>  vfs_readv+0x9c/0xf0 fs/read_write.c:997
>  do_preadv+0x131/0x1d0 fs/read_write.c:1089
>  __do_sys_preadv fs/read_write.c:1139 [inline]
>  __se_sys_preadv fs/read_write.c:1134 [inline]
>  __x64_sys_preadv+0x61/0x80 fs/read_write.c:1134
>  do_syscall_64+0xcc/0x3a0 arch/x86/entry/common.c:294
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> read to 0xffff88809f276954 of 4 bytes by task 1416 on cpu 1:
>  binder_dec_node_nilocked+0x382/0x610 drivers/android/binder.c:1261
>  binder_dec_node_tmpref+0xa3/0x120 drivers/android/binder.c:1379
>  binder_put_node drivers/android/binder.c:1387 [inline]
>  binder_state_show+0x1aa/0x260 drivers/android/binder.c:5950
>  seq_read+0x350/0x9d0 fs/seq_file.c:229
>  full_proxy_read+0xbd/0x100 fs/debugfs/file.c:220
>  do_loop_readv_writev fs/read_write.c:714 [inline]
>  do_loop_readv_writev fs/read_write.c:701 [inline]
>  do_iter_read+0x357/0x3d0 fs/read_write.c:935
>  vfs_readv+0x9c/0xf0 fs/read_write.c:997
>  do_preadv+0x131/0x1d0 fs/read_write.c:1089
>  __do_sys_preadv fs/read_write.c:1139 [inline]
>  __se_sys_preadv fs/read_write.c:1134 [inline]
>  __x64_sys_preadv+0x61/0x80 fs/read_write.c:1134
>  do_syscall_64+0xcc/0x3a0 arch/x86/entry/common.c:294
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> Reported by Kernel Concurrency Sanitizer on:
> CPU: 1 PID: 1416 Comm: syz-executor.1 Not tainted 5.5.0-rc1-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> ==================================================================
>
>
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
