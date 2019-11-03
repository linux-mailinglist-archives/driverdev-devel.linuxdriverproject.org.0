Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D134ED40F
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Nov 2019 18:55:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0ED258A3EF;
	Sun,  3 Nov 2019 17:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umKLmYO2bGxn; Sun,  3 Nov 2019 17:55:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 225738A39E;
	Sun,  3 Nov 2019 17:55:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BD921BF5E9
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 17:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 093188A3EC
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 17:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oOA9qDwhjXu8 for <devel@linuxdriverproject.org>;
 Sun,  3 Nov 2019 17:55:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 392B48A39E
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 17:55:51 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C3B10AC71;
 Sun,  3 Nov 2019 17:55:48 +0000 (UTC)
Date: Sun, 3 Nov 2019 09:54:20 -0800
From: Davidlohr Bueso <dave@stgolabs.net>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [staging:staging-testing 275/291]
 drivers/staging/exfat/exfat_super.c:747:5-11: preceding lock on line 707
 (fwd)
Message-ID: <20191103175420.op5wq6a7t2iygw3a@linux-p48b>
References: <alpine.DEB.2.21.1911030949171.2744@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1911030949171.2744@hadrien>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@lists.01.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 03 Nov 2019, Julia Lawall wrote:

>The return at line 747 may need an unlock.

Good catch.

...

>:::::: The code at line 747 was first introduced by commit
>:::::: c48c9f7ff32b8b3965a08e40eb6763682d905b5d staging: exfat: add exfat filesystem code to staging

Indeed, this was the case regardless of the locking primitive used.

I'll send a patch shortly.

Thanks,
Davidlohr
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
