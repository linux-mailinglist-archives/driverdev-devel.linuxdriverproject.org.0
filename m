Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBF41499AC
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 09:55:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B99D886180;
	Sun, 26 Jan 2020 08:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NTNiLn347U9n; Sun, 26 Jan 2020 08:55:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10E7685BBD;
	Sun, 26 Jan 2020 08:55:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 64D691BF426
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 08:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5E1592010D
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 08:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OC0GHB9tCf93 for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 08:55:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B961620033
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 08:55:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 102E32071A;
 Sun, 26 Jan 2020 08:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580028937;
 bh=n2nIzaSKhRLa1kWmgJ3uBhJ4DhQVJLVuCuYtEtMl7ik=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zrTfA3F4bkp7cB9QtVrBzAFPiesqw1fwFv7dkwpGgQSIMyD8XRU6JhMpbeZ13PZig
 pwJvqvC+3U8/IKhEdZK9Nbx6MfciCWkyrUiy6AE04uYitUOoVrMxDxLYk2Jgiov6iy
 87eMDtaAqLn1gmhdttbmT/KOcuu8DXhQ2NR6J4wk=
Date: Sun, 26 Jan 2020 09:55:35 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dmitry Vyukov <dvyukov@google.com>
Subject: Re: binderfs interferes with syzkaller?
Message-ID: <20200126085535.GA3533171@kroah.com>
References: <CACT4Y+bg1UKXzZF4a9y+5CfNYRwBc5Gx+GjPS0Dhb1n-Qf50+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACT4Y+bg1UKXzZF4a9y+5CfNYRwBc5Gx+GjPS0Dhb1n-Qf50+g@mail.gmail.com>
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
 Todd Kjos <tkjos@android.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 syzkaller <syzkaller@googlegroups.com>, Hridya Valsaraju <hridya@google.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 25, 2020 at 06:49:49PM +0100, Dmitry Vyukov wrote:
> Hi binder maintainers,
> 
> It seems that something has happened and now syzbot has 0 coverage in
> drivers/android/binder.c:
> https://storage.googleapis.com/syzkaller/cover/ci-upstream-kasan-gce-root.html
> It covered at least something there before as it found some bugs in binder code.
> I _suspect_ it may be related to introduction binderfs, but it's
> purely based on the fact that binderfs changed lots of things there.
> And I see it claims to be backward compatible.

It is backwards compatible if you mount binderfs, right?

> syzkaller strategy to reach binder devices is to use
> CONFIG_ANDROID_BINDER_DEVICES to create a bunch of binderN devices (to
> give each test process a private one):
> https://github.com/google/syzkaller/blob/master/dashboard/config/upstream-kasan.config#L5671
> 
> Then it knows how to open these /dev/binderN devices:
> https://github.com/google/syzkaller/blob/master/sys/linux/dev_binder.txt#L22
> and do stuff with them.
> 
> Did these devices disappear or something?

Try mounting binderfs and then you should be able to see them all.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
