Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBCC2DEE05
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Dec 2020 10:42:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCDB88706B;
	Sat, 19 Dec 2020 09:42:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tx0vzrh16Xwr; Sat, 19 Dec 2020 09:42:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25F598703C;
	Sat, 19 Dec 2020 09:42:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A75C21BF30A
 for <devel@linuxdriverproject.org>; Sat, 19 Dec 2020 09:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9ACED203C8
 for <devel@linuxdriverproject.org>; Sat, 19 Dec 2020 09:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAHdIdznU2go for <devel@linuxdriverproject.org>;
 Sat, 19 Dec 2020 09:41:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by silver.osuosl.org (Postfix) with ESMTPS id 8AD48203C3
 for <devel@driverdev.osuosl.org>; Sat, 19 Dec 2020 09:41:59 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id u21so3187471qtw.11
 for <devel@driverdev.osuosl.org>; Sat, 19 Dec 2020 01:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jKNJRmx0eYAUpZpwCq5ZV9sDDOhriznJbXCWXkD9bEo=;
 b=P5yYUtVR6rdJTBAzxze64I+pP1/TkTJKW9DPb0BLE+FKPx/D2v58xhqnyxjp9wf+nX
 YOsuojepOAhUHQorncAuc7x+GEFTOqHsQkRoggcETESTLj8nCBbrZB78HwRi/Lb9oo3Z
 Nkf2KPRmsvnJv5VC4rloVWAAX4Gd87FSiX7j7TISJ2tMgtLzGvEDsvIX/O+G5hKf8DpG
 rlBDS9rzg8YxTl8UX4d7KdFDQHa7NaPUqSPUhLBLIpSRAmZyXdcYkZUyRz/Flqvdqnz+
 q9XeWXxgZIf+d6blm0egJnQeH8bDQwBwpAlbLZZzm38v0H/81ujYtNclWps8Mwqq0U6W
 etNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jKNJRmx0eYAUpZpwCq5ZV9sDDOhriznJbXCWXkD9bEo=;
 b=qj4M1eBeTXoq2g5qgMlFL9WdDYZFoojpna74/JdYi3lpk8DOYDlIHy1AJRJyo3OK4Q
 fkzwiuVpSChXVyAE+HkfjwuBBvCweIbEKnCbclzJ0LbqdTavhIdLgzw57LYptY/R1rje
 tDLv1BIeFBYhEDYTPK+NRT+LZbSiDq8wvOVlkvn2q725e4QUiTy3cMk3p/o9hwDX4iua
 30gW/ue5Wxbu1hPCXnWlC2lVB+sa7Il/0hYmHbm3ITum+K1M2DeA9JfccoS66U6eyqHN
 eJE0eOglQpeSbOjx7oF1YY1dFUW6kXLMLt7DaxJBAOJ4VEOhNIzR9m/vibc7vKcGLsq+
 4JNg==
X-Gm-Message-State: AOAM533FKQq7WEQoINwaDRYmmvNRqWYnR5+GRs7qir2A5JzJr0AcIFnA
 9qdHppM42NnzucpgCX3VVKQcEa2/TDCOwfIzmTni6Q==
X-Google-Smtp-Source: ABdhPJyeTNXDinqht80iLQ/jsytyx9IA/MtM78gFuYdt2jUWCeXu1VsZqbeDy9OJTs6GESOiOdQzvK7OWzUI2E+Y/OA=
X-Received: by 2002:aed:208f:: with SMTP id 15mr7786546qtb.290.1608370918325; 
 Sat, 19 Dec 2020 01:41:58 -0800 (PST)
MIME-Version: 1.0
References: <000000000000f415bd05a047548f@google.com>
 <0000000000001e7f4605b6c84833@google.com>
In-Reply-To: <0000000000001e7f4605b6c84833@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Sat, 19 Dec 2020 10:41:46 +0100
Message-ID: <CACT4Y+bqBib4Sb=5keBayTybKXpi3kXgF7+uAsnZjBGfpHr04g@mail.gmail.com>
Subject: Re: kernel BUG at drivers/dma-buf/dma-buf.c:LINE!
To: syzbot <syzbot+d6734079f30f7fc39021@syzkaller.appspotmail.com>
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
Cc: jbwyatt4@gmail.com, linaro-mm-sig-owner@lists.linaro.org,
 Peter Zijlstra <peterz@infradead.org>, DRI <dri-devel@lists.freedesktop.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>, Shuah Khan <shuah@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, m.szyprowski@samsung.com,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Suren Baghdasaryan <surenb@google.com>, masahiroy@kernel.org,
 linux-media@vger.kernel.org, Todd Kjos <tkjos@android.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 linaro-mm-sig@lists.linaro.org, Shuah Khan <skhan@linuxfoundation.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Colin King <colin.king@canonical.com>,
 Andrew Morton <akpm@linux-foundation.org>, christian.koenig@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 19, 2020 at 3:50 AM syzbot
<syzbot+d6734079f30f7fc39021@syzkaller.appspotmail.com> wrote:
>
> syzbot suspects this issue was fixed by commit:
>
> commit e722a295cf493388dae474745d30e91e1a2ec549
> Author: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Date:   Thu Aug 27 12:36:27 2020 +0000
>
>     staging: ion: remove from the tree
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17d4f137500000
> start commit:   abb3438d Merge tag 'm68knommu-for-v5.9-rc3' of git://git.k..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=978db74cb30aa994
> dashboard link: https://syzkaller.appspot.com/bug?extid=d6734079f30f7fc39021
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17428596900000
>
> If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: staging: ion: remove from the tree
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

The reproducer opens /dev/ion

#syz fix: staging: ion: remove from the tree
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
