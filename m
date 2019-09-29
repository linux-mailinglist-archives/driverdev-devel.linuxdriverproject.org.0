Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19186C22B7
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 16:08:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34F708820A;
	Mon, 30 Sep 2019 14:08:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z+0RMxB4ZlBp; Mon, 30 Sep 2019 14:08:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6675D8818B;
	Mon, 30 Sep 2019 14:08:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C57371BF4E3
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 14:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BF04C8818B
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 14:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SzRy7VkJmsEv for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 14:08:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4A4B98817F
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 14:08:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFDEF21855;
 Mon, 30 Sep 2019 14:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569852496;
 bh=VDbhSD5QYW6zk202BDR/WM3sd0a3/efH6bZ7teyPZIA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KLDIOiNu3HLHg1pWpCztA/mt8Mea5HTJN4ba2+gjUsY+jmbEzHavx+BmVWVX2BfWl
 klpM4jXH1G60XMDJSDhAxpAK4Z94N2Bb0jF0kHt9CYCFW5DhvWi9lXHnWJsi8Gup/S
 9nc/VGhNm+ieC4lsH5nhBkgcnukj8sEkQq3qDsnA=
Date: Sun, 29 Sep 2019 16:57:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jesse Barton <jessebarton95@gmail.com>
Subject: Re: [PATCH 1/3] Staging: exfat: exfat_super.c: fixed camelcase
 coding style issue
Message-ID: <20190929145758.GA2017443@kroah.com>
References: <20190929145057.37752-1-jessebarton95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929145057.37752-1-jessebarton95@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 29, 2019 at 09:50:57AM -0500, Jesse Barton wrote:
> Changed function names:
> ffsUmountVol to ffs_umount_vol
> ffsMountVol to ffs_mount_vol
> ffsSyncVol to ffs_sync_vol
> 
> 

That says _what_ you did, but not _why_ you are doing this.

And is this really the best name for these functions?  Why the ffs_*
prefix?

Also, you didn't include the maintainer again, and you didn't thread
your emails using 'git send-email' :(

And finally, you sent a new version of the patch, but did not "version"
it, saying what changed from the previous version.  The documentation
says how to do this, so you might want to re-read that.

Can you please fix this all up and resend the series as "v3"?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
