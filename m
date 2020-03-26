Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C4019361B
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 03:43:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E560883F4;
	Thu, 26 Mar 2020 02:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CN3l8LgjZKa0; Thu, 26 Mar 2020 02:43:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D86B3883C6;
	Thu, 26 Mar 2020 02:43:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB5321BF576
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 02:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A814F86EBB
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 02:43:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 43xjq9XvOoJj for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 02:43:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 316B986EBA
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 02:43:03 +0000 (UTC)
Received: by mail-il1-f198.google.com with SMTP id m2so3965580ilb.21
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 19:43:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=aNKbH0C5nhaSvaxnuPHvbScDrpBtg5wAIeotQ1aTojQ=;
 b=OdOWFtuoVFrzenviB7XQbdr4VCn1qa5nSD0R95BnP040MS+PSH/TvoGNw0vvHF0J8j
 TazkCFJHQG6ZDxyLBAd+KnisB5rVF2dfAO9WdRI+DSGYNZ7+S5nqLwlxuqsac5WD1bLH
 q9OkFg/3Vlh+oRjEX8FRyJdxS5e38hPN9MwsGgJa5aJI0uDbVDHKGjHYZ4zqjpb9RWQu
 xycg03KVM5SL5JpxsZeYyX4TBRyYb6D94v1IZsAcnLNk13nsQOFv3+N50JkAlToehW1q
 4zKnjoRR95z2+BsOWPCmNvbXX48svO1DR7sj9xoNZwpgaFo+r7YiAJtpbuyWUc/O0s4m
 gNag==
X-Gm-Message-State: ANhLgQ1KfU0GuUI17nEeLwHKtwQI3kI/7VFRL7aqG2uNdkvgpVHPFA0z
 oeVUIWsrUT92n4Syze0xWyVLPLQDJRK36ZhxdkUXh/Z9O5K6
X-Google-Smtp-Source: ADFU+vsyJo5aW8olRQsuP2lZBL8G2f0aIdWmmHouPiIHprsbNVwb6QosdWSqAkw/ANNEu5ryjz7fKFC1xIL+0vYyBOsRmfaXCFbu
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:be7:: with SMTP id
 d7mr6759283ilu.238.1585190582522; 
 Wed, 25 Mar 2020 19:43:02 -0700 (PDT)
Date: Wed, 25 Mar 2020 19:43:02 -0700
In-Reply-To: <CADG63jDu3Q=OmjaJRKV_drF9vcJt_OhwJoYiKfQ=e0rJif-pOg@mail.gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000929bf405a1b8f162@google.com>
Subject: Re: KASAN: slab-out-of-bounds Read in hfa384x_usbin_callback
From: syzbot <syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com>
To: andreyknvl@google.com, anenbupt@gmail.com, devel@driverdev.osuosl.org, 
 gregkh@linuxfoundation.org, hdanton@sina.com, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, nishkadg.linux@gmail.com, 
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

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger crash:

Reported-and-tested-by: syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com

Tested on:

commit:         e17994d1 usb: core: kcov: collect coverage from usb comple..
git tree:       https://github.com/google/kasan.git
kernel config:  https://syzkaller.appspot.com/x/.config?x=5d64370c438bc60
dashboard link: https://syzkaller.appspot.com/bug?extid=7d42d68643a35f71ac8a
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1406d1d3e00000

Note: testing is done by a robot and is best-effort only.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
