Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BAC2E3ED5
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Dec 2020 15:33:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 50188870C0;
	Mon, 28 Dec 2020 14:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y2Dz8PfTAMqP; Mon, 28 Dec 2020 14:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F41885A83;
	Mon, 28 Dec 2020 14:33:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB3271BF37F
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 14:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 965C0870B6
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 14:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wpv3qSBaMbmP for <devel@linuxdriverproject.org>;
 Mon, 28 Dec 2020 14:33:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D134085A83
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 14:33:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B120E2053B;
 Mon, 28 Dec 2020 14:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609166001;
 bh=6RGno5ibxsEVrCmP0hIDVmZGDPl9aM9x8/+n66dQOeA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ftJGlQMJdFuHikam5nxgu3/0l15k6TLy9khePWtaQpGSkwj8k7DTE9qEWsFl90GeG
 KW/m4VgVfDVC1qNmqAnk7MK6E4GC8YQX4njZnTEWYJzpmU8trqFy6HdnQGX1fBvPT+
 ojtRlYVAw10W90tYIt0VwtE3E23pXZIEoYu4yano=
Date: Mon, 28 Dec 2020 15:07:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Daniel West <daniel.west.dev@gmail.com>
Subject: Re: [PATCH] staging: qlge: Removed duplicate word in comment.
Message-ID: <X+nmlde/B1Y3cAuj@kroah.com>
References: <20201219014829.362810-1-daniel.west.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201219014829.362810-1-daniel.west.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Daniel West <daniel.s.west.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 18, 2020 at 05:48:29PM -0800, Daniel West wrote:
> This patch fixes the checkpatch warning:
> 
> WARNING: Possible repeated word: 'and'
> 
> Signed-off-by: Daniel West <daniel.s.west.dev@gmail.com>

signed-off-by does not match From: line, so I can't take this :(

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
