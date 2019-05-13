Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9431B202
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 10:42:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CCC3E24C8E;
	Mon, 13 May 2019 08:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OzxTC-SncZrv; Mon, 13 May 2019 08:42:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0E84D248A1;
	Mon, 13 May 2019 08:42:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 600AA1BF360
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 08:42:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5ADFF84785
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 08:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CnDMBC99BNl for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 08:42:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7013846F4
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 08:42:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3420E20879;
 Mon, 13 May 2019 08:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557736940;
 bh=FFP9OUTbN2hRuzOJDuWvb9U2VH7dyQ34YtSfiVB6ju0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yy3S0V1T++ier/Q6FNf8TmwiTQrKwEpHUDClIPmhoTs+mHeV+DG4h+7Hre2RrHwtu
 YM4qyzBz4xVy/3TtVpIW+9Wjsoupp1U/pN32v+qH2THdIx2Yd1wH5lXOJe22KbAt+g
 biZvbGvY8xPh5RJMoPM/hgphRsAe47n2xP3E50+E=
Date: Mon, 13 May 2019 10:42:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vandana BN <bnvandana@gmail.com>
Subject: Re: [PATCH v2 2/8] Staging: kpc2000: kpc_dma: Resolve coding style
 errors reported by checkpatch.
Message-ID: <20190513084217.GA17959@kroah.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190512234000.16555-1-bnvandana@gmail.com>
 <20190512234000.16555-2-bnvandana@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512234000.16555-2-bnvandana@gmail.com>
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
Cc: devel@driverdev.osuosl.org, lukas.bulwahn@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 13, 2019 at 05:09:54AM +0530, Vandana BN wrote:
> This patch resolves below errors reported by checkpatch
> ERROR: "(foo*)" should be "(foo *)"
> ERROR: "foo * bar" should be "foo *bar"
> ERROR: "foo __init  bar" should be "foo __init bar"
> ERROR: "foo __exit  bar" should be "foo __exit bar"
> 
> Signed-off-by: Vandana BN <bnvandana@gmail.com>

Better...

But your subject lines are almost all the same, with some being
identical to others, yet you are doing different things in each of the
patch.

So please provide a better subject line saying, in a unique way, exactly
what you are doing here.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
