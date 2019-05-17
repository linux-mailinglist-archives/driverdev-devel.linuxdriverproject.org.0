Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA37C21623
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 11:18:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A80E88763E;
	Fri, 17 May 2019 09:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gYmeti21iolo; Fri, 17 May 2019 09:18:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE3508706B;
	Fri, 17 May 2019 09:18:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 547B51BF958
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 09:18:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5A21E84558
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 09:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KHZAPrV7Oevu for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 09:18:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E616180C0D
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 09:18:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 456BA20818;
 Fri, 17 May 2019 09:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558084698;
 bh=lgA2VWw8hCgLrF4l6Vjc6D6NFFzSHpW9ppD7h7U+EVE=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=VhxkaO/aAyVgpA7ollDyPX2YSfSKgPOiQ6gyC6mdgxA6xBHIyHGsJI//T41jCaGne
 itL8icEWjfR1r/QRwZ7UnrJRoJgkv6uGKxHqnvHPKVVLcwUbQ3anDKArL2Q0f9q11a
 jZCCdbckkPcObCajkrLDzDnnSKZDVsXL322FEcoQ=
Date: Fri, 17 May 2019 11:18:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: Re: [PATCH 02/10] staging: kp2000: remove kp200_module.c file
Message-ID: <20190517091816.GA4940@kroah.com>
References: <20190517084945.2810-1-gregkh@linuxfoundation.org>
 <20190517084945.2810-3-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517084945.2810-3-gregkh@linuxfoundation.org>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 17, 2019 at 10:49:36AM +0200, Greg Kroah-Hartman wrote:
> The kp200_module.c does not need to be stand-alone, so move it into the
> core.c file.  This lets us make some functions static, reducing the
> global namespace of the driver.
> 
> Cc: Matt Sickler <Matt.Sickler@daktronics.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/kpc2000/kpc2000/Makefile      |  2 +-
>  drivers/staging/kpc2000/kpc2000/core.c        | 44 ++++++++++++++-
>  .../staging/kpc2000/kpc2000/kp2000_module.c   | 54 -------------------
>  drivers/staging/kpc2000/kpc2000/pcie.h        |  2 -
>  4 files changed, 43 insertions(+), 59 deletions(-)
>  delete mode 100644 drivers/staging/kpc2000/kpc2000/kp2000_module.c

two 02/10 patches, my fault, this is the "bad" one and should be
dropped.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
