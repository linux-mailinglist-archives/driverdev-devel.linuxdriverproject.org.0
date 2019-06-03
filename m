Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D1A32F69
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5F7785CF2;
	Mon,  3 Jun 2019 12:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WN4_nZlRxU5h; Mon,  3 Jun 2019 12:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B8EC85C43;
	Mon,  3 Jun 2019 12:19:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA5211BF4E6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A2E4B858AE
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O6YIio-Sex5k for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
 [217.70.183.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 01DBB84D16
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 12:19:16 +0000 (UTC)
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 4F98124001F;
 Mon,  3 Jun 2019 12:19:02 +0000 (UTC)
Date: Mon, 3 Jun 2019 14:18:59 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 6/7] media: cedrus: Add infra for extra buffers connected
 to capture buffers
Message-ID: <20190603121859.sbphcjy75kmed6oc@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-7-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190530211516.1891-7-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2766540186286508548=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2766540186286508548==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ymlpox2fd2kt5ivb"
Content-Disposition: inline


--ymlpox2fd2kt5ivb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, May 30, 2019 at 11:15:15PM +0200, Jernej Skrabec wrote:
> H264 and HEVC engines need additional buffers for each capture buffer.
> H264 engine has this currently solved by allocating fixed size pool,
> which is not ideal. Most of the time pool size is much bigger than it
> needs to be.
>
> Ideally, extra buffer should be allocated at buffer initialization, but
> that's not efficient. It's size in H264 depends on flags set in SPS, but
> that information is not available in buffer init callback.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  4 ++++
>  .../staging/media/sunxi/cedrus/cedrus_video.c | 19 +++++++++++++++++++
>  2 files changed, 23 insertions(+)
>
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
> index d8e6777e5e27..16c1bdfd243a 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> @@ -81,6 +81,10 @@ struct cedrus_run {
>  struct cedrus_buffer {
>  	struct v4l2_m2m_buffer          m2m_buf;
>
> +	void		*extra_buf;
> +	dma_addr_t	extra_buf_dma;
> +	ssize_t		extra_buf_size;
> +
>  	union {
>  		struct {
>  			unsigned int			position;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 681dfe3367a6..d756e0e69634 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -411,6 +411,24 @@ static void cedrus_queue_cleanup(struct vb2_queue *vq, u32 state)
>  	}
>  }
>
> +static void cedrus_buf_cleanup(struct vb2_buffer *vb)
> +{
> +	struct vb2_queue *vq = vb->vb2_queue;
> +
> +	if (!V4L2_TYPE_IS_OUTPUT(vq->type)) {
> +		struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
> +		struct cedrus_buffer *cedrus_buf;
> +
> +		cedrus_buf = vb2_to_cedrus_buffer(vq->bufs[vb->index]);
> +
> +		if (cedrus_buf->extra_buf_size)
> +			dma_free_coherent(ctx->dev->dev,
> +					  cedrus_buf->extra_buf_size,
> +					  cedrus_buf->extra_buf,
> +					  cedrus_buf->extra_buf_dma);
> +	}
> +}
> +

I'm really not a fan of allocating something somewhere, and freeing it
somewhere else. Making sure you don't leak something is hard enough to
not have some non-trivial allocation scheme.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ymlpox2fd2kt5ivb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPUQMwAKCRDj7w1vZxhR
xZNaAP9V21ZWkOqlo7WZlTwBZOAkVOmATfNXoqclKE0qWtzOVAD8CPTJeCMOMixQ
jEzMAC7P8TCOrSNny9fgeSx7u+ReUwM=
=dENZ
-----END PGP SIGNATURE-----

--ymlpox2fd2kt5ivb--

--===============2766540186286508548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2766540186286508548==--
