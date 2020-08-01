Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5215235366
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Aug 2020 18:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54D1B8623E;
	Sat,  1 Aug 2020 16:33:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QRN0IjWly8bz; Sat,  1 Aug 2020 16:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B9868618F;
	Sat,  1 Aug 2020 16:33:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B1AC1BF3F4
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 16:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 12A72203E5
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 16:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b4yfcdigwsSu for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 16:33:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
 by silver.osuosl.org (Postfix) with ESMTPS id 3E1A5203E7
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 16:33:06 +0000 (UTC)
Received: by mail-il1-f200.google.com with SMTP id w81so23882286ilk.23
 for <devel@driverdev.osuosl.org>; Sat, 01 Aug 2020 09:33:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=SIdCK8Q+4LKw+jmzrptYCoQd/JoF3mumY50X9Ph/hTE=;
 b=cKryOdFoH7j4IBqrw2yOPVnvg0tytCOGgxmiqcET4Of/FGDRk5T1n8SjPNvkh3zNfv
 r9QDog8vo2SVuEX1B6OqnFsqlSU0/FGn8AkV270qpsOkTL81i/b75lMsaYJGqFaduXYA
 jhzReaFfteMkG71G4vDUk/FXH/NgPjUEzG/9TEMnBkzGg8AuckhSS9lOZrMsDrH/A9OJ
 4s09dwywYM9KFqeFF/3SUJVi17YOa0M4ERxYxP8RZc+0C6Xtr/IT5Th4YLkdAfNG011m
 d6C+vq0Uzq0vQ1/ASMhkJsx0RXh/IzrCAJc80AeDCIABxhKS25/B77mvDaRJ6mY5LZJ8
 mf+A==
X-Gm-Message-State: AOAM531aQxoa92wr+H/d2HWwu2+Z2IBrAGLoZmlHaDanN1Eda7hl9PHp
 dAmoFwED0o8IqM3ywf6fsBx9WH9Nr/Dj6jOsz+xWacAh8bau
X-Google-Smtp-Source: ABdhPJxr/wL4FBG9BjuUQiXlSC8n5B0989oGaJ3+8JI4slsvtNxiaGVvvNeo1Fc/qvwpgTWkAaur6QYbJbGO5vawji+M3kZenXYs
MIME-Version: 1.0
X-Received: by 2002:a05:6602:1343:: with SMTP id
 i3mr8889517iov.134.1596299585453; 
 Sat, 01 Aug 2020 09:33:05 -0700 (PDT)
Date: Sat, 01 Aug 2020 09:33:05 -0700
In-Reply-To: <000000000000f298fc05abb42b70@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000bf03f305abd37535@google.com>
Subject: Re: WARNING: ODEBUG bug in cancel_delayed_work
From: syzbot <syzbot+338f014a98367a08a114@syzkaller.appspotmail.com>
To: bhumirks@gmail.com, coreteam@netfilter.org, davem@davemloft.net, 
 devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, 
 johan.hedberg@gmail.com, kaber@trash.net, kadlec@blackhole.kfki.hu, 
 kuba@kernel.org, linux-bluetooth@vger.kernel.org, 
 linux-kernel@vger.kernel.org, marcel@holtmann.org, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, 
 syzkaller-bugs@googlegroups.com
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

syzbot has bisected this issue to:

commit 43ff7f53de2294a83dcf84b35de6ffa1ffafae9d
Author: Bhumika Goyal <bhumirks@gmail.com>
Date:   Thu Oct 6 18:10:01 2016 +0000

    Staging: vc04_services: vchiq_arm: Remove unused function remote_event_destroy

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=107c810c900000
start commit:   d8b9faec Merge tag 'drm-fixes-2020-07-31' of git://anongit..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=127c810c900000
console output: https://syzkaller.appspot.com/x/log.txt?x=147c810c900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c0cfcf935bcc94d2
dashboard link: https://syzkaller.appspot.com/bug?extid=338f014a98367a08a114
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1111ad5c900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16565d5c900000

Reported-by: syzbot+338f014a98367a08a114@syzkaller.appspotmail.com
Fixes: 43ff7f53de22 ("Staging: vc04_services: vchiq_arm: Remove unused function remote_event_destroy")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
