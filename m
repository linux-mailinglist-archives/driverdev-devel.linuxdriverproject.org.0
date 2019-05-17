Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 708B6216B9
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 12:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7BD3184B26;
	Fri, 17 May 2019 10:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MgSCZIqdmqMv; Fri, 17 May 2019 10:08:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29BEF844C6;
	Fri, 17 May 2019 10:08:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BAFF1BF958
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 10:08:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63017313B3
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 10:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tPNYI5gAZNW4 for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 10:08:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by silver.osuosl.org (Postfix) with ESMTPS id BA8C931393
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 10:08:32 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id u2so5032431ioc.4
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 03:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dYic2P+6ud2BLpzg39R0w8EtXyHQz8gOx45AtfjtiR8=;
 b=ABq07RSiGAWIk0DyhQtRbQ4+sNALkDk3FtcRTZYJ5CyrBcva8qLEokN/3bAybveOCT
 txSMgGCGrnMiKYTpmCd/0+gXBoDXi0S+KaUM3JRrQTZsrykrM8UAjWof6IKTfH0GtVcO
 NZLmuMhxkSlU5E9o6voqi1E8J4alq/30kJ7RytfDbKPK2GnrdyU5zt2A4qne+bofGkRD
 CUus1EWBCw8KFV3rIq57+59sBQYphwsb1nw9VICZR5LJWX2hqsMTYIyTuv/iFOJkPMmv
 2oblBW/ztdufoKxfXglFxQv9J+1KHYof7YlVu0hmrjLPKHHUam16JJYe1ceDEaTawHQq
 yJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dYic2P+6ud2BLpzg39R0w8EtXyHQz8gOx45AtfjtiR8=;
 b=JztyCvg8+g64L9SieYLriPy+gh88R300bsaqC8md51Vw0Ep0it+LmmJ4908pJ0KMMD
 oZTOoK9+D1CFIVsMWYHwbKmv2AAGFuM7lhv7v7PbitJ+2s5PX3YuA09dbjyu3BviYLVo
 x+2ynkWS+ofxXFZOkvBLhdxPLFzzse7OyPd1jYFRHwbH6EM7Dg2T8Jvsb0gZ0OSCmRgL
 d1WxjOBTEldKC4A1jdJr3RMiqEDgGlR5gxwXsvBs0pdt0n4S+JqfK/TzQ/3oLmVDc2+s
 Z6gXxxheerSsJpj+GG3EaooXRiEIsiXHOJ1FKUY5ujNXfx0pQC3XZTjIBavFeD7Z7khi
 SxRQ==
X-Gm-Message-State: APjAAAVNH0ZoAAvqZ8+d5kfZ8K5lCjVkIkw3rRt5r5bFk1kDN6Dgpb5t
 YTDhiPv8WpGn4FP+rNREaSdFobClqf9WXtk5CThHpA==
X-Google-Smtp-Source: APXvYqwEEZ2yXkAnVJjBdQFDFEn8Qtyca+gitm77OgT4AIzInew3bWhqh6K5bO0rSsvDl6TnCPyWQ/h/MGw1wLEkF7g=
X-Received: by 2002:a5d:9dc2:: with SMTP id 2mr4521348ioo.3.1558087711591;
 Fri, 17 May 2019 03:08:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRSSEy3od0-7HMCOjbHprc9ihu3VqkJi1-5OKew0oN-2BcPvA@mail.gmail.com>
 <0000000000001165cb058538aaee@google.com>
In-Reply-To: <0000000000001165cb058538aaee@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 17 May 2019 12:08:20 +0200
Message-ID: <CACT4Y+bvMEQRcxqM4c9zc-eySQBnuGipwudCNvBv5f+Dgyr3ow@mail.gmail.com>
Subject: Re: kernel BUG at drivers/android/binder_alloc.c:LINE! (3)
To: syzbot <syzbot+f9f3f388440283da2965@syzkaller.appspotmail.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 29, 2019 at 10:55 AM syzbot
<syzbot+f9f3f388440283da2965@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot has tested the proposed patch and the reproducer did not trigger
> crash:
>
> Reported-and-tested-by:
> syzbot+f9f3f388440283da2965@syzkaller.appspotmail.com
>
> Tested on:
>
> commit:         8c2ffd91 Linux 5.1-rc2
> git tree:
> git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git master
> kernel config:  https://syzkaller.appspot.com/x/.config?x=8dcdce25ea72bedf
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> patch:          https://syzkaller.appspot.com/x/patch.diff?x=10fed663200000
>
> Note: testing is done by a robot and is best-effort only.


Todd,

Should this patch fix the bug? Should we close the bug as fixed then?
In my local testing I see this BUG still fires, but if we will leave
old fixed bugs open, we will not get notifications about new crashes.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
