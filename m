Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBA623AB5B
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 19:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF15687D0E;
	Mon,  3 Aug 2020 17:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NXz01chIjW-W; Mon,  3 Aug 2020 17:08:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CED887A14;
	Mon,  3 Aug 2020 17:08:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 605121BF359
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 17:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5CCC687A14
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 17:08:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MXaONQhyDnvI for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 17:08:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB9BA8798A
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 17:08:06 +0000 (UTC)
Received: by mail-il1-f197.google.com with SMTP id l6so16936669ilf.8
 for <devel@driverdev.osuosl.org>; Mon, 03 Aug 2020 10:08:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=Uagz7c3ZVrQ4AmBTqTiRjiEhG5PZlj6ITpIEOjqwLlk=;
 b=UplgbXxx4KkyFIdXD1/4QCNy2MnvMyuFPga4+f7o9BS+qXCXhHXH2wIR0DmbZa+6IB
 0WamBkOxEOAchQ1GdZusIeKnFLTarZ9QxNYd8DTr8v6OrfwsSFajqWgv6MCuozOdaCc1
 106zl3ACLnFVC3dXHgJQejBO56X43nFdv4MtVBWkFiLdxOX0FU0y+/UzV9MuaNLF+qJx
 X7+zxRZLe683QHWtdywTvJgdQ3ilP+3melz7Jf7fBczRoFFvkS/+LzLOjRa58homvBP1
 SyLBN3vlqdXDxU+p1wBrao6TeElkEBoy3a3DIqYh+t2UsY0kRvKFzrMr5LlUf6Y2P5BS
 NAMw==
X-Gm-Message-State: AOAM533JqhMRYK6O926R9FWJ7y2AeRkvs4oA3rCM43mDeZ1tA2y3JjIT
 Gzky9FkKDVRmAlhy7MBsZZS/RJO/d9z8q+glaAR9HS2JA5HW
X-Google-Smtp-Source: ABdhPJwUoO2AGC6UR45bmv6qFFKyJ8ndp7XrS1e6QhsHYtzpbvYwfQUycvap8dTkeAspF89iKUlUGDNf8nhiIGlpOp1dgS5vlqxA
MIME-Version: 1.0
X-Received: by 2002:a6b:bb43:: with SMTP id l64mr795486iof.191.1596474486108; 
 Mon, 03 Aug 2020 10:08:06 -0700 (PDT)
Date: Mon, 03 Aug 2020 10:08:06 -0700
In-Reply-To: <000000000000adea7f05abeb19cf@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a335a405abfc2e1e@google.com>
Subject: Re: KASAN: use-after-free Read in hci_chan_del
From: syzbot <syzbot+305a91e025a73e4fd6ce@syzkaller.appspotmail.com>
To: coreteam@netfilter.org, davem@davemloft.net, devel@driverdev.osuosl.org, 
 eric@anholt.net, gregkh@linuxfoundation.org, johan.hedberg@gmail.com, 
 kaber@trash.net, kadlec@blackhole.kfki.hu, kuba@kernel.org, 
 linux-bluetooth@vger.kernel.org, linux-kernel@vger.kernel.org, 
 marcel@holtmann.org, netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, 
 pablo@netfilter.org, syzkaller-bugs@googlegroups.com
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

commit 166beccd47e11e4d27477e8ca1d7eda47cf3b2da
Author: Eric Anholt <eric@anholt.net>
Date:   Mon Oct 3 18:52:06 2016 +0000

    staging/vchi: Convert to current get_user_pages() arguments.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=178321a4900000
start commit:   5a30a789 Merge tag 'x86-urgent-2020-08-02' of git://git.ke..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=144321a4900000
console output: https://syzkaller.appspot.com/x/log.txt?x=104321a4900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e59ee776d5aa8d55
dashboard link: https://syzkaller.appspot.com/bug?extid=305a91e025a73e4fd6ce
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=127dd914900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=122a94ec900000

Reported-by: syzbot+305a91e025a73e4fd6ce@syzkaller.appspotmail.com
Fixes: 166beccd47e1 ("staging/vchi: Convert to current get_user_pages() arguments.")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
