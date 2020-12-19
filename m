Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B452DECC3
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Dec 2020 03:50:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8839087C0B;
	Sat, 19 Dec 2020 02:50:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bEDwAVKJlc4Y; Sat, 19 Dec 2020 02:50:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE4058790D;
	Sat, 19 Dec 2020 02:50:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 731A41BF3A8
 for <devel@linuxdriverproject.org>; Sat, 19 Dec 2020 02:50:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6BEC487AB7
 for <devel@linuxdriverproject.org>; Sat, 19 Dec 2020 02:50:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VqC3F1L6rRvQ for <devel@linuxdriverproject.org>;
 Sat, 19 Dec 2020 02:50:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DBCC58790D
 for <devel@driverdev.osuosl.org>; Sat, 19 Dec 2020 02:50:03 +0000 (UTC)
Received: by mail-io1-f70.google.com with SMTP id a1so3331522ios.2
 for <devel@driverdev.osuosl.org>; Fri, 18 Dec 2020 18:50:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=WRrWdLXnVhXMEnkyXGJyYpT7gv4ZpleApkGyNqnGXBQ=;
 b=sjR22+6T32juzltpQGUUIus3HxuOQM/PCiyDvZ2DwhRXZrsIfTb4R4a/Nn/6/pb/40
 StejBuVFxQ7s7jglwwApAMPo6HOqtf6iSs920nBtDvKA8dXaMznwjqqIUNGvkL0kXwUC
 tY6S3buWbHVPOPBYyCoHVSEhUggt7jh+GtLTxdhMLYsmz9Yxfa7PQae8GWDIyW2aPm29
 MQe+hdlpDLPVGzBpxmkRnm00/Ko943ZXtFwWCTlwpIuoLKA6CmW3CfAzo7iumRgkGfJw
 Afn+Ph0d2uT46Td1yi0vI9QcDTC/QzWt+tUcVfhPbLKazJGdqUq9Aq8HmUafTjz1ePpl
 CGug==
X-Gm-Message-State: AOAM532bvZS9sAURL/QkvjEzrq1L360yCCyisz85M09ha/iVal7DVcBD
 pWJUJrHLKyeyUy12DHSzfChLM9BfLIHWzImE1OjrIwhCq9S0
X-Google-Smtp-Source: ABdhPJyqSpVlgYZ7Kv69L7Yr5/7ngYre/wE2XMXivojNJWXyCwLM/npg30emmg9eBU/wh6FL2jvrnSjjBcsAiYvIXyHicYnMMf/J
MIME-Version: 1.0
X-Received: by 2002:a02:9107:: with SMTP id a7mr6642547jag.12.1608346203224;
 Fri, 18 Dec 2020 18:50:03 -0800 (PST)
Date: Fri, 18 Dec 2020 18:50:03 -0800
In-Reply-To: <000000000000f415bd05a047548f@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001e7f4605b6c84833@google.com>
Subject: Re: kernel BUG at drivers/dma-buf/dma-buf.c:LINE!
From: syzbot <syzbot+d6734079f30f7fc39021@syzkaller.appspotmail.com>
To: akpm@linux-foundation.org, arve@android.com, christian.koenig@amd.com, 
 christian@brauner.io, colin.king@canonical.com, devel@driverdev.osuosl.org, 
 dri-devel@lists.freedesktop.org, gregkh@linuxfoundation.org, 
 hridya@google.com, jbwyatt4@gmail.com, joel@joelfernandes.org, 
 linaro-mm-sig-owner@lists.linaro.org, linaro-mm-sig@lists.linaro.org, 
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 linux-media@vger.kernel.org, m.szyprowski@samsung.com, maco@android.com, 
 masahiroy@kernel.org, peterz@infradead.org, shuah@kernel.org, 
 skhan@linuxfoundation.org, sumit.semwal@linaro.org, surenb@google.com, 
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

syzbot suspects this issue was fixed by commit:

commit e722a295cf493388dae474745d30e91e1a2ec549
Author: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date:   Thu Aug 27 12:36:27 2020 +0000

    staging: ion: remove from the tree

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17d4f137500000
start commit:   abb3438d Merge tag 'm68knommu-for-v5.9-rc3' of git://git.k..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=978db74cb30aa994
dashboard link: https://syzkaller.appspot.com/bug?extid=d6734079f30f7fc39021
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17428596900000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: staging: ion: remove from the tree

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
