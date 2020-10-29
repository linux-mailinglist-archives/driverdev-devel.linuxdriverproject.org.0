Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E81E29EBE5
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 13:33:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F49586C4C;
	Thu, 29 Oct 2020 12:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TIiHPqk5o3Ym; Thu, 29 Oct 2020 12:33:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5839884DDD;
	Thu, 29 Oct 2020 12:33:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CE311BF3E1
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 12:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6A105875CF
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 12:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwoccOBW+OjP for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 12:33:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 98FEC875CC
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 12:33:38 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BF8420756;
 Thu, 29 Oct 2020 12:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603974817;
 bh=ni7TkjqbA6fJ+ksEIFlg7Zx+Cb5ewBpoNMRVZ0D7amg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lSLXl70kXfoQWdeNMjdnzNWGujJeGniYi63Sucw5rNVZDLOWU8F94R4kSq7iwW+UY
 CnkPO8p/pdNs4mmWaJhcaZVaZiF6fLKTA5Guxl9q8CGdvlM9z3yeBjM/PV8OiiU7+q
 o7xytgqqHVIE1iOhQ0TNawmec3Z7RtUIMxj/3a10=
Date: Thu, 29 Oct 2020 13:34:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Subject: Re: [PATCH V2] drivers: staging: rtl8188eu: Fix spelling in two
 comments i.e defalut to default
Message-ID: <20201029123428.GA2373999@kroah.com>
References: <20201029120725.11666-1-unixbhaskar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201029120725.11666-1-unixbhaskar@gmail.com>
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

On Thu, Oct 29, 2020 at 05:37:25PM +0530, Bhaskar Chowdhury wrote:
> Fixed two spelling in two different comments.
> 
> s/defalut/default/p
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

What changed from v1?

That always goes below the --- line, please fix up and send a v3.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
