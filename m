Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2165361305
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 23:35:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2381B81E6D;
	Sat,  6 Jul 2019 21:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zjx0gTJrcI65; Sat,  6 Jul 2019 21:35:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2ACD281E66;
	Sat,  6 Jul 2019 21:35:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FE8A1BF5DE
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 21:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DEC082756
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 21:35:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ybcG+vsRGHMP for <devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 21:35:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E925F815D7
 for <devel@driverdev.osuosl.org>; Sat,  6 Jul 2019 21:35:23 +0000 (UTC)
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1hjsL0-00064V-OD; Sat, 06 Jul 2019 23:35:18 +0200
Date: Sat, 6 Jul 2019 23:35:12 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 4/7] staging: most: Use spinlock_t instead of struct
 spinlock
Message-ID: <20190706213512.xuyxgvcy7ntn474d@linutronix.de>
References: <20190704153803.12739-1-bigeasy@linutronix.de>
 <20190704153803.12739-5-bigeasy@linutronix.de>
 <20190706100253.GA20497@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706100253.GA20497@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Peter Zijlstra <peterz@infradead.org>,
 tglx@linutronix.de, linux-kernel@vger.kernel.org,
 Christian Gromm <christian.gromm@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-07-06 12:02:53 [+0200], Greg Kroah-Hartman wrote:
> On Thu, Jul 04, 2019 at 05:38:00PM +0200, Sebastian Andrzej Siewior wrote:
> > For spinlocks the type spinlock_t should be used instead of "struct
> > spinlock".
> 
> Why?
> 
> > Use spinlock_t for spinlock's definition.
> 
> Why?  I agree it makes the code smaller, but why is this required?

I remember PeterZ pointing out to stick to the typedef and it is
probably better to stick with the typdef since we have it. It was like
that since it was first introduced (2.1.25 for i386).
We have a checkpatch warning for that [0]. 

This series has only 7 patches (excluding the powerpc bits) so almost
everyone else is using just the typdef.

[0] 88982fea52d01 ("checkpatch: warn when declaring "struct spinlock foo;"")
    from Dec 2012

> thanks,
> 
> greg k-h

Sebastian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
