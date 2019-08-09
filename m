Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7E188250
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 20:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BE1322B25;
	Fri,  9 Aug 2019 18:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wt3coBVBk7F8; Fri,  9 Aug 2019 18:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 69D1B20401;
	Fri,  9 Aug 2019 18:22:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5FDD1BF2B0
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 18:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B0E4B86490
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 18:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g034ThmEpfuM for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 18:22:24 +0000 (UTC)
X-Greylist: delayed 00:07:35 by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA5DC86582
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 18:22:24 +0000 (UTC)
Received: from 96-95-199-68-static.hfc.comcastbusiness.net ([96.95.199.68]
 helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <christian.brauner@ubuntu.com>)
 id 1hw9Wv-0004GP-Ca; Fri, 09 Aug 2019 18:22:21 +0000
Date: Fri, 9 Aug 2019 20:22:17 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 1/2] binder: Add default binder devices through
 binderfs when configured
Message-ID: <20190809182216.5xzx6tss6fh42mso@wittgenstein>
References: <20190808222727.132744-1-hridya@google.com>
 <20190808222727.132744-2-hridya@google.com>
 <20190809145016.GB16262@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809145016.GB16262@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 kernel-team@android.com, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 09, 2019 at 04:50:16PM +0200, Greg Kroah-Hartman wrote:
> On Thu, Aug 08, 2019 at 03:27:25PM -0700, Hridya Valsaraju wrote:
> > Currently, since each binderfs instance needs its own
> > private binder devices, every time a binderfs instance is
> > mounted, all the default binder devices need to be created
> > via the BINDER_CTL_ADD IOCTL.
> 
> Wasn't that a design goal of binderfs?

Sure, but if you solely rely binderfs to be used to provide binder
devices having them pre-created on each mount makes quite some sense,
imho.

> 
> > This patch aims to
> > add a solution to automatically create the default binder
> > devices for each binderfs instance that gets mounted.
> > To achieve this goal, when CONFIG_ANDROID_BINDERFS is set,
> > the default binder devices specified by CONFIG_ANDROID_BINDER_DEVICES
> > are created in each binderfs instance instead of global devices
> > being created by the binder driver.
> 
> This is going to change how things work today, what is going to break
> because of this change?
> 
> I don't object to this, except for the worry of changing the default
> behavior.

This is something that Hridya and Todd can speak better to given that
they suggested this change. :)
From my perspective, binderfs binder devices and the regular binder
driver are mostly used mutually exclusive in practice atm so that this
change has little chance of breaking anyone.

Now I really need to go back to vacation time - which I suck at
apparently. :)

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
