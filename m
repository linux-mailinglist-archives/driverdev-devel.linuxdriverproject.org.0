Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E682630385
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 22:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 043E98846E;
	Thu, 30 May 2019 20:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B8aEzJQNDdd6; Thu, 30 May 2019 20:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8281188402;
	Thu, 30 May 2019 20:46:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EAC0B1BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E78A282058
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vb-JWVkQZ4XT for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 20:46:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8334882002
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 20:46:38 +0000 (UTC)
Received: from localhost (unknown [207.225.69.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 471722617A;
 Thu, 30 May 2019 20:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559249198;
 bh=3l/fBGXgNQ3z54neldfhfMe6aZgeoJlVyXU0AaAwnio=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=v2pCGD1jqzExF0Y6VZpFYt1i0aBb2vFESyML1kkiCIWUs+pjHG6XtXbVHLl2EVijj
 BPpjNLOPwnr4zqUnkCf/x7hqMD+CaVljtHhdHFyBj1AcxfemywLbyFdg0YxXlX7x0e
 6FJIMcqspp4XZ2rNP9jiDTQ9BLMjDT3ZOje9k6gs=
Date: Thu, 30 May 2019 13:46:38 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: media: tegra-vde: Remove variable
Message-ID: <20190530204638.GA4784@kroah.com>
References: <20190530204439.29830-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530204439.29830-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
 thierry.reding@gmail.com, jonathan@nvidia.com, linux-tegra@vger.kernel.org,
 digetx@gmail.com, mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 31, 2019 at 02:14:39AM +0530, Nishka Dasgupta wrote:
> Remove unnecessary variable iram_tables and use its value directly.
> Issue found using Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/media/tegra-vde/tegra-vde.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/tegra-vde/tegra-vde.c b/drivers/staging/media/tegra-vde/tegra-vde.c
> index a5020dbf6eef..3205973218e4 100644
> --- a/drivers/staging/media/tegra-vde/tegra-vde.c
> +++ b/drivers/staging/media/tegra-vde/tegra-vde.c
> @@ -273,12 +273,10 @@ static void tegra_vde_setup_iram_entry(struct tegra_vde *vde,
>  				       unsigned int row,
>  				       u32 value1, u32 value2)
>  {
> -	u32 *iram_tables = vde->iram;
> -
>  	trace_vde_setup_iram_entry(table, row, value1, value2);
>  
> -	iram_tables[0x20 * table + row * 2] = value1;
> -	iram_tables[0x20 * table + row * 2 + 1] = value2;
> +	vde->iram[0x20 * table + row * 2] = value1;
> +	vde->iram[0x20 * table + row * 2 + 1] = value2;

Ick, no, why?  why why why?

You keep sending these patches, please take a bit of time to think about
what you are doing and see if the change actually makes sense.

Again, here, no, it does not.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
