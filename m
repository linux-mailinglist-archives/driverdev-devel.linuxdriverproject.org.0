Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 770CA3EFEC7
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Aug 2021 10:11:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B77B607E5;
	Wed, 18 Aug 2021 08:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQI0Wfab5TFU; Wed, 18 Aug 2021 08:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C9ED606ED;
	Wed, 18 Aug 2021 08:11:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C1DB1BF38D
 for <devel@linuxdriverproject.org>; Wed, 18 Aug 2021 08:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A8164021B
 for <devel@linuxdriverproject.org>; Wed, 18 Aug 2021 08:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tkm1VAIUCNmY for <devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 08:10:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D96040198
 for <devel@driverdev.osuosl.org>; Wed, 18 Aug 2021 08:10:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 48F8A6102A;
 Wed, 18 Aug 2021 08:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1629274247;
 bh=1sILUclATRKtsS/plrCACO8tmHQ7R9A44nAdTJCXC7o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W9PuO6pum/doGoYAFQBXBq6E1ZeDVerApYvERzxemFxfyqNtRnnfKzGJBJEyIZScy
 iFtUUKiaAwF+wXuT4Z4+5BC5IoZB6bgyDEWjk7gDRTpSB+Ar0dZS1mSQ2Htkifo5zD
 DqcrYtmOP/ky2ha8Kf6kCR/0353Zxdp7wBylLZeo=
Date: Wed, 18 Aug 2021 10:10:44 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: daniel watson <ozzloy@challenge-bot.com>
Subject: Re: [PATCH] staging: rtl8723bs: put '{' on struct's first line
Message-ID: <YRzAhNrPdVW0B5CJ@kroah.com>
References: <20210818044105.23128-1-ozzloy@challenge-bot.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818044105.23128-1-ozzloy@challenge-bot.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 17, 2021 at 09:41:05PM -0700, daniel watson wrote:
> From: Daniel Watson <ozzloy@challenge-bot.com>
> 
> Moved the opening curly brace to the end of the opening
> line of the phy_stat struct for style consistency.
> 
> Signed-off-by: Daniel Watson <ozzloy@challenge-bot.com>
> ---
>  drivers/staging/rtl8723bs/include/rtl8192c_recv.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

This change does not apply to my tree at all.  Make sure that you are
working off of the latest development tree, and not older kernel trees
(like Linus's), otherwise you will end up duplicating work that others
have already done.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
