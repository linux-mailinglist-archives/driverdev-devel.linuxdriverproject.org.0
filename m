Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FD4D714F
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 10:42:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 157B78820B;
	Tue, 15 Oct 2019 08:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCFRf8F1YNJu; Tue, 15 Oct 2019 08:42:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 632D9879B8;
	Tue, 15 Oct 2019 08:42:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF9051BF2F9
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 08:42:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BA83F87924
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 08:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0NzXzAqP7orr for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 08:42:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EFC21879CD
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 08:42:20 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id o18so22694713wrv.13
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 01:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Alk2iYvP1zhS1Vsxyz1ENDltR7DNnK/DdAFNKV0PUVw=;
 b=HPC6BuNV8j9u4GZjxKCxoY5RREbeSrCviqnJSe7bX9+Mz4/Ou/Y9YJfCz9D6x5YDJN
 FPfze7R3WjjunFuZ7BTxjlj9zeZRJzIv5QwElj6bGpHm80r1uAkybYsje5HSVM+2NFwg
 okWGBK3N+IHtYpPvyQqh8PWgleHiWLfaTVIU08wX80EZFskkvb87rkGeRvnDWfk89KCu
 IgJWRobMxvlThOjJFQ8cTYimw/cyOOpegxEHHwfkSkuivf2kzEL9dFf5lp0/093hBmrI
 I+I7fkoLrJo0gxg6wqlRIw4tvg+AF768tPLChUkL43L+S3EzP1I5VV2vB2RtSVkqAj5v
 MBHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Alk2iYvP1zhS1Vsxyz1ENDltR7DNnK/DdAFNKV0PUVw=;
 b=IIvPjB2pPbf5o7gckILzyWnwViw85xOfq7jnrr66Gc90H3CClMaY9mermw4B5/ITS+
 kEfrW0YTl9MKzGvj4UU0cd0F5y9+d3UGvn3QtnuSV+YoaJIscSXs6JmO6pRA/yURiEfx
 zTArwdfdqG2BmJzNzqBb8zic2fPCPwUYoxjXH6tSnPV43Y7/PdzcWbSijhoVkS3zh4dr
 bpq0Wolslcfl5Kw0SK5e6qxBx2x1065inGyOwYvufKxNCDjoutH5zCXc9XP5ARRIk60H
 udoEwmRrY+z54CgzElzPZZIyjHn3mkrgBZkfoHLPycEgP34pIqHYbxsB1cFBZtUuhFhw
 KtcA==
X-Gm-Message-State: APjAAAW17i/QIV8caaT/SsnQHabJj81NjqUJ3oobUr6Jns8lRDGFaIJY
 qdBFTlGO3+5ElOpQsYt2v7k=
X-Google-Smtp-Source: APXvYqx2bycIPnDtHKFh/xJsJXsS+Tg6XyXhmAOeu2Ar9KLDQ3WxO6d6EJTK67tMcZ2zx3XYKeedhw==
X-Received: by 2002:adf:e40c:: with SMTP id g12mr30931259wrm.216.1571128939235; 
 Tue, 15 Oct 2019 01:42:19 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id u10sm19454220wmm.0.2019.10.15.01.42.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 01:42:17 -0700 (PDT)
References: <20191014020847.9203-1-hslester96@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] media: imx7-mipi-csis: Add a check for devm_regulator_get
In-reply-to: <20191014020847.9203-1-hslester96@gmail.com>
Date: Tue, 15 Oct 2019 09:42:16 +0100
Message-ID: <m3sgnuv1qv.fsf@gmail.com>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chuhong,
Thanks for the patch.

On Mon 14 Oct 2019 at 03:08, Chuhong Yuan wrote:
> devm_regulator_get may return an error but mipi_csis_phy_init misses
> a check for it.
> This may lead to problems when regulator_set_voltage uses the unchecked
> pointer.
> This patch adds a check for devm_regulator_get to avoid potential risk.
>
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354e618c..9a07b54c4ab1 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
>  static int mipi_csis_phy_init(struct csi_state *state)
>  {
>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
> +	if (IS_ERR(state->mipi_phy_regulator))
> +		return PTR_ERR(state->mipi_phy_regulator);

This regulator is marked as mandatory in the device tree entry,
however it looks good to me to have this check, even because it
can return -EPROBE_DEFER and we need to retry.

But for that we may need to extend this patch to make the caller
of this (mipi_csis_probe), to also really care about the returned
code.

Cheers,
   Rui

>
>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
>  				     1000000);

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
