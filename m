Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DEB23548E
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 00:56:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D06285F7C;
	Sat,  1 Aug 2020 22:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4FlKz-QIWHs1; Sat,  1 Aug 2020 22:56:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D0CA858B5;
	Sat,  1 Aug 2020 22:56:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECFFF1BF2B6
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 22:56:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E8CD887B6D
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 22:56:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b58aBWR0qCg9 for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 22:56:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 38B2087B62
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 22:56:10 +0000 (UTC)
Received: by mail-il1-f197.google.com with SMTP id y82so17188281ilk.11
 for <devel@driverdev.osuosl.org>; Sat, 01 Aug 2020 15:56:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=dOzePy5yJodn3MAztJ8MjMszFxBpzjO8+9+k54Plw7U=;
 b=PKhbENprnAP9oL96lWc/ovwembLk48iJgmc2ITV+royeHxixeCrdB2EPCKWHacJ8gJ
 OkmiDXkN7jLHYpIy2AIBRmgXu9Hzf+13AGzKdz8zGu2oiouot75p0l8F5LVVM2wrQzmk
 +G/F7SCJCtVKSu58cQI/TCeznkG4XCpZ5dO6lX8j2SS+dmyO3YTLkClNRDc9QtrkWdc3
 oOe8oRjkGpI7LdtErIb8EWKqJEOoTsboEWwpiSwi9ZeGaFE8gJL56hXXacj3JblKLU6k
 Alj9/3ihlTTl2OHBCWmrjO/q2WhOwKtJjJ7SZRYsQgRxkM24hH3H5dDn9QqrPap8q4vV
 PE8Q==
X-Gm-Message-State: AOAM530AOEmaHFig5uTLqVW876+n5VEmGol02aSYj7BlF6QI4lJY1Cne
 6LTqpaiYiS+L5ASHy6knTViWZmJZxCCNPy1nrk0bt0O6raBF
X-Google-Smtp-Source: ABdhPJzoFyfIZQhNRPiFzD4/WN4vVmjC3jcEN/n2QVLjineSWA8YL2dCDfS0uwVot1kHmJxuiejHJRIs+6Vlg9DaPmCCBtbeQtI1
MIME-Version: 1.0
X-Received: by 2002:a92:79c4:: with SMTP id
 u187mr10446904ilc.194.1596322569603; 
 Sat, 01 Aug 2020 15:56:09 -0700 (PDT)
Date: Sat, 01 Aug 2020 15:56:09 -0700
In-Reply-To: <0000000000007450a405abd572a8@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b54f9f05abd8cfbb@google.com>
Subject: Re: WARNING in hci_conn_timeout
From: syzbot <syzbot+2446dd3cb07277388db6@syzkaller.appspotmail.com>
To: coreteam@netfilter.org, davem@davemloft.net, devel@driverdev.osuosl.org, 
 forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
 johan.hedberg@gmail.com, kaber@trash.net, kadlec@blackhole.kfki.hu, 
 kuba@kernel.org, linux-bluetooth@vger.kernel.org, 
 linux-kernel@vger.kernel.org, marcel@holtmann.org, netdev@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, pablo@netfilter.org, rvarsha016@gmail.com, 
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

commit 3d30311c0e4d834c94e6a27d6242a942d6a76b85
Author: Varsha Rao <rvarsha016@gmail.com>
Date:   Sun Oct 9 11:13:56 2016 +0000

    staging: vt6655: Removes unnecessary blank lines.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17023a14900000
start commit:   7dc6fd0f Merge branch 'i2c/for-current' of git://git.kerne..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=14823a14900000
console output: https://syzkaller.appspot.com/x/log.txt?x=10823a14900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e59ee776d5aa8d55
dashboard link: https://syzkaller.appspot.com/bug?extid=2446dd3cb07277388db6
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13f781d4900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=116a0c14900000

Reported-by: syzbot+2446dd3cb07277388db6@syzkaller.appspotmail.com
Fixes: 3d30311c0e4d ("staging: vt6655: Removes unnecessary blank lines.")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
