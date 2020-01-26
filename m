Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A94E51499CF
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 10:35:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7857F86529;
	Sun, 26 Jan 2020 09:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6ANTGaL-Mgk; Sun, 26 Jan 2020 09:35:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB30085E28;
	Sun, 26 Jan 2020 09:35:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7981BF358
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 09:35:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8A50B203AB
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 09:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ycELbO2vJqZL for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 09:35:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 99C7B20379
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 09:35:10 +0000 (UTC)
Received: from ip5f5bd665.dynamic.kabel-deutschland.de ([95.91.214.101]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iveJt-0008EY-VK; Sun, 26 Jan 2020 09:35:06 +0000
Date: Sun, 26 Jan 2020 10:35:07 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: binderfs interferes with syzkaller?
Message-ID: <20200126093506.oa2ee5kbptur4zhz@wittgenstein>
References: <CACT4Y+bg1UKXzZF4a9y+5CfNYRwBc5Gx+GjPS0Dhb1n-Qf50+g@mail.gmail.com>
 <20200126085535.GA3533171@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200126085535.GA3533171@kroah.com>
User-Agent: NeoMutt/20180716
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
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 syzkaller <syzkaller@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>,
 Hridya Valsaraju <hridya@google.com>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 26, 2020 at 09:55:35AM +0100, Greg Kroah-Hartman wrote:
> On Sat, Jan 25, 2020 at 06:49:49PM +0100, Dmitry Vyukov wrote:
> > Hi binder maintainers,
> > 
> > It seems that something has happened and now syzbot has 0 coverage in
> > drivers/android/binder.c:
> > https://storage.googleapis.com/syzkaller/cover/ci-upstream-kasan-gce-root.html
> > It covered at least something there before as it found some bugs in binder code.
> > I _suspect_ it may be related to introduction binderfs, but it's
> > purely based on the fact that binderfs changed lots of things there.
> > And I see it claims to be backward compatible.
> 
> It is backwards compatible if you mount binderfs, right?

Yes, it is backwards compatible. The devices that would usually be
created in devtmpfs are now created in binderfs. The core
binder-codepaths are the same.

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
