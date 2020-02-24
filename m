Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 962FE16A593
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 12:55:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 373C7860BE;
	Mon, 24 Feb 2020 11:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B-2XkR9-wML4; Mon, 24 Feb 2020 11:55:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF02281E85;
	Mon, 24 Feb 2020 11:55:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00B341BF2F1
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DC8ED203F4
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1q-s0d5DG5lY for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 11:55:14 +0000 (UTC)
X-Greylist: delayed 00:05:20 by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by silver.osuosl.org (Postfix) with ESMTPS id 73DBA203CE
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 11:55:14 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 12C21E89;
 Mon, 24 Feb 2020 12:49:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1582544991;
 bh=VVerRb6P9n4J0byG4RDsnhoDAwB4cAvUJUyugM/0Jkc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ugYQv4c39w/BkPop3ddbphnw7qyYCMDbqcgPLKuDgjGcZC5LoOJius+czrFIHnrb+
 u816peG8yGigqAo9ygdzkTC9q7i8yW3GmL2ZSQlkPVa5pSTcbXErFNcBc5VMpcR6Cd
 Zk0y5c8XWW8nPgbWZw6H0KcjPP3rblcv841JCdU8=
Date: Mon, 24 Feb 2020 13:49:29 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [greybus-dev] [PATCH] staging: greybus: match parenthesis
 alignment
Message-ID: <20200224114929.GB4827@pendragon.ideasonboard.com>
References: <20200219195651.GA485@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219195651.GA485@kaaira-HP-Pavilion-Notebook>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 greybus-dev@lists.linaro.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Kaaira,

Thank you for the patch.

On Thu, Feb 20, 2020 at 01:26:51AM +0530, Kaaira Gupta wrote:
> Fix checkpatch.pl warning of alignment should match open parenthesis in
> audio_codec.c
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/greybus/audio_codec.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
> index 08746c85dea6..d62f91f4e9a2 100644
> --- a/drivers/staging/greybus/audio_codec.c
> +++ b/drivers/staging/greybus/audio_codec.c
> @@ -70,7 +70,7 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
>  		i2s_port = 0;	/* fixed for now */
>  		cportid = data->connection->hd_cport_id;
>  		ret = gb_audio_apbridgea_register_cport(data->connection,
> -						i2s_port, cportid,
> +							i2s_port, cportid,
>  						AUDIO_APBRIDGEA_DIRECTION_TX);

I'm curious to know why you think the line you changed deserves a
modification, while the next one doesn't :-)

>  		if (ret) {
>  			dev_err_ratelimited(module->dev,
> @@ -160,7 +160,7 @@ static int gbaudio_module_disable_tx(struct gbaudio_module_info *module, int id)
>  		i2s_port = 0;	/* fixed for now */
>  		cportid = data->connection->hd_cport_id;
>  		ret = gb_audio_apbridgea_unregister_cport(data->connection,
> -						i2s_port, cportid,
> +							  i2s_port, cportid,
>  						AUDIO_APBRIDGEA_DIRECTION_TX);
>  		if (ret) {
>  			dev_err_ratelimited(module->dev,
> @@ -205,7 +205,7 @@ static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
>  		i2s_port = 0;	/* fixed for now */
>  		cportid = data->connection->hd_cport_id;
>  		ret = gb_audio_apbridgea_register_cport(data->connection,
> -						i2s_port, cportid,
> +							i2s_port, cportid,
>  						AUDIO_APBRIDGEA_DIRECTION_RX);
>  		if (ret) {
>  			dev_err_ratelimited(module->dev,
> @@ -295,7 +295,7 @@ static int gbaudio_module_disable_rx(struct gbaudio_module_info *module, int id)
>  		i2s_port = 0;	/* fixed for now */
>  		cportid = data->connection->hd_cport_id;
>  		ret = gb_audio_apbridgea_unregister_cport(data->connection,
> -						i2s_port, cportid,
> +							  i2s_port, cportid,
>  						AUDIO_APBRIDGEA_DIRECTION_RX);
>  		if (ret) {
>  			dev_err_ratelimited(module->dev,

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
