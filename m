Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB7F257CBF
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 17:33:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6C4A87C10;
	Mon, 31 Aug 2020 15:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0jrdhQQZpy8S; Mon, 31 Aug 2020 15:33:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 42BA687BA6;
	Mon, 31 Aug 2020 15:33:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91AEA1BF41E
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 15:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 88D4387BB8
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 15:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p+gxNLv3t8lp for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 15:33:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69C0F87BA6
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 15:33:38 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCD47207EA;
 Mon, 31 Aug 2020 15:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598888018;
 bh=otuaNmTFeR1cZEWlvlrN8JZo+5WGyGy52K7YN8szaGA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t7ji3dYkdFx/lhVBpAlgWVNUumcb97mLLmaULWc2HZF1SCNV+0vn8gB6/EX3Jesa0
 TYQo9Cyw2WEX/5MQHBMHAI1qxLB9wZhvSOyYytxc0kSFEyY4+z712lYwzwrugn2wO7
 r7awxU3mYrzFJXQB8ajSViBM8MuzGSlq9+NdMu7k=
Date: Mon, 31 Aug 2020 17:33:45 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.8 07/42] speakup: Fix wait_for_xmitr for ttyio
 case
Message-ID: <20200831153345.GA2525965@kroah.com>
References: <20200831152934.1023912-1-sashal@kernel.org>
 <20200831152934.1023912-7-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200831152934.1023912-7-sashal@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Samuel Thibault <samuel.thibault@ens-lyon.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 31, 2020 at 11:28:59AM -0400, Sasha Levin wrote:
> From: Samuel Thibault <samuel.thibault@ens-lyon.org>
> 
> [ Upstream commit 2b86d9b8ec6efb86fc5ea44f2d49b1df17f699a1 ]
> 
> This was missed while introducing the tty-based serial access.
> 
> The only remaining use of wait_for_xmitr with tty-based access is in
> spk_synth_is_alive_restart to check whether the synth can be restarted.
> With tty-based this is up to the tty layer to cope with the buffering
> etc. so we can just say yes.
> 
> Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
> Link: https://lore.kernel.org/r/20200804160637.x3iycau5izywbgzl@function
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/staging/speakup/serialio.c  | 8 +++++---
>  drivers/staging/speakup/spk_priv.h  | 1 -
>  drivers/staging/speakup/spk_ttyio.c | 7 +++++++
>  drivers/staging/speakup/spk_types.h | 1 +
>  drivers/staging/speakup/synth.c     | 2 +-
>  5 files changed, 14 insertions(+), 5 deletions(-)

Not needed for 5.8 or older, sorry, this was a 5.9-rc1+ issue only.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
