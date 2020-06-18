Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E60951FF922
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 18:23:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D84987C30;
	Thu, 18 Jun 2020 16:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DBIUP-xetf4w; Thu, 18 Jun 2020 16:23:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D312587C47;
	Thu, 18 Jun 2020 16:23:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC3951BF2F4
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 16:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A64F3895E6
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 16:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kq-pqXXy9q9i for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 16:23:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 122E489571
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 16:23:20 +0000 (UTC)
Received: from [192.168.0.20]
 (cpc89242-aztw30-2-0-cust488.18-1.cable.virginm.net [86.31.129.233])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8A5A2F9;
 Thu, 18 Jun 2020 18:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1592497398;
 bh=/cd/RPu/vuGMr1gt5mZp5+oG7+iJ6WX/U8t/ogBZIO8=;
 h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
 b=EuLaR5r33jTj9RDJPNe9yDCQxR8Z5pJsFzYONOdzg7Wr/c1tiPV9F4fHejN774aGX
 gNl/Y11ebZVsi+tFOylADYqCG2snXAscCHtjurgqc1x6v8AVJh1EBXqd6qvVc1cFmn
 jk7y6luLxzWYc4H/qZEispBLVZIa9Cevv/AfM3MQ=
Subject: Re: [PATCH v5 6/9] media: adv748x: prepare/enable mclk when the audio
 is used
To: Alex Riesen <alexander.riesen@cetitec.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <cover.1585852001.git.alexander.riesen@cetitec.com>
 <d9b7a7290e3d95b484a7a760484f827c3ed7651e.1585852001.git.alexander.riesen@cetitec.com>
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Organization: Ideas on Board
Message-ID: <646b0f32-2f83-281a-ccc0-eb88f82eb7a3@ideasonboard.com>
Date: Thu, 18 Jun 2020 17:23:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <d9b7a7290e3d95b484a7a760484f827c3ed7651e.1585852001.git.alexander.riesen@cetitec.com>
Content-Language: en-GB
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
Reply-To: kieran.bingham+renesas@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alex,

On 02/04/2020 19:34, Alex Riesen wrote:
> As there is nothing else (the consumers are supposed to do that) which
> enables the clock, do it in the driver.
> 
> Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
> --
> 
> v3: added
> ---
>  drivers/media/i2c/adv748x/adv748x-dai.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/i2c/adv748x/adv748x-dai.c b/drivers/media/i2c/adv748x/adv748x-dai.c
> index c9191f8f1ca8..185f78023e91 100644
> --- a/drivers/media/i2c/adv748x/adv748x-dai.c
> +++ b/drivers/media/i2c/adv748x/adv748x-dai.c
> @@ -117,11 +117,22 @@ static int adv748x_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
>  
>  static int adv748x_dai_startup(struct snd_pcm_substream *sub, struct snd_soc_dai *dai)
>  {
> +	int ret;
>  	struct adv748x_state *state = state_of(dai);
>  
>  	if (sub->stream != SNDRV_PCM_STREAM_CAPTURE)
>  		return -EINVAL;
this looks quite bunched up so :

Newline...

> -	return set_audio_pads_state(state, 1);
> +	ret = set_audio_pads_state(state, 1);
> +	if (ret)
> +		goto fail;

With no action required to cleanup here, I would just
		return ret;
and remove the fail: label.


Newline...

> +	ret = clk_prepare_enable(mclk_of(state));
> +	if (ret)
> +		goto fail_pwdn;

newline...

> +	return 0;

newline...

Other than that:

Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

> +fail_pwdn:
> +	set_audio_pads_state(state, 0);
> +fail:
> +	return ret;
>  }
>  
>  static int adv748x_dai_hw_params(struct snd_pcm_substream *sub,
> @@ -174,6 +185,7 @@ static void adv748x_dai_shutdown(struct snd_pcm_substream *sub, struct snd_soc_d
>  {
>  	struct adv748x_state *state = state_of(dai);
>  
> +	clk_disable_unprepare(mclk_of(state));
>  	set_audio_pads_state(state, 0);
>  }
>  
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
