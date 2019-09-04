Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A394EA85FD
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 17:12:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D92B688505;
	Wed,  4 Sep 2019 15:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GodLA5UHxKrG; Wed,  4 Sep 2019 15:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC3C9884DA;
	Wed,  4 Sep 2019 15:12:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95D2E1BF3AA
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 15:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8C24320421
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 15:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id utm-jPBo0DDp for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 15:12:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 3E16D203E7
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 15:12:18 +0000 (UTC)
Received: from [213.220.153.21] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <christian.brauner@ubuntu.com>)
 id 1i5WxC-0006zY-EM; Wed, 04 Sep 2019 15:12:14 +0000
Date: Wed, 4 Sep 2019 17:12:13 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 0/4] Add binder state and statistics to binderfs
Message-ID: <20190904151212.wolcug25ozytp4bw@wittgenstein>
References: <20190903161655.107408-1-hridya@google.com>
 <20190904111934.ya37tlzqjqvt7h6a@wittgenstein>
 <CAEXW_YSj5tdykM8txae66zd0jX_aJujrnS4jG=fHWRvCH7aR7w@mail.gmail.com>
 <20190904144903.GA30432@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904144903.GA30432@kroah.com>
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
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 LKML <linux-kernel@vger.kernel.org>, Hridya Valsaraju <hridya@google.com>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, kernel-team <kernel-team@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 04:49:03PM +0200, Greg Kroah-Hartman wrote:
> On Wed, Sep 04, 2019 at 10:20:32AM -0400, Joel Fernandes wrote:
> > On September 4, 2019 7:19:35 AM EDT, Christian Brauner
> > <christian.brauner@ubuntu.com> wrote:
> > >On Tue, Sep 03, 2019 at 09:16:51AM -0700, Hridya Valsaraju wrote:
> > >> Currently, the only way to access binder state and
> > >> statistics is through debugfs. We need a way to
> > >> access the same even when debugfs is not mounted.
> > >> These patches add a mount option to make this
> > >> information available in binderfs without affecting
> > >> its presence in debugfs. The following debugfs nodes
> > >> will be made available in a binderfs instance when
> > >> mounted with the mount option 'stats=global' or 'stats=local'.
> > >>
> > >>  /sys/kernel/debug/binder/failed_transaction_log
> > >>  /sys/kernel/debug/binder/proc
> > >>  /sys/kernel/debug/binder/state
> > >>  /sys/kernel/debug/binder/stats
> > >>  /sys/kernel/debug/binder/transaction_log
> > >>  /sys/kernel/debug/binder/transactions
> > >
> > >Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> > >
> > >Btw, I think your counting is off-by-one. :) We usually count the
> > >initial send of a series as 0 and the first rework of that series as
> > >v1.
> > >I think you counted your initial send as v1 and the first rework as v2.
> > 
> > Which is fine. I have done it both ways. Is this a rule written somewhere?
> 
> No where, I can count both ways, it's not a big deal :)

It isn't documented (as many things we still do are) and it's not a big
deal. But most people seem to be counting revisions starting from 0 it
seems. I went looking for previous version to link to in the patch cover
letter and was confused because I was missing a v1. :)

Anyway, I'm happy that Hridya landed this! It was fun helping her the
last couple of weeks on- and off-list. Thanks for getting this done! I
hope we'll see even more patches in the future. :)

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
