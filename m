Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 773A118BEF1
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 19:03:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71F2086D39;
	Thu, 19 Mar 2020 18:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4HlIKo1XdO2X; Thu, 19 Mar 2020 18:03:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC83186DF4;
	Thu, 19 Mar 2020 18:03:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D75441BF28A
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 18:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D282686D0F
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 18:03:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XSYh_HEdz31n for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 18:03:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17AEA86C34
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 18:03:39 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 62F70A53;
 Thu, 19 Mar 2020 19:03:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584641017;
 bh=HOUY95IFrKZRKfGjSsw5sMRF6MP3fYQPa1epjOauYxc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bLh0NBazFtysSiu+BJPR6fz6MWHFcZR2o8u4zE9vDkPwTVmMO43hTlNOyGXql5p46
 34EPnvnwtuOFc0/5U/0U5lQM07k0buTa0E1aKTA4q0la/oEy4tDjuArHbAEkSJXwM2
 hnWsc+pls1DSNxhrkqjTgE3a0M3QfQCIXRuT+xzQ=
Date: Thu, 19 Mar 2020 20:03:31 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alex Riesen <alexander.riesen@cetitec.com>
Subject: Re: [PATCH v2 01/10] media: adv748x: fix end-of-line terminators in
 diagnostic statements
Message-ID: <20200319180331.GK14585@pendragon.ideasonboard.com>
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <5272d873b4daf8b0bdb8aff81b08ab3508da9567.1584639664.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5272d873b4daf8b0bdb8aff81b08ab3508da9567.1584639664.git.alexander.riesen@cetitec.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alex,

Thank you for the patch.

On Thu, Mar 19, 2020 at 06:41:43PM +0100, Alex Riesen wrote:
> Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/media/i2c/adv748x/adv748x-core.c | 24 ++++++++++++------------
>  drivers/media/i2c/adv748x/adv748x-csi2.c |  2 +-
>  2 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/media/i2c/adv748x/adv748x-core.c b/drivers/media/i2c/adv748x/adv748x-core.c
> index 23e02ff27b17..c3fb113cef62 100644
> --- a/drivers/media/i2c/adv748x/adv748x-core.c
> +++ b/drivers/media/i2c/adv748x/adv748x-core.c
> @@ -623,11 +623,11 @@ static int adv748x_parse_dt(struct adv748x_state *state)
>  
>  	for_each_endpoint_of_node(state->dev->of_node, ep_np) {
>  		of_graph_parse_endpoint(ep_np, &ep);
> -		adv_info(state, "Endpoint %pOF on port %d", ep.local_node,
> +		adv_info(state, "Endpoint %pOF on port %d\n", ep.local_node,
>  			 ep.port);
>  
>  		if (ep.port >= ADV748X_PORT_MAX) {
> -			adv_err(state, "Invalid endpoint %pOF on port %d",
> +			adv_err(state, "Invalid endpoint %pOF on port %d\n",
>  				ep.local_node, ep.port);
>  
>  			continue;
> @@ -635,7 +635,7 @@ static int adv748x_parse_dt(struct adv748x_state *state)
>  
>  		if (state->endpoints[ep.port]) {
>  			adv_err(state,
> -				"Multiple port endpoints are not supported");
> +				"Multiple port endpoints are not supported\n");
>  			continue;
>  		}
>  
> @@ -702,62 +702,62 @@ static int adv748x_probe(struct i2c_client *client)
>  	/* Discover and process ports declared by the Device tree endpoints */
>  	ret = adv748x_parse_dt(state);
>  	if (ret) {
> -		adv_err(state, "Failed to parse device tree");
> +		adv_err(state, "Failed to parse device tree\n");
>  		goto err_free_mutex;
>  	}
>  
>  	/* Configure IO Regmap region */
>  	ret = adv748x_configure_regmap(state, ADV748X_PAGE_IO);
>  	if (ret) {
> -		adv_err(state, "Error configuring IO regmap region");
> +		adv_err(state, "Error configuring IO regmap region\n");
>  		goto err_cleanup_dt;
>  	}
>  
>  	ret = adv748x_identify_chip(state);
>  	if (ret) {
> -		adv_err(state, "Failed to identify chip");
> +		adv_err(state, "Failed to identify chip\n");
>  		goto err_cleanup_dt;
>  	}
>  
>  	/* Configure remaining pages as I2C clients with regmap access */
>  	ret = adv748x_initialise_clients(state);
>  	if (ret) {
> -		adv_err(state, "Failed to setup client regmap pages");
> +		adv_err(state, "Failed to setup client regmap pages\n");
>  		goto err_cleanup_clients;
>  	}
>  
>  	/* SW reset ADV748X to its default values */
>  	ret = adv748x_reset(state);
>  	if (ret) {
> -		adv_err(state, "Failed to reset hardware");
> +		adv_err(state, "Failed to reset hardware\n");
>  		goto err_cleanup_clients;
>  	}
>  
>  	/* Initialise HDMI */
>  	ret = adv748x_hdmi_init(&state->hdmi);
>  	if (ret) {
> -		adv_err(state, "Failed to probe HDMI");
> +		adv_err(state, "Failed to probe HDMI\n");
>  		goto err_cleanup_clients;
>  	}
>  
>  	/* Initialise AFE */
>  	ret = adv748x_afe_init(&state->afe);
>  	if (ret) {
> -		adv_err(state, "Failed to probe AFE");
> +		adv_err(state, "Failed to probe AFE\n");
>  		goto err_cleanup_hdmi;
>  	}
>  
>  	/* Initialise TXA */
>  	ret = adv748x_csi2_init(state, &state->txa);
>  	if (ret) {
> -		adv_err(state, "Failed to probe TXA");
> +		adv_err(state, "Failed to probe TXA\n");
>  		goto err_cleanup_afe;
>  	}
>  
>  	/* Initialise TXB */
>  	ret = adv748x_csi2_init(state, &state->txb);
>  	if (ret) {
> -		adv_err(state, "Failed to probe TXB");
> +		adv_err(state, "Failed to probe TXB\n");
>  		goto err_cleanup_txa;
>  	}
>  
> diff --git a/drivers/media/i2c/adv748x/adv748x-csi2.c b/drivers/media/i2c/adv748x/adv748x-csi2.c
> index 2091cda50935..c43ce5d78723 100644
> --- a/drivers/media/i2c/adv748x/adv748x-csi2.c
> +++ b/drivers/media/i2c/adv748x/adv748x-csi2.c
> @@ -72,7 +72,7 @@ static int adv748x_csi2_registered(struct v4l2_subdev *sd)
>  	struct adv748x_state *state = tx->state;
>  	int ret;
>  
> -	adv_dbg(state, "Registered %s (%s)", is_txa(tx) ? "TXA":"TXB",
> +	adv_dbg(state, "Registered %s (%s)\n", is_txa(tx) ? "TXA":"TXB",
>  			sd->name);
>  
>  	/*

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
