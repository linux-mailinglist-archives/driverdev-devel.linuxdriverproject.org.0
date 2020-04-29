Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0941C1BDB7A
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 14:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E83A587880;
	Wed, 29 Apr 2020 12:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9I4Ud4YDIdMH; Wed, 29 Apr 2020 12:12:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C819C8789E;
	Wed, 29 Apr 2020 12:12:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC30C1BF5AC
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 12:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E4A4E87853
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 12:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KCKNf2Ow0dx4 for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 12:12:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F2305842F2
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 12:12:03 +0000 (UTC)
Received: by mail-io1-f69.google.com with SMTP id j17so2188717iow.5
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 05:12:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=PcO8Kd1YBitB52qqPhTJQcKlql/IIwrSnAimZeG48WY=;
 b=IUjD9X2sGckUNiBTvGmO/vaXopvecYoRpbjrywkSv2K6biFJL+NEnWfua6qKK5XZDF
 xIt8DY/APhyeGbi5hzRuBI5aoKjhEPQrD1E3QMJZ6e5SoWw9W7ZhpEyhHzvOokL5l4IR
 uwx5055PWQBa/x8XRB+3JrQ9IQ6idwYjUmBnpujXT/QBeQlKMKC9KFjZTZcqbt2tNyVM
 xAz2RazJ4OJcIJ0ZqBMT59oQOu+ILyQUdhq/lrYTVC0V3PXdqdPJPRCMvauetH5Jyjsf
 H97rMQZZ3SP1gk2Py9hGiflvhYWrbhIgG5/BmButRcGzp0y8EWmfKaJdZnbIajxgZcUH
 9PvA==
X-Gm-Message-State: AGi0PuauwjL463z48+LJtui6v4/JBmiaiMOWjHByRA2KjCfBkB1bSQkB
 aP/cVu2c98CywKPzt1RU0CQ11ivcOfcLDzPkcBHFm7PdlR+Q
X-Google-Smtp-Source: APiQypJP2W68RxtxIieiSS1l8KwM59eBNQMIxwjGv9JUZ6878yRXgSmubwKDBS1vqBOIm8e+WhASeRnX1wkEPaga96kMUFN9cOqO
MIME-Version: 1.0
X-Received: by 2002:a92:6c0b:: with SMTP id h11mr72208ilc.158.1588162322766;
 Wed, 29 Apr 2020 05:12:02 -0700 (PDT)
Date: Wed, 29 Apr 2020 05:12:02 -0700
In-Reply-To: <00000000000051770905984d38d3@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001821b605a46cdb7f@google.com>
Subject: Re: WARNING in exfat_bdev_read
From: syzbot <syzbot+1930da7118e99b06e4ab@syzkaller.appspotmail.com>
To: alexander.levin@microsoft.com, davem@davemloft.net, 
 devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 mchehab@kernel.org, namjae.jeon@samsung.com, pragat.pandya@gmail.com, 
 syzkaller-bugs@googlegroups.com, valdis.kletnieks@vt.edu
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

syzbot suspects this bug was fixed by commit:

commit 5f33771fb0ac484d6e8cc34cb1e27c37442cd0db
Author: Namjae Jeon <namjae.jeon@samsung.com>
Date:   Fri Jan 3 01:13:45 2020 +0000

    staging: exfat: add STAGING prefix to config names

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1407f818100000
start commit:   32ef9553 Merge tag 'fsnotify_for_v5.5-rc1' of git://git.ke..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=ff560c3de405258c
dashboard link: https://syzkaller.appspot.com/bug?extid=1930da7118e99b06e4ab
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10e208a6e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11f83882e00000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: staging: exfat: add STAGING prefix to config names

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
