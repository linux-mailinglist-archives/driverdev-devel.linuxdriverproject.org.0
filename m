Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A16523D9CD
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 13:19:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 71693203C8;
	Thu,  6 Aug 2020 11:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IEGn6QMQ8vki; Thu,  6 Aug 2020 11:19:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 31BCD23DB4;
	Thu,  6 Aug 2020 11:19:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 37D2A1BF3E5
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 11:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3449088168
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 11:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z7hof60IXBjY for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 11:19:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F2BF788164
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 11:19:04 +0000 (UTC)
Received: by mail-io1-f72.google.com with SMTP id z25so26608704ioh.21
 for <devel@driverdev.osuosl.org>; Thu, 06 Aug 2020 04:19:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=656dnNAuUUnD/k18gLmyRR/+raciy1Oyj/NPSnNG5xk=;
 b=EbjdQ3zvcVlOgc4+L6qbObkoze8YB8e7acqCxJu2RzT5mPj8WFCET7HGxi7dFcSl0z
 amZhEqLQgsGFObqc4BnP/drgg1lk1nSoVKc57qNzaw6+ByMFiPYuu6tUj4gKE0Mxl2QM
 ywy76eMoNF+2c/2R+Tqf/XDwoPnzddIzbDRxcRgfTc8Wu4WhjQ6m3fJ59iSophIXuKwa
 ZOecsZWunmxcmbrIJ+0BTdadHuZBbWggr+YAYQBqg8Hg7hra6S2zKLvrLHPMXvH5ZrTF
 RcQTaMpWvqDFgiI9Za2CfRnedp7yT4WVn3ys2w8YnqXyHY/V/6ji2qVIzUK7pVZv3qhm
 pcpg==
X-Gm-Message-State: AOAM532fI3dxRyub6eCnB+dCfgXcVWTGF2BP/FS8zOFZtQwvsRMvFvoe
 R9sazMTHp8W4AfqGPacwxuM2tBHPmWXUfYGKGZAOCa26ABrj
X-Google-Smtp-Source: ABdhPJwcAiTy/wffzoJCdETIFtbVqx/gf0LyEU7YnrR+t22WgktHp0EA2zFRLzq4BhmxgcgX5gUlZD0bRSKQNpJblmn7VpzbFmVA
MIME-Version: 1.0
X-Received: by 2002:a92:9106:: with SMTP id t6mr10728891ild.105.1596712744169; 
 Thu, 06 Aug 2020 04:19:04 -0700 (PDT)
Date: Thu, 06 Aug 2020 04:19:04 -0700
In-Reply-To: <0000000000006925ea05a69d5bfb@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ecb92805ac33a761@google.com>
Subject: Re: WARNING in binder_transaction_buffer_release (2)
From: syzbot <syzbot+e113a0b970b7b3f394ba@syzkaller.appspotmail.com>
To: arve@android.com, christian@brauner.io, devel@driverdev.osuosl.org, 
 gregkh@linuxfoundation.org, jannh@google.com, joel@joelfernandes.org, 
 linux-kernel@vger.kernel.org, maco@android.com, 
 syzkaller-bugs@googlegroups.com, tkjos@android.com, tkjos@google.com
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

commit 4b836a1426cb0f1ef2a6e211d7e553221594f8fc
Author: Jann Horn <jannh@google.com>
Date:   Mon Jul 27 12:04:24 2020 +0000

    binder: Prevent context manager from incrementing ref 0

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10c84dec900000
start commit:   9cb1fd0e Linux 5.7-rc7
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=cca7550d53ffa599
dashboard link: https://syzkaller.appspot.com/bug?extid=e113a0b970b7b3f394ba
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1230353c100000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17fd535e100000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: binder: Prevent context manager from incrementing ref 0

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
