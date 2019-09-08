Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 676A8ACEC9
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 15:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA47385534;
	Sun,  8 Sep 2019 13:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h65Vl2Bbwb2R; Sun,  8 Sep 2019 13:03:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8CB3B854AF;
	Sun,  8 Sep 2019 13:03:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 397731BF414
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 13:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 367AD854D0
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 13:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qwDggxgDCXsh for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 13:03:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 82478854AF
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 13:03:39 +0000 (UTC)
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC47320640;
 Sun,  8 Sep 2019 13:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567947819;
 bh=4SIt8Ad08SY/w8EN5vg534bwrOyvqWWtILnJDS3t184=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BhIO9ZkdDl4a0gCPWrqge2n2u2agda81Lw0TYOhwKeuSrEvRwNcOewGogrPMtLItG
 xjT9YpPhKUuCgrqDiCNE22ruShzPnOm9xjBt4RlwsuD1/A2RxC1XhIWta1SGv5O54f
 Et2UIwLIP0r7i/1Xs3SB0twiOBSIpEYk/sdceWno=
Date: Sun, 8 Sep 2019 14:03:37 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valentin Vidic <vvidic@valentin-vidic.from.hr>
Subject: Re: [PATCH] staging: exfat: add millisecond support
Message-ID: <20190908130337.GA9056@kroah.com>
References: <20190908124808.23739-1-vvidic@valentin-vidic.from.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908124808.23739-1-vvidic@valentin-vidic.from.hr>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 12:48:08PM +0000, Valentin Vidic wrote:
> Drop duplicated date_time_t struct and add millisecond handling for
> create and modify time. Also drop millisecond field for access time
> since it is not defined in the the spec.
> 
> Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
> ---
>  drivers/staging/exfat/exfat.h       |  38 +++---
>  drivers/staging/exfat/exfat_core.c  |  31 ++++-
>  drivers/staging/exfat/exfat_super.c | 174 ++++++++--------------------
>  3 files changed, 92 insertions(+), 151 deletions(-)

Please run checkpatch on your patches so that we don't have to go and
fix up those issues later on.

Also, can you break this up into smaller patches please?  You are doing
multiple things all at once.

And, are you sure about the millisecond field for access time stuff?  It
was obviously added for some reason (there are lots in the spec that the
code does not yet cover, this seems odd being the other way around).
Did you test it against any other operating system exfat images to
ensure that it really is not being used at all?  If so, which ones?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
