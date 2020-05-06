Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FAF1C6C41
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 May 2020 10:54:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C5DB886B7;
	Wed,  6 May 2020 08:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zgd7JvensFky; Wed,  6 May 2020 08:54:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 07A818863B;
	Wed,  6 May 2020 08:54:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DCF741BF4DB
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 08:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CEB39856C8
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 08:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hxrx3d+3PxAI for <devel@linuxdriverproject.org>;
 Wed,  6 May 2020 08:54:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0FE678559F
 for <devel@driverdev.osuosl.org>; Wed,  6 May 2020 08:54:21 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 362F8AB8F;
 Wed,  6 May 2020 08:54:20 +0000 (UTC)
Message-ID: <1588755226.13662.17.camel@suse.com>
Subject: Re: KASAN: slab-out-of-bounds Read in hfa384x_usbin_callback
From: Oliver Neukum <oneukum@suse.com>
To: syzbot <syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com>, 
 andreyknvl@google.com, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org,  linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org,  nishkadg.linux@gmail.com,
 syzkaller-bugs@googlegroups.com
Date: Wed, 06 May 2020 10:53:46 +0200
In-Reply-To: <00000000000039420505a14e4951@google.com>
References: <00000000000039420505a14e4951@google.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
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

Am Freitag, den 20.03.2020, 12:28 -0700 schrieb syzbot:
> Hello,
> 
> syzbot found the following crash on:
> 
> HEAD commit:    e17994d1 usb: core: kcov: collect coverage from usb comple..
> git tree:       https://github.com/google/kasan.git usb-fuzzer
> console output: https://syzkaller.appspot.com/x/log.txt?x=11d74573e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=5d64370c438bc60
> dashboard link: https://syzkaller.appspot.com/bug?extid=7d42d68643a35f71ac8a
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15fa561de00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15d74573e00000
> 
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com
> 

Hi,

is this bug still active and can a test be run on it? I requested one
yesterday. If my analysis is correct this bug has security
implications, so it is kind of important.

	Regards
		Oliver

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
