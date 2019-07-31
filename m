Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE4C7C01E
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 13:36:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5162322049;
	Wed, 31 Jul 2019 11:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9AMqN5eHS5qf; Wed, 31 Jul 2019 11:36:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72D6922008;
	Wed, 31 Jul 2019 11:36:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D60071BF378
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 11:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D330D87999
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 11:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2WRYph+7hmMw for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 11:36:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 741498763F
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:36:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD01A206A3;
 Wed, 31 Jul 2019 11:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564573005;
 bh=powFP0Y+wRgOqRhiTZYGxknj+gsGo6bx5N1D9mQEdZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qni2KL8gJpXgOEAI11IFCUVPHZPu3+5p2EKkK+i3+Gom4zN3MQiUL+zR5R9kJ4S9p
 fOgKGwG3ZXmpyLHZICIZFA8CBFnNcHmsbWl7s3tydockLs3UH4vwSUgpSdLmDd9RcY
 Dc59k58tGsTXVRLc6KY4ydBoriMWOJpDM8jCE56k=
Date: Wed, 31 Jul 2019 13:36:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH v3] staging: rtl8192u: null check the kzalloc
Message-ID: <20190731113642.GA3983@kroah.com>
References: <20190730164304.GA10640@kroah.com>
 <20190730220141.6608-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730220141.6608-1-navid.emamdoost@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, b.zolnierkie@samsung.com, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, John Whitmore <johnfwhitmore@gmail.com>,
 emamd001@umn.edu, Nishka Dasgupta <nishkadg.linux@gmail.com>, smccaman@umn.edu,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 30, 2019 at 05:01:39PM -0500, Navid Emamdoost wrote:
> In rtl8192_init_priv_variable allocation for priv->pFirmware may fail,
> so a null check is necessary.priv->pFirmware is accessed later in
> rtl8192_adapter_start. I added the check and made appropriate changes
> to propagate the errno to the caller.
> 
> ---
> Update v2: fixed style errors
> Update V3: fixed prefix
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>

So close, the signed-off-by goes above the --- line.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
