Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0285674804
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 09:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5AECA861EE;
	Thu, 25 Jul 2019 07:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C8T0nfZ09p3C; Thu, 25 Jul 2019 07:21:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7FA8861F1;
	Thu, 25 Jul 2019 07:21:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9237B1BF4D6
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 07:21:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8EDA1869D8
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 07:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WdTWe8Glp9GL for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 07:21:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6BB286632
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 07:21:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4ACDE21734;
 Thu, 25 Jul 2019 07:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564039295;
 bh=koldjvoUr4frV/SN/rliziUGZJdzC8i5yEDGFavMyKI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q3GkVwGN7MzdTpN8WKWen3Ox7EBsfjyv6qPIoakxutGNF5HC07TNvxy2MoYsob5ld
 ehtMtSldlH1PZH2HQ79/NiPEPGiWZY3tMwP+3dPlfk7wD384Oty5tD60P0XCzwqKFV
 w0ySB482LvT5v28iOs8Sg/57nVsCac+eoYAO3W1g=
Date: Thu, 25 Jul 2019 09:21:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jan Sebastian =?iso-8859-1?Q?G=F6tte?= <linux@jaseg.net>
Subject: Re: [PATCH v2] Staging: fbtft: Fix GPIO handling
Message-ID: <20190725072132.GA18714@kroah.com>
References: <20190715143003.12819-1-nsaenzjulienne@suse.de>
 <7b8242ab-cc0c-d90b-60af-ff1c53789e44@opensynergy.com>
 <5a77c18f-7338-888f-2379-12171b6a545e@jaseg.net>
 <75ada52f-afa1-08bc-d0ce-966fc1110e70@jaseg.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75ada52f-afa1-08bc-d0ce-966fc1110e70@jaseg.net>
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
Cc: devel@driverdev.osuosl.org, leobras.c@gmail.com,
 linux-fbdev@vger.kernel.org, nishadkamdar@gmail.com,
 dri-devel@lists.freedesktop.org, bhanusreemahesh@gmail.com,
 Phil Reid <preid@electromag.com.au>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 17, 2019 at 11:41:37PM +0900, Jan Sebastian G=F6tte wrote:
> Commit c440eee1a7a1 ("Staging: fbtft: Switch to the gpio descriptor
> interface") breaks GPIO handling. In several places, checks to only set
> a GPIO if it was configured ended up backwards.
> I have tested this fix. The fixed driver works with a ili9486
> display connected to a raspberry pi via SPI.
> =

> Fixes: commit c440eee1a7a1d ("Staging: fbtft: Switch to the gpio descript=
or interface")
> Tested-by: Jan Sebastian G=F6tte <linux@jaseg.net>
> Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Jan Sebastian G=F6tte <linux@jaseg.net>
> ---

Can this go on top of Phil's patches?  Or does it replace it?

I can't figure out what to do here, sorry.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
