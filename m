Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5342D2452
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 10:59:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3CFD92474E;
	Thu, 10 Oct 2019 08:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rhLL428VvxJL; Thu, 10 Oct 2019 08:59:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A601B20411;
	Thu, 10 Oct 2019 08:59:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 78E231BF255
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 08:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 75E6C854E3
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 08:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCQF2PYui+Rk for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 08:59:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E6C2A84D8E
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 08:59:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35F0D2190F;
 Thu, 10 Oct 2019 08:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570697958;
 bh=CBsMU142wfX9FybWwG+uuFeTqNtLpXx3v2EZPchDETs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GRZVyrNBrGhWLYx+dXPGzcSkHO5EWb2PWUxkCozfLTkecgnW2NQSIOMqAEsV6hrsK
 qsqityIn/xOoTRUyi8dLC9nLvBOLTp+fNbtv1SR/SM2HeidX+etktZ386rhw3Kw2yQ
 04ss6LkG6iXRyVRUJswRulPJUXjMx9xZyBl1frXA=
Date: Thu, 10 Oct 2019 10:59:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [PATCH v2 1/4] staging: rtl8723bs: Remove comparisons to NULL in
 conditionals
Message-ID: <20191010085916.GA452879@kroah.com>
References: <cover.1570682635.git.wambui.karugax@gmail.com>
 <da71920fa80298badcced3519f2b84afbdd28a7e.1570682635.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da71920fa80298badcced3519f2b84afbdd28a7e.1570682635.git.wambui.karugax@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 10, 2019 at 07:49:05AM +0300, Wambui Karuga wrote:
> Remove most comparisons to NULL in conditionals in
> drivers/staging/rtl8723bs/core/rtw_mlme.c
> Issues reported by checkpatch.pl as:
> CHECK: Comparison to NULL could be written
> 
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 46 +++++++++++------------
>  1 file changed, 23 insertions(+), 23 deletions(-)

Due to lots of other changes in this file recently, this patch does not
apply, and so the rest of this series does not apply either.

Can you please rebase this against my staging-testing branch and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
