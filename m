Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A460FDA907
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 11:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8E42024368;
	Thu, 17 Oct 2019 09:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NQpoUfhwt8oB; Thu, 17 Oct 2019 09:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 526B723524;
	Thu, 17 Oct 2019 09:46:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 576ED1BF2CF
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4789986D73
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id seNlr6cXo8Ri for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 09:46:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B00B86D42
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 09:46:43 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id z9so1535670wrl.11
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 02:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=HKy0scgKD2Yqtf85mglqediv2brLo+GCB1Q93X6euAo=;
 b=WuaWhX4a2YttbDW1uaoNrQa8MGElT2XHF+EH1vrh+FhKdJ7zerR1iOBaQLR9V4And+
 erCM0k4fsG6I7tXe/gPaplriKFpi/DpIms4+UWhyO2pqsec85FYZ7IV8Q/U9D7EZSpEd
 t0jAjzctzu/mzoif0XszF32ycjQ0+Nx0WpFXKbaDOIfwcWtyPV0ercNjE40OrDdqKyk0
 pnOkfP29TCzKCCAo+9GQwF15UJ+hZ02YJ3UgvX/Rt8LB6aK+PeYivQUHZDhlHDY/eidf
 82uy2VQ8ZWMCPe2sNLnAlOBcYmCOk8DP9tForqbHLWTLfhZVKYG7+m4Jsu5aiHRmkO7Y
 qOyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=HKy0scgKD2Yqtf85mglqediv2brLo+GCB1Q93X6euAo=;
 b=hCkYsItlsLNQZllzEY4Iel8sePz//l0kHHGy9fuyPUZTzfTHMUhVjU5wL/fOb1NVv6
 Z+5Jll5xPzAcM52ZSYWIGurKI1NucVeSrOPYpp0N78XuQB+CWTJj5OQ0ewICB0OpGO7Y
 MdKFml8p5u6+tehefoUhlSpm7yFgsa3oTky8j3rmlB4u103PFU/GeH+Drev2QK86bMgE
 91chcwOzNxJsl5dihp1fT6VyxW6VohMhLF1vi4pt3uaun3H+hKpbVJGn7EKG6A8dsKkP
 5ChS+tIZkAQzDEBwDsezeDJfX7xraq+VFGjH8vN7rZC2cXZaFeoIq2IS+0efmHPClpZ6
 3Rkg==
X-Gm-Message-State: APjAAAU5AgRvsJcY0K7ZgY60xpXybsUb6BWEHG8C6gcakXQBMihwKWOS
 4VGphi53kY8kQGlQNwOl5Ws=
X-Google-Smtp-Source: APXvYqxrXHe+FRRJ2WwWs57//iOV5M+rIWiIDpk9WzExeUemaBkFY9x6xk6p7+jfLAgGOzcY00CGjQ==
X-Received: by 2002:adf:f547:: with SMTP id j7mr2346059wrp.26.1571305601811;
 Thu, 17 Oct 2019 02:46:41 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id w17sm1678983wra.34.2019.10.17.02.46.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 02:46:41 -0700 (PDT)
References: <20191015135915.6530-1-hslester96@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH v2] media: imx7-mipi-csis: Add a check for
 devm_regulator_get
In-reply-to: <20191015135915.6530-1-hslester96@gmail.com>
Date: Thu, 17 Oct 2019 10:46:38 +0100
Message-ID: <m3zhhzr9fl.fsf@gmail.com>
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
many thanks for the patch.

On Tue 15 Oct 2019 at 14:59, Chuhong Yuan wrote:
> devm_regulator_get may return an error but mipi_csis_phy_init misses
> a check for it.
> This may lead to problems when regulator_set_voltage uses the unchecked
> pointer.
> This patch adds a check for devm_regulator_get to avoid potential risk.
>
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>

---
Cheers,
	Rui

> ---
> Changes in v2:
>   - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.
>
>  drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354e618c..e8a6acaa969e 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
>  static int mipi_csis_phy_init(struct csi_state *state)
>  {
>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
> +	if (IS_ERR(state->mipi_phy_regulator))
> +		return PTR_ERR(state->mipi_phy_regulator);
>
>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
>  				     1000000);
> @@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>
> -	mipi_csis_phy_init(state);
> +	ret = mipi_csis_phy_init(state);
> +	if (ret < 0)
> +		return ret;
> +
>  	mipi_csis_phy_reset(state);
>
>  	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
