Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 567EF2DBBDD
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Dec 2020 08:15:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 921C386A7A;
	Wed, 16 Dec 2020 07:15:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ewl1iliyNZrm; Wed, 16 Dec 2020 07:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5F5E86A92;
	Wed, 16 Dec 2020 07:15:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 78C401BF401
 for <devel@linuxdriverproject.org>; Wed, 16 Dec 2020 07:15:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 710B986A89
 for <devel@linuxdriverproject.org>; Wed, 16 Dec 2020 07:15:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IEs-d1osyaQz for <devel@linuxdriverproject.org>;
 Wed, 16 Dec 2020 07:15:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C6A2586A28
 for <devel@driverdev.osuosl.org>; Wed, 16 Dec 2020 07:15:03 +0000 (UTC)
Received: by mail-il1-f198.google.com with SMTP id r20so18707132ilh.23
 for <devel@driverdev.osuosl.org>; Tue, 15 Dec 2020 23:15:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=36zW/PbpiTCKuG8Esvh3+4Beyh5+p/0KAx49415NdvY=;
 b=FZ5rSIFJbYTkQvhLed5NVYw86bcDzZI4252mkJkhBGIjWjZHYi7UxjK1Kl9BZL8X7r
 Smgol92/c9PhwOBqsDQIp5OUISc0bDWQuiPj3Kh609w58QntcV8cu+1H/Q0gzcdXW+2p
 lcqZO1iyYk3/XmXgCsg+anzy46mzlA6ClAozB5g9g+Yfct6lt8jd65Zg9z9oj4aSiwVR
 YKT9LebkxW6XAD3P81SOP60zCg4ok6T9VM7Ta6MlEqpijBNQc4YK2v67EDAhQgt9A10T
 Ws/UEmrQhkIX4HuBb1jB95ANenD/s8zud32qnZR+WysvVb4JuW7/Io6/vbn88gC//lUG
 gXxw==
X-Gm-Message-State: AOAM530xHB0CwysVSftOt2MQQgzlSJ2zDbowZoadhUOjxRzoKTyPUT23
 tSSDlmJJE2WfMaL4BfiACYxD/hnpQTRIPo1lfaso4nEjM3ZC
X-Google-Smtp-Source: ABdhPJyE+w4DQGI1MtjxdqzF3IywhKSts84lZVnS0w5MQcPUmCQp7IMO10IRfWgV2p9/kkfUbcykf9u+Dd+WT8lfjHM/CdRp4VIy
MIME-Version: 1.0
X-Received: by 2002:a6b:c9cb:: with SMTP id
 z194mr40484133iof.110.1608102903193; 
 Tue, 15 Dec 2020 23:15:03 -0800 (PST)
Date: Tue, 15 Dec 2020 23:15:03 -0800
In-Reply-To: <000000000000ab11c505abeb19f5@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004ea4fe05b68fa299@google.com>
Subject: Re: KASAN: use-after-free Write in __sco_sock_close
From: syzbot <syzbot+077eca30d3cb7c02b273@syzkaller.appspotmail.com>
To: anmol.karan123@gmail.com, coreteam@netfilter.org, davem@davemloft.net, 
 devel@driverdev.osuosl.org, foxhlchen@gmail.com, gregkh@linuxfoundation.org, 
 johan.hedberg@gmail.com, kaber@trash.net, kadlec@blackhole.kfki.hu, 
 kuba@kernel.org, linux-bluetooth@vger.kernel.org, 
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

syzbot suspects this issue was fixed by commit:

commit 6dfccd13db2ff2b709ef60a50163925d477549aa
Author: Anmol Karn <anmol.karan123@gmail.com>
Date:   Wed Sep 30 14:18:13 2020 +0000

    Bluetooth: Fix null pointer dereference in hci_event_packet()

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14cb845b500000
start commit:   47ec5303 Merge git://git.kernel.org/pub/scm/linux/kernel/g..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=e0c783f658542f35
dashboard link: https://syzkaller.appspot.com/bug?extid=077eca30d3cb7c02b273
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=165a89dc900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=130a8c62900000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: Bluetooth: Fix null pointer dereference in hci_event_packet()

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
