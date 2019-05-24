Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 250EF2915B
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 08:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA2DA318F4;
	Fri, 24 May 2019 06:54:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RbrWuLcrPlXv; Fri, 24 May 2019 06:54:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 47EF8318EA;
	Fri, 24 May 2019 06:54:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 09DC11BF423
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0721E88B37
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eR5z8kX41j4W for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 06:54:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4C1788B33
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:54:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 007792175B;
 Fri, 24 May 2019 06:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558680882;
 bh=Ezg9FUrfLeM//MLsFdIYPV8vMpcnJ48Y6b961b6QwKs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kqwg+br5U5Y5KtG2xNnZQUCt3B/lwvt1j5mh0WJMOpSggBsm7cvHnKMChFOf0yZF+
 3CPurzDwbS32BX3q8CCsmAhe63OBSLsPZvh9knt8Y8Vgc0FCH2a1RrEzp6rQ+hiwaW
 WdlJ5x+K9ULhh6fTOQZJY4080ISX4FmfPtAvvDLg=
Date: Fri, 24 May 2019 08:54:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 1/2] staging: gdm724x: Remove initialisation
Message-ID: <20190524065440.GC3600@kroah.com>
References: <20190524060026.3763-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524060026.3763-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, colin.king@canonical.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 11:30:25AM +0530, Nishka Dasgupta wrote:
> The initial value of return variable ret, -1, is never used and hence
> can be removed.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Again, fix up the subject line.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
