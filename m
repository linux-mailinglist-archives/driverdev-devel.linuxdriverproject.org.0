Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 995D5A17D6
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 13:12:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AD95872CF;
	Thu, 29 Aug 2019 11:12:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Up1k-vETtVx9; Thu, 29 Aug 2019 11:12:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7EEE87251;
	Thu, 29 Aug 2019 11:12:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 984941BF3CA
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 11:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9542C20505
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 11:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mr2MdvNeaoOz for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 11:12:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net
 [194.109.24.29])
 by silver.osuosl.org (Postfix) with ESMTPS id 4DDC620360
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 11:12:00 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id 3ILCiR944DqPe3ILFiNgEV; Thu, 29 Aug 2019 13:11:58 +0200
Subject: Re: [PATCH 8/8] media: cedrus: Add support for V4L2_DEC_CMD_FLUSH
To: Jernej Skrabec <jernej.skrabec@siol.net>, mchehab@kernel.org,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-9-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <492894c9-4724-7bf4-6382-1efa6c8b04e3@xs4all.nl>
Date: Thu, 29 Aug 2019 13:11:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822194500.2071-9-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfEwov33oZolPtzZ7XyvSZAIuIvkpc9TulJ+yXPZVzKtoFR2DC2TCYKvHdXqvSPOpqTHHx5FcSQ1ekXSuG4Oo9uM+zntMIRRFnU0wuATMFl1cTORWjCJr
 rKjZagUkg1p7uB6FI1X1eEm2S2kD+75q/XC4/f12WVLFAZatK4Pn8hm/4Z68H5EDl61LUi/dU2jX3ho/NI64Y23GLzpL+CFGyDgnhPSCBTzAOc7uX//3668T
 9reEi88PUiFSHsHHvYqyFXliFtDA36pkhbMuGZ2n3qFK+RKQvD76UjG39oN5N4LJzv7NYEHESvFxaSOFy46TcMTXL0JGAUhxHdyBj7+IS+IOvkyP7w6f/Vn0
 PqZUHTzoRxVrvv8fgPye6yqCTBaN2zyIzBERHkf8SU6/p/7Sv9RpTCjW42wnGKswtWWv/eG1T7G+OHDgqFcx/XlSE21f6hjfFWdhuvuxo+XiPhq0AvpPRmEY
 sB0IzEFkwH/aUVGe2J8xzC7XNkRgdEYSA+jmJHn4HcysDP9bSuJ1GHM1tSHlkSLTWPqge5brj81I5I6NekFP92nmBp0gl6BzhlA8KuUzysLeuinyDLJmgzzd
 GQsSaxcwsEElAmtcF3EVOS/2GOeuGdqc2qcj6UwQV+5XkCQwp1rAb0QHJe5j1qYd7PyIT7SMNoVXGUTNEpw1bj5cOwbW9f8/rhSB0/7rSiUggSNlnjtNdaAB
 um0xuGCTK0T1VMtidPGpRFgs9Y500env
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

On 8/22/19 9:45 PM, Jernej Skrabec wrote:
> This command is useful for explicitly flushing last decoded frame.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../staging/media/sunxi/cedrus/cedrus_video.c | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 5153b2bba21e..9eae69d5741c 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -331,6 +331,37 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
>  	return 0;
>  }
>  
> +static int cedrus_try_decoder_cmd(struct file *file, void *fh,
> +				  struct v4l2_decoder_cmd *dc)
> +{
> +	if (dc->cmd != V4L2_DEC_CMD_FLUSH)
> +		return -EINVAL;

You need to add this line here as well:

	dc->flags = 0;

As per the decoder_cmd spec.

> +
> +	return 0;
> +}
> +
> +static int cedrus_decoder_cmd(struct file *file, void *fh,
> +			      struct v4l2_decoder_cmd *dc)
> +{
> +	struct cedrus_ctx *ctx = cedrus_file2ctx(file);

You don't need this...

> +	struct vb2_v4l2_buffer *out_vb, *cap_vb;
> +	int ret;
> +
> +	ret = cedrus_try_decoder_cmd(file, fh, dc);
> +	if (ret < 0)
> +		return ret;
> +
> +	out_vb = v4l2_m2m_last_src_buf(ctx->fh.m2m_ctx);

... since you can use fh->m2m_ctx directly.

> +	cap_vb = v4l2_m2m_last_dst_buf(ctx->fh.m2m_ctx);
> +
> +	if (out_vb)
> +		out_vb->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> +	else if (cap_vb && cap_vb->is_held)
> +		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
> +
> +	return 0;
> +}
> +

Both these functions should be moved to v4l2-mem2mem.c and renamed to
v4l2_m2m_ioctl_stateless_(try_)decoder_cmd.

As far as I can see they are completely generic and valid for any
stateless decoder. Which is very nice :-)

>  const struct v4l2_ioctl_ops cedrus_ioctl_ops = {
>  	.vidioc_querycap		= cedrus_querycap,
>  
> @@ -355,6 +386,9 @@ const struct v4l2_ioctl_ops cedrus_ioctl_ops = {
>  	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
>  	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
>  
> +	.vidioc_try_decoder_cmd		= cedrus_try_decoder_cmd,
> +	.vidioc_decoder_cmd		= cedrus_decoder_cmd,
> +
>  	.vidioc_subscribe_event		= v4l2_ctrl_subscribe_event,
>  	.vidioc_unsubscribe_event	= v4l2_event_unsubscribe,
>  };
> 

Regards,

	Hans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
