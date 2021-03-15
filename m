Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7D333ACDA
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 08:56:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DC4383490;
	Mon, 15 Mar 2021 07:56:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mA_itOCMlMIF; Mon, 15 Mar 2021 07:56:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C7B18347D;
	Mon, 15 Mar 2021 07:56:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1DAB81BF317
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 07:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CCC54016F
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 07:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h9EjqwFnf8M0 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 07:56:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D06184013F
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 07:56:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D787264E12;
 Mon, 15 Mar 2021 07:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615794973;
 bh=osdF5qmTEUxcpJl4FEQ0M6fxE/JEHBv/lB5q6kUbatw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dWcRgyOj3/E4paueDASxMWAqjMW5+JR7dUmIznngZpofmklvV60rmnN64pCRABsLR
 LEP+K22Q0KoPRQ90Z6525FmrOUczeE2omMGCijIMTzVwREI20Z347nu++7AVrHb4xx
 Gt4w99enn9MiokquVkr7+kAul278eEJJCCluBqtE=
Date: Mon, 15 Mar 2021 08:56:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: zhaoxiao <zhaoxiao@uniontech.com>
Subject: Re: [PATCH] staging: rtl8192u: remove extra lines
Message-ID: <YE8TGufU6hyEBPgX@kroah.com>
References: <20210315072759.23107-1-zhaoxiao@uniontech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315072759.23107-1-zhaoxiao@uniontech.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 serrazimone@gmail.com, lu@pplo.net, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 15, 2021 at 03:27:59PM +0800, zhaoxiao wrote:
> Remove extra lines in many functions in r8192U_wx.c.
> Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>

You did mor than just remove extra lines :(

Also we need an extra line right before your signed-off-by line, as
checkpatch should have warned you about.

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
