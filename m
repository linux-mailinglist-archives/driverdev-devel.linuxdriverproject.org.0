Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E86C3CB740
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Oct 2019 11:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E26E87750;
	Fri,  4 Oct 2019 09:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id flA4agarFeZg; Fri,  4 Oct 2019 09:21:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8D2B878BA;
	Fri,  4 Oct 2019 09:21:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3B4C1BF317
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 09:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E6C56883B6
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 09:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1-H4O-jwfjtP for <devel@linuxdriverproject.org>;
 Fri,  4 Oct 2019 09:21:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net
 [194.109.24.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 09C35883B2
 for <devel@driverdev.osuosl.org>; Fri,  4 Oct 2019 09:21:23 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id GJlwivf8kjZ8vGJlziswOs; Fri, 04 Oct 2019 11:21:22 +0200
Subject: Re: [PATCH v2 3/6] media: v4l2-mem2mem: add
 stateless_(try_)decoder_cmd ioctl helpers
To: Jernej Skrabec <jernej.skrabec@siol.net>, mchehab@kernel.org,
 paul.kocialkowski@bootlin.com, mripard@kernel.org, pawel@osciak.com,
 m.szyprowski@samsung.com, kyungmin.park@samsung.com, tfiga@chromium.org,
 wens@csie.org
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <20190929200023.215831-4-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <6c7eeaf1-18bb-1c7e-7938-a3eb5af100b6@xs4all.nl>
Date: Fri, 4 Oct 2019 11:21:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190929200023.215831-4-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfNHxv0MOKVAOjLAe6G4CBfcHcYTNr7KvCzEK5brMzn3ZewBV+0xbPvwcwJDQcp8ul8eIBmxzXkX1txxx+hZvvzm38lHBPu5jyPYMWkFgiWLkB5pqH676
 fboONHHLgY1hhv50icOJjIk7Mx0A8PhLej+PEhTPbLbCerxtslbf7QKukn3nwby2XhwQqccJeVBfW/24bEc/L4Jk8gnW30K+2XeCJOoysZB8IkE5pqsnzvg0
 NMuG7lI2b1+8HCRWmjj+SQ5qSiGLYSujq6J6CKoJT2gDTeW4Z6b+V1DT03vIwaJWaEh1fVScwiIzLlQFWeWQ6w5jvIDBtgDzvy+oNohMnw6jNOUn5hkOozI6
 Yk9gyKkeDLqbOEU96E2JaHy/4wbPhd+Ml9aXEXhNE/ssKVtKCVuK3NoRtDhEC8+4zpnMblzKXcVmusxK2Xex7TGU8j+vmNdjnuqMEzgoIF1z/UD/zLNy7WNs
 M6kV1B+XGnxac6NCTLZjlVmiPqIjyzfPkunDdXpQhHB3MPM2coK2MEN5k7iqA2IzMQivBgTxEjLTKkxq2vCMVBOwZ2jTukJhtTDY9mLdI3osLmhLUEmPJbTB
 RVJO80w3CvGvfkkD6URjuL6h5NoKFfQERYxIHZnp+wKdvUSsNtUNII5dOKu8fYO88hrhMxu3Qs/p01EsWK+QsnjoGa4F4Uy6H+VCAemmNbWYbrfuO+feoItY
 Ezt4XtEQc1vLwi9nANW0Gvlzguxtz/ZBx7ORXGURUqGy8BaZ81/gVg==
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, boris.brezillon@collabora.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> These helpers are used by stateless codecs when they support multiple
> slices per frame and hold capture buffer flag is set. It's expected that
> all such codecs will use this code.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/media/v4l2-core/v4l2-mem2mem.c | 35 ++++++++++++++++++++++++++
>  include/media/v4l2-mem2mem.h           |  4 +++
>  2 files changed, 39 insertions(+)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
> index 19937dd3c6f6..2677a07e4c9b 100644
> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> @@ -1154,6 +1154,41 @@ int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
>  }
>  EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_try_decoder_cmd);
>  
> +int v4l2_m2m_ioctl_stateless_try_decoder_cmd(struct file *file, void *fh,
> +					     struct v4l2_decoder_cmd *dc)
> +{
> +	if (dc->cmd != V4L2_DEC_CMD_FLUSH)
> +		return -EINVAL;
> +
> +	dc->flags = 0;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_stateless_try_decoder_cmd);
> +
> +int v4l2_m2m_ioctl_stateless_decoder_cmd(struct file *file, void *priv,
> +					 struct v4l2_decoder_cmd *dc)
> +{
> +	struct v4l2_fh *fh = file->private_data;
> +	struct vb2_v4l2_buffer *out_vb, *cap_vb;
> +	int ret;
> +
> +	ret = v4l2_m2m_ioctl_stateless_try_decoder_cmd(file, priv, dc);
> +	if (ret < 0)
> +		return ret;
> +
> +	out_vb = v4l2_m2m_last_src_buf(fh->m2m_ctx);
> +	cap_vb = v4l2_m2m_last_dst_buf(fh->m2m_ctx);

I think this should be v4l2_m2m_next_dst_buf. If multiple capture buffers were
queued up, then it can only be the first capture buffer that can be 'HELD'.

This might solve the race condition you saw with ffmpeg.

Regards,

	Hans

> +
> +	if (out_vb)
> +		out_vb->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> +	else if (cap_vb && cap_vb->is_held)
> +		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_stateless_decoder_cmd);
> +
>  /*
>   * v4l2_file_operations helpers. It is assumed here same lock is used
>   * for the output and the capture buffer queue.
> diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> index c9fa96c8eed1..8ae2f56c7fa3 100644
> --- a/include/media/v4l2-mem2mem.h
> +++ b/include/media/v4l2-mem2mem.h
> @@ -714,6 +714,10 @@ int v4l2_m2m_ioctl_try_encoder_cmd(struct file *file, void *fh,
>  				   struct v4l2_encoder_cmd *ec);
>  int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
>  				   struct v4l2_decoder_cmd *dc);
> +int v4l2_m2m_ioctl_stateless_try_decoder_cmd(struct file *file, void *fh,
> +					     struct v4l2_decoder_cmd *dc);
> +int v4l2_m2m_ioctl_stateless_decoder_cmd(struct file *file, void *priv,
> +					 struct v4l2_decoder_cmd *dc);
>  int v4l2_m2m_fop_mmap(struct file *file, struct vm_area_struct *vma);
>  __poll_t v4l2_m2m_fop_poll(struct file *file, poll_table *wait);
>  
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
