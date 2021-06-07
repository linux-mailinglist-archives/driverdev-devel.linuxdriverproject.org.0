Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753D039E986
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Jun 2021 00:25:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCA974010A;
	Mon,  7 Jun 2021 22:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bIsf3cmcu4Mm; Mon,  7 Jun 2021 22:25:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 852E4401EC;
	Mon,  7 Jun 2021 22:25:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A88B51BF301
 for <devel@linuxdriverproject.org>; Mon,  7 Jun 2021 22:25:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 975AC400D1
 for <devel@linuxdriverproject.org>; Mon,  7 Jun 2021 22:25:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBf__HH7TIG9 for <devel@linuxdriverproject.org>;
 Mon,  7 Jun 2021 22:25:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CC69400C0
 for <devel@driverdev.osuosl.org>; Mon,  7 Jun 2021 22:25:08 +0000 (UTC)
Received: by mail-io1-f69.google.com with SMTP id
 p2-20020a5d98420000b029043b3600ac76so13062417ios.22
 for <devel@driverdev.osuosl.org>; Mon, 07 Jun 2021 15:25:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=b6fHq6inNIhipW1ztkPlqvY4f9MP6CcM1fFIRec2g9Q=;
 b=Qlt95b3IS9SmJ3G4iaeOS7vhqsYz91g6ye9G/7sgfgeKd3vxUkNOww0HSeN+BQCayt
 DyXFcKT2+eGNkoMALIPWR1DFUeGcVZbA1l8qva4CKcFY0xKHhPXW+MmzUsWWSmHjTaZr
 2dPrzvl5TFfzHKE4ylVRPrXvTSpPQvECj0XdZ9bP9mX/S99h7zT8LkStprqTnok3nifw
 wDcnUUI/1At24OzqK7URY68XH6zmV4UQuM76RmpndWt8RZp5lCw4NsIM8FuKObpjo21E
 47BzNrhNLJ4ZyKpZwmSc/w9nWDdBuipTIvg5B3GhyXG0Qu931UI4KGNTqH0DizZiM9Jg
 UspA==
X-Gm-Message-State: AOAM530eQcR/KWi0hFBlJN+Kyasx4nu1L/BQmYNbkBIV/C6Os0ooh7LZ
 0ZzbGojkXc+E3iDxAvpc/EW1mCqAne7xi4+HmEUqVhB89Lyf
X-Google-Smtp-Source: ABdhPJwtAcTvPmWHX1yhNgZvplxVlg3Lq4Iy23LPMcdSinVbgK/jgNTPKiwR7uQG+A5JZN6RstwFjKbGZgb+FMJKPmXgZx7fH8dH
MIME-Version: 1.0
X-Received: by 2002:a92:c98b:: with SMTP id y11mr16544524iln.27.1623104707679; 
 Mon, 07 Jun 2021 15:25:07 -0700 (PDT)
Date: Mon, 07 Jun 2021 15:25:07 -0700
In-Reply-To: <000000000000adea7f05abeb19cf@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000088dbd105c4348388@google.com>
Subject: Re: [syzbot] KASAN: use-after-free Read in hci_chan_del
From: syzbot <syzbot+305a91e025a73e4fd6ce@syzkaller.appspotmail.com>
To: Jason@zx2c4.com, anmol.karan123@gmail.com, coiby.xu@gmail.com, 
 coreteam@netfilter.org, davem@davemloft.net, devel@driverdev.osuosl.org, 
 dsahern@kernel.org, dvyukov@google.com, eric@anholt.net, fw@strlen.de, 
 greg@kroah.com, gregkh@linuxfoundation.org, johan.hedberg@gmail.com, 
 kaber@trash.net, kadlec@blackhole.kfki.hu, kadlec@netfilter.org, 
 kernel-hardening@lists.openwall.com, kuba@kernel.org, 
 linux-bluetooth@vger.kernel.org, 
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org, 
 marcel@holtmann.org, netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, 
 pablo@netfilter.org, phil@philpotter.co.uk, syzkaller-bugs@googlegroups.com, 
 syzscope@gmail.com, yoshfuji@linux-ipv6.org
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

commit 43016d02cf6e46edfc4696452251d34bba0c0435
Author: Florian Westphal <fw@strlen.de>
Date:   Mon May 3 11:51:15 2021 +0000

    netfilter: arptables: use pernet ops struct during unregister

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1325d967d00000
start commit:   af5043c8 Merge tag 'acpi-5.10-rc4' of git://git.kernel.org..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=f9aa2432c01bcb1f
dashboard link: https://syzkaller.appspot.com/bug?extid=305a91e025a73e4fd6ce
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=130152a1500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=102b1bba500000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: netfilter: arptables: use pernet ops struct during unregister

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
