Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4379D239D20
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 02:49:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B083E8516A;
	Mon,  3 Aug 2020 00:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l8JDKuyk65to; Mon,  3 Aug 2020 00:49:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1C03850E6;
	Mon,  3 Aug 2020 00:49:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A62641BF388
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 00:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9C7B5204AF
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 00:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fPliigpMXK0U for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 00:49:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 by silver.osuosl.org (Postfix) with ESMTPS id 8699720485
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 00:49:05 +0000 (UTC)
Received: by mail-io1-f70.google.com with SMTP id s5so20254341iow.2
 for <devel@driverdev.osuosl.org>; Sun, 02 Aug 2020 17:49:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=zjMjCpZHpZC9oX4mSp6lGsDleX+rgZUM4Hc+zQq53tE=;
 b=oiOpW3nMT2xlXOdNnnoE5F3sp5tMzVRTOZ+gNJC+26u7Ld5aIR3DLI4n0S4rfkQvf0
 MeoE/MBUaxmaqKO3a4d9im5TsRnPeHtch3t0v9L50j/mCoN9jO8so93+viAMaxYjZ4+7
 0zd5dnsyF3GIkOND5nTjQ3AkrNxEDR1EUILCy4uQBOnVDSvXxVKawAVIMxWlZQFf64Fo
 pRLg7/nLER8VTpYJYxfflguADrE/ENomT5Q/FdKcoYEk/3Yv1rZAXjDSQsFxC57hsHvU
 5loHQ7w7IcJYz4ug3MyTbtgQcQF7wUCyHFABDfkYpI31j70XgwBO6o58CK8M6uUVP4K/
 xdew==
X-Gm-Message-State: AOAM531vMkpVvjPIcSlSDZQ7Wrjol8I/AnwklLz60kZaBxk+6Up8M8TJ
 kp8NBwfmhv956IYIPgRwb6y0JoMebxVh7eoBcc1AkkI/j/KD
X-Google-Smtp-Source: ABdhPJx51fMhfJaafxHzZAN2jjWSIrSl/b5CFIul4+GGQOi4s1mKok/hTo4u9c3s4cBgSHZ/wcwXjrq3H3VFwrd210mpw03EVfqe
MIME-Version: 1.0
X-Received: by 2002:a05:6602:15d0:: with SMTP id
 f16mr168098iow.45.1596415744953; 
 Sun, 02 Aug 2020 17:49:04 -0700 (PDT)
Date: Sun, 02 Aug 2020 17:49:04 -0700
In-Reply-To: <000000000000ab11c505abeb19f5@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000064571305abee81ea@google.com>
Subject: Re: KASAN: use-after-free Write in __sco_sock_close
From: syzbot <syzbot+077eca30d3cb7c02b273@syzkaller.appspotmail.com>
To: coreteam@netfilter.org, davem@davemloft.net, devel@driverdev.osuosl.org, 
 gregkh@linuxfoundation.org, johan.hedberg@gmail.com, kaber@trash.net, 
 kadlec@blackhole.kfki.hu, kuba@kernel.org, linux-bluetooth@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 marcel@holtmann.org, mchehab@kernel.org, mchehab@s-opensource.com, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, pablo@netfilter.org, 
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

commit 43ea43b9d8b27b7acd443ec59319faa3cdb8a616
Author: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Date:   Wed Oct 12 11:21:43 2016 +0000

    [media] radio-bcm2048: don't ignore errors

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1036e6a4900000
start commit:   ac3a0c84 Merge git://git.kernel.org/pub/scm/linux/kernel/g..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1236e6a4900000
console output: https://syzkaller.appspot.com/x/log.txt?x=1436e6a4900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e59ee776d5aa8d55
dashboard link: https://syzkaller.appspot.com/bug?extid=077eca30d3cb7c02b273
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12cf1904900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10d52e14900000

Reported-by: syzbot+077eca30d3cb7c02b273@syzkaller.appspotmail.com
Fixes: 43ea43b9d8b2 ("[media] radio-bcm2048: don't ignore errors")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
