Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 616AE20C0D0
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 12:47:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B550987828;
	Sat, 27 Jun 2020 10:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ItSswE4Q8X1M; Sat, 27 Jun 2020 10:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 288B787A05;
	Sat, 27 Jun 2020 10:47:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B5E8C1BF405
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 10:47:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B245287828
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 10:47:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZEmkRz5pE59q for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 10:47:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B66C860F9
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 10:47:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57ED72137B;
 Sat, 27 Jun 2020 10:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593254834;
 bh=1rtJRr7/QYwETTIOCkQD0l88nYTT+cOmhg0Mk0eX6H0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2QRv8i/V33OsxjU3E95V55C8EMqt2ybW3VAmht3U1L3gea3ifWphFa5anMmxMThub
 MAlHp77JCH7H5bRK6jYL8dpJJqiFmwIK4T1ps3KATrOQnbm2R+Jbb7wTVHicSGf+yK
 YI52utrFOedkzlCLwR10mq3YIJpxRjG05CSfJkog=
Date: Sat, 27 Jun 2020 12:47:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH 1/4] fix trailing */ in block comment
Message-ID: <20200627104708.GA1581263@kroah.com>
References: <20200627101447.167370-1-coiby.xu@gmail.com>
 <20200627101447.167370-2-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200627101447.167370-2-coiby.xu@gmail.com>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, joe@perches.com,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 27, 2020 at 06:14:44PM +0800, Coiby Xu wrote:
> Remove trailing "*/" in block comments.
> 
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>

The subject lines of all of your patches should match other patches for
this driver.  It should look like "staging: qlge: ..."

Please fix up and resend a v2 of this series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
