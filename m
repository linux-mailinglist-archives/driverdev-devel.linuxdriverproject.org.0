Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F78341615
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Mar 2021 07:42:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A0C14ED33;
	Fri, 19 Mar 2021 06:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZ7KqRlZrWRC; Fri, 19 Mar 2021 06:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 937C64ECF3;
	Fri, 19 Mar 2021 06:42:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 522651BF419
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 06:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E276606EE
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 06:42:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fy5pRVGeS6zv for <devel@linuxdriverproject.org>;
 Fri, 19 Mar 2021 06:42:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5D6E605CA
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 06:42:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 161C761494;
 Fri, 19 Mar 2021 06:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616136133;
 bh=ImAkHCzc5WG0y4vB0/Y3CwDPIGZqeshxLO/Zc3IXzbo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PxSfUAjkeal3bOELDTpmmQW/oqR3J3HzNEKu0vjX1shqnHkyEv2BT8O7hP0iOWxUy
 SatHJf28MHUmWLigGhpqRt4Gd9CEvE0eQSohx01D83PbqGMdeQ1sbVopCj6R7Ahwzj
 O3Dz269nJxGFYaDJMT8hzo1RXajXEyUez/bV/UYw=
Date: Fri, 19 Mar 2021 07:42:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Paul McQuade <paulmcquad@gmail.com>
Subject: Re: [PATCH] rtl8188eu: Removed Unnecessary ftrace-like logging
Message-ID: <YFRHwr2lWw/dehOz@kroah.com>
References: <20210318200527.454486-1-paulmcquad@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318200527.454486-1-paulmcquad@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 18, 2021 at 08:05:27PM +0000, Paul McQuade wrote:
> prefer using ftrace

You need to say more here than just this please.

Also please fix up your subject line to have "staging:" in it, otherwise
it gets easily lost.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
