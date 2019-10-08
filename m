Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFD9CFA11
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 14:38:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5EE9885BCD;
	Tue,  8 Oct 2019 12:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cuHvGFBMN_e8; Tue,  8 Oct 2019 12:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35AD485B5B;
	Tue,  8 Oct 2019 12:38:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 258B11BF35A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 20FB285B5B
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YKD8j8anNyVB for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 12:38:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 34A7F85B0A
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 12:38:45 +0000 (UTC)
Received: from localhost (unknown [89.205.136.155])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 374482070B;
 Tue,  8 Oct 2019 12:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570538325;
 bh=5jyR2aunmnx/KUpswmJ5Ko60ltn0ViqTwRLPlVma8YE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R50pLwqIPWvn/qF5BWUABdDTrtC8oJK4Y3/3i+74pbAl8abTJ7FiHInm1Tq7J8RKv
 lz+gl/e96FARB8H+3KV7+h1BF6UXSaU2wXo/qNcWFc1shsyCjEEIWtbxSxMtZxH6wI
 6zYcWCAie+RkPzzRrlS8XvJ3FRv/OCx9ZDIg9gNQ=
Date: Tue, 8 Oct 2019 14:38:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: hariprasad@osuosl.org, Kelam@osuosl.org, hariprasad.kelam@gmail.com
Subject: Re: [PATCH] staging: media: sunxi: make use of
 devm_platform_ioremap_resource
Message-ID: <20191008123841.GC2763989@kroah.com>
References: <1570517975-32648-1-git-send-email-hariprasad.kelam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570517975-32648-1-git-send-email-hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 12:29:34PM +0530, hariprasad@osuosl.org wrote:
> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> 
> fix below issue reported by coccicheck
> drivers/staging//media/sunxi/cedrus/cedrus_hw.c:229:1-10: WARNING: Use
> devm_platform_ioremap_resource for dev -> base
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

I've dropped all of your patches, please fix up your tool and resend
this as a patch series so we know what order to apply them in.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
