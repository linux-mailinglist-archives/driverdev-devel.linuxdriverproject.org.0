Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDED5A30FA
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 09:28:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B25B88250;
	Fri, 30 Aug 2019 07:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0B1smnCYwjvL; Fri, 30 Aug 2019 07:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F035088236;
	Fri, 30 Aug 2019 07:28:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E48741BF34A
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 07:28:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E14E388708
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 07:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VCJuckb2puKU for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 07:28:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net
 [194.109.24.26])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A1411886AD
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 07:28:20 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud9.xs4all.net with ESMTPA
 id 3bKLiM2X6zaKO3bKOiQPhh; Fri, 30 Aug 2019 09:28:18 +0200
Subject: Re: [PATCH 5/8] media: cedrus: Detect first slice of a frame
To: Jernej Skrabec <jernej.skrabec@siol.net>, mchehab@kernel.org,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-6-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <ee46d461-1be8-e803-9792-9fb9481acf16@xs4all.nl>
Date: Fri, 30 Aug 2019 09:28:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822194500.2071-6-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAklJxN99U94VgVdrg/wZWzFtkJLsUOAcDBPdvvu7N4xnAGlcRiHNmIHd9ozKfJqnwU1xSC8qX3gGJWdJaYewvrK/js+bIxfWV/1ACz1dt1R+iYcmlxK
 foiXEWAMvXY+tghwfqmr/zsL8IqXb4dStPKOXA9jONcO2zWdfZZ9okaNghI7k6WaYzhtbthDMZYGbdq+IC0ZrxfOvZKdxH9fBEZr1Sg5h4SL+/Ci65S2vFhJ
 Tcq9qaQuXd1VsmGnVXN3dmv9a+7pxklKRl6Wckh4vSciUxUBY8AwDDVZRc32kyi4EHpuBXY5LCYD6QoSF09hNlueaMfADSknFO/vYKnbfdmrxuG0Ja6F1k5V
 bAWbtX8yMSt+k4HApzJI+bZA9wjWe6D3hOKufJffSe6OCY+vzua8DYxB267V39eAqDSc3NvGhkvuVExsCwyBI4IGgHrYVSJb3c2kCbn8W/JJG4/aLfj8M7/U
 dD6VcrzZmerQdF7fXGFWmumdbOmEnMMYkkzJVdQGnvaIhDN1HWxQZ3pfOPFZ9W0Ze4+9UkBoZWdbsgQ6vVtHasF9EsqXSey4dZ6vs9gKAXaFWX99Cl6XtFfQ
 a0cObES470eOMn8R6GyxokYst2TSMt8eCT0zkFoVlfoV1SzRj057QUhENYrjWT/IcO0ZfDQfaYV8F4F0L7ME+snr6bpviuUv6feHCsfZPdxyp4XRYwWcwk/b
 vdOI2SH8+nyNXgEreuWmqIiQjoXA5hkU
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
Cc: devel@driverdev.osuosl.org, pawel@osciak.com, acourbot@chromium.org,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, tfiga@chromium.org,
 kyungmin.park@samsung.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org, ezequiel@collabora.com,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/22/19 9:44 PM, Jernej Skrabec wrote:
> When codec supports multiple slices in one frame, VPU has to know when
> first slice of each frame is being processed, presumably to correctly
> clear/set data in auxiliary buffers.
> 
> Add first_slice field to cedrus_run structure and set it according to
> timestamps of capture and output buffers. If timestamps are different,
> it's first slice and viceversa.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.h     | 1 +
>  drivers/staging/media/sunxi/cedrus/cedrus_dec.c | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
> index 2f017a651848..32cb38e541c6 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> @@ -70,6 +70,7 @@ struct cedrus_mpeg2_run {
>  struct cedrus_run {
>  	struct vb2_v4l2_buffer	*src;
>  	struct vb2_v4l2_buffer	*dst;
> +	bool first_slice;
>  
>  	union {
>  		struct cedrus_h264_run	h264;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> index 56ca4c9ad01c..d7b54accfe83 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> @@ -31,6 +31,8 @@ void cedrus_device_run(void *priv)
>  
>  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
>  	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +	run.first_slice =
> +		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;

This is almost correct. To handle the corner case where no timestamp
was ever copied to run.dst->vb2_buf you need this check:

	run.first_slice = !run.dst->vb2_buf.copied_timestamp ||
		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;

Regards,

	Hans

>  
>  	/* Apply request(s) controls if needed. */
>  	src_req = run.src->vb2_buf.req_obj.req;
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
