Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE7E63BA9
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 21:06:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41DD685E77;
	Tue,  9 Jul 2019 19:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g-zjevXAm-Bj; Tue,  9 Jul 2019 19:06:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EFFB85E27;
	Tue,  9 Jul 2019 19:06:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 952E91BF280
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 19:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9186A87B94
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 19:06:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WF8SB9Z4u3aE for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 19:06:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 212BD81D3F
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 19:06:31 +0000 (UTC)
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CAF82082A;
 Tue,  9 Jul 2019 19:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562699190;
 bh=fE70n4kR+uCMC58qv7QUmipRJhcIVWrEqYIhm4DJJqM=;
 h=Date:From:To:Cc:Subject:From;
 b=wcNJBs+S6fsc/60xBzsXftUJBn1tOziTsryYBRqOm9Q4SQtBmc1aOI9aDQ7PGmx8p
 /ktLxJoCsn1CMldVbHchSGIQDeMjJa6XxdXHlnV3WBtNfzXx2w1Q38rIkxZM2mtMaH
 WfWHNj/2A5+6eVSXG7nD2XyS4vFedJ2AYqxKgaxs=
Date: Tue, 9 Jul 2019 12:06:28 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>
Subject: Reminder: 1 open syzbot bug in "android/ashmem" subsystem
Message-ID: <20190709190628.GB641@sol.localdomain>
Mail-Followup-To: devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>,
 linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

[This email was generated by a script.  Let me know if you have any suggestions
to make it better, or if you want it re-generated with the latest status.]

Of the currently open syzbot reports against the upstream kernel, I've manually
marked 1 of them as possibly being a bug in the "android/ashmem" subsystem.

If you believe this bug is no longer valid, please close the syzbot report by
sending a '#syz fix', '#syz dup', or '#syz invalid' command in reply to the
original thread, as explained at https://goo.gl/tpsmEJ#status

If you believe I misattributed this bug to the "android/ashmem" subsystem,
please let me know, and if possible forward the report to the correct people or
mailing list.

Here is the bug:

--------------------------------------------------------------------------------
Title:              WARNING in __vm_enough_memory
Last occurred:      77 days ago
Reported:           539 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=52304f8f4b4e28508d52875f95df5e30417eff1b
Original thread:    https://lkml.kernel.org/lkml/001a1144593661efb50562d9624f@google.com/T/#u

This bug has a C reproducer.

The original thread for this bug received 1 reply, 539 days ago.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+cc298e15b6a571ba0c55@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/001a1144593661efb50562d9624f@google.com

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
