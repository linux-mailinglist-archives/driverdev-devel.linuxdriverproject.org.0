Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2D1456ED6
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 13:29:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 400194062A;
	Fri, 19 Nov 2021 12:29:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p00E8YgoeQ9Z; Fri, 19 Nov 2021 12:29:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78E3B40687;
	Fri, 19 Nov 2021 12:29:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DCD081BF4D5
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 12:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB8D861BF5
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 12:29:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2tjhCdE25uJD for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 12:29:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14C8B61BF4
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 12:29:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5712E61353;
 Fri, 19 Nov 2021 12:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637324980;
 bh=6N81grncfiDuTYZXAKPvFzVgX+xa34AIWa2uglCnKls=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mzFVHv/NlO06c4dZ9NmQyMPFoIqJp2zTEwMb6RJB6ZQmt4O2D0ktTlTme8L8fnfqo
 GOuIGCnz4574TKGL///YjowFbjSPV05+da/zqrQdSgOKgE70f8m2yllTA6alFOqwSD
 BWRK9rHSDwnZ6KQ99eIgeWQV4I4S7YUOssTA30fM=
Date: Fri, 19 Nov 2021 13:29:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
Subject: Re: [PATCH v3] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <YZeYsip9CD8YkKgl@kroah.com>
References: <20211118202718.GA152832@t470p> <20211119085138.GR26989@kadam>
 <20211119122351.GA2519@alb3rt0-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211119122351.GA2519@alb3rt0-VirtualBox>
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
Cc: devel@driverdev.osuosl.org, forest@alittletooquiet.net,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Fri, Nov 19, 2021 at 01:23:51PM +0100, Alberto Merciai wrote:
> I'm using the master branch of 
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/

Very odd, why?  That git tree has nothing to do with the staging
development process, and especially not the master branch.

What caused you to pick that one?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
