Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0121A33A5D1
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 16:57:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BCD783D30;
	Sun, 14 Mar 2021 15:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NnJET1rrPd18; Sun, 14 Mar 2021 15:57:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8762683C2A;
	Sun, 14 Mar 2021 15:57:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 126051BF41E
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 15:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 024804015D
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 15:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IQVbNXIH259w for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 15:57:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF2854015C
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 15:57:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5A47E64E89;
 Sun, 14 Mar 2021 15:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615737460;
 bh=KHhBD60oVNFJbzpgTir8afaeb8V5r2mTAIAGzAKKu4I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HB99kC1IIWNvAIHGDo0sj0UVJx1Utd8L7fMk3VscwmuHfErlYVnm2BhiKQNfYHcDR
 I4xaQZ0ZSlxFYKCRYnWhg+ZxbVQKvPoawrxfzxxHg9gaqDsMl6aynuBNnBUhnXS7aC
 baiQmEw4yqwuYJlqmIGSdx1BfPuQLsl6/ezYaXcw=
Date: Sun, 14 Mar 2021 16:57:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH v2 0/4] staging: rtl8723bs: remove unused code blocks
Message-ID: <YE4ychoJngfPye1O@kroah.com>
References: <cover.1615572985.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615572985.git.fabioaiuto83@gmail.com>
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

On Fri, Mar 12, 2021 at 07:33:13PM +0100, Fabio Aiuto wrote:
> This patch set removes unused code blocks as required in TODO file:
> 
> 	find and remove code blocks guarded by never set CONFIG_FOO defines
> 
> Changes in v2:
> 	- modified sunject lines to make them unique
> 	- added a patch previously excluded (removal of
> 	  CONFIG_PNO_SET_DEBUG code)
> 
> Fabio Aiuto (4):
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_PNO_SET_DEBUG
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_PNO_SUPPORT
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_WOWLAN
>   staging: rtl8723bs: remove unused code blocks conditioned by never set
>     CONFIG_TCP_CSUM_OFFLOAD_RX

The first 2 patches here worked, the others did not apply to my tree due
to other changes from other developers.  Can you please rebase them and
resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
