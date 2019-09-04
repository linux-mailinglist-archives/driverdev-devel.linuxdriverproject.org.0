Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28754A85C4
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 16:49:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D81584D41;
	Wed,  4 Sep 2019 14:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxk2REQs65E9; Wed,  4 Sep 2019 14:49:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73E1984AD2;
	Wed,  4 Sep 2019 14:49:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B7451BF319
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 14:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 18248884B9
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 14:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EHmvKQyJTHzD for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 14:49:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9A83F8789B
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 14:49:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA5DE208E4;
 Wed,  4 Sep 2019 14:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567608546;
 bh=RPE8b67fmubiSZrCTV7LHouX1oUclLHCZWI7Yt8Bx6Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zzUV5wdJcf55ru/t69XtJzcn8Z/+XSbF6iZR7S54V7oL4gSfkcoVrRSfRE4JduwXE
 TCci2o+DOh0CCKrDDl3bXZcyiR4VFEm+y//A7k2j3GSvvAugEiUoMLoZRUEf3RYkXK
 vJgR1S9BEPYMOEKn875B6HrQtv2oinTx8EDGkSs0=
Date: Wed, 4 Sep 2019 16:49:03 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joel Fernandes <joel@joelfernandes.org>
Subject: Re: [PATCH v3 0/4] Add binder state and statistics to binderfs
Message-ID: <20190904144903.GA30432@kroah.com>
References: <20190903161655.107408-1-hridya@google.com>
 <20190904111934.ya37tlzqjqvt7h6a@wittgenstein>
 <CAEXW_YSj5tdykM8txae66zd0jX_aJujrnS4jG=fHWRvCH7aR7w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEXW_YSj5tdykM8txae66zd0jX_aJujrnS4jG=fHWRvCH7aR7w@mail.gmail.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 kernel-team <kernel-team@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 10:20:32AM -0400, Joel Fernandes wrote:
> On September 4, 2019 7:19:35 AM EDT, Christian Brauner
> <christian.brauner@ubuntu.com> wrote:
> >On Tue, Sep 03, 2019 at 09:16:51AM -0700, Hridya Valsaraju wrote:
> >> Currently, the only way to access binder state and
> >> statistics is through debugfs. We need a way to
> >> access the same even when debugfs is not mounted.
> >> These patches add a mount option to make this
> >> information available in binderfs without affecting
> >> its presence in debugfs. The following debugfs nodes
> >> will be made available in a binderfs instance when
> >> mounted with the mount option 'stats=global' or 'stats=local'.
> >>
> >>  /sys/kernel/debug/binder/failed_transaction_log
> >>  /sys/kernel/debug/binder/proc
> >>  /sys/kernel/debug/binder/state
> >>  /sys/kernel/debug/binder/stats
> >>  /sys/kernel/debug/binder/transaction_log
> >>  /sys/kernel/debug/binder/transactions
> >
> >Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> >
> >Btw, I think your counting is off-by-one. :) We usually count the
> >initial send of a series as 0 and the first rework of that series as
> >v1.
> >I think you counted your initial send as v1 and the first rework as v2.
> 
> Which is fine. I have done it both ways. Is this a rule written somewhere?

No where, I can count both ways, it's not a big deal :)

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
