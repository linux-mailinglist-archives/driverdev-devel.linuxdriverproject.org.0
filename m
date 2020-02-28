Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0118A173264
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Feb 2020 09:02:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9AD5F8815E;
	Fri, 28 Feb 2020 08:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6S2MF2qJMnLZ; Fri, 28 Feb 2020 08:02:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5256F8810B;
	Fri, 28 Feb 2020 08:02:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8A811BF271
 for <devel@linuxdriverproject.org>; Fri, 28 Feb 2020 08:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E0F7C880F5
 for <devel@linuxdriverproject.org>; Fri, 28 Feb 2020 08:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hfCmT6dh2WmD for <devel@linuxdriverproject.org>;
 Fri, 28 Feb 2020 08:02:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7D42F880D9
 for <devel@driverdev.osuosl.org>; Fri, 28 Feb 2020 08:02:12 +0000 (UTC)
Received: by mail-il1-f199.google.com with SMTP id 142so2555319ilc.9
 for <devel@driverdev.osuosl.org>; Fri, 28 Feb 2020 00:02:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=1F6QPB2AKxQKkbwngYuex+ythgWDXEu9f8wBzkprX/k=;
 b=X+z4tArme9p3mEj6t9EW8EGlEM7/3B9KzAOjfJh6KptQClk14alwT7e+QXeas+CO6e
 KCGf4K3Ao3YppwUrJSEixrwm990Y/skyQzBE736IhAPw4A94MPqaRDKJOkd8fzGHZXiF
 eVR+ySB2GkmQoeR21c+Xc2KwL3v8KR1yc4x1lmrGZPcpTUStLKHTEnuKK0t5Y/oWZ56C
 wCI0yE4gDfJWn3pMa/mSdYWJfNQN/eSGZXF0Hpzv153iL/31qizhR4+V/Itu4Wk3tx5R
 2/oRf2yfaZb2Ce1l1Ulqy3HM53HQiCmCAFOXl+1Lo4x2tQhdxe66zHwGmiObJDg5/kfX
 lrug==
X-Gm-Message-State: APjAAAWkx3EGZDHRgnIaRtEnBUG2om/AQMDI8hwQZ+ZtFjmkZFOKmKux
 P2ikne9Vm5Swon/pV8NTO9p7usB++QYOGJ14JEI7HW/2fB1o
X-Google-Smtp-Source: APXvYqxZ9gEkMkdQklGzMnNVCnk+p9vHrNJcx3ZgSr4fyoEdO9KrfufCKBEV6C7rY7YOdZ1PYafI/aStyzaxESHVe4uOP8/zThGl
MIME-Version: 1.0
X-Received: by 2002:a02:9988:: with SMTP id a8mr2420608jal.33.1582876931843;
 Fri, 28 Feb 2020 00:02:11 -0800 (PST)
Date: Fri, 28 Feb 2020 00:02:11 -0800
In-Reply-To: <00000000000080f1d305988bb8ba@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000003eeb63059f9e41d2@google.com>
Subject: Re: BUG: unable to handle kernel paging request in
 ion_heap_clear_pages
From: syzbot <syzbot+be6ccf3081ce8afd1b56@syzkaller.appspotmail.com>
To: arve@android.com, christian@brauner.io, devel@driverdev.osuosl.org, 
 dja@axtens.net, dri-devel@lists.freedesktop.org, dvyukov@google.com, 
 gregkh@linuxfoundation.org, joel@joelfernandes.org, 
 kasan-dev@googlegroups.com, labbott@redhat.com, 
 linaro-mm-sig-owner@lists.linaro.org, linaro-mm-sig@lists.linaro.org, 
 linux-kernel@vger.kernel.org, maco@android.com, sumit.semwal@linaro.org, 
 syzkaller-bugs@googlegroups.com, tkjos@android.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This bug is marked as fixed by commit:
kasan: support vmalloc backing of vm_map_ram()
But I can't find it in any tested tree for more than 90 days.
Is it a correct commit? Please update it by replying:
#syz fix: exact-commit-title
Until then the bug is still considered open and
new crashes with the same signature are ignored.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
