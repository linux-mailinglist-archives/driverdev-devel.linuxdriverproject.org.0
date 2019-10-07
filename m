Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB5FCDBB7
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 08:02:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 896928790D;
	Mon,  7 Oct 2019 06:02:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aronwkEywacE; Mon,  7 Oct 2019 06:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4830876C3;
	Mon,  7 Oct 2019 06:02:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9DA81BF3FF
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 06:02:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A68FE85C9F
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 06:02:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0_Pz7RtUt-Or for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 06:02:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs34.siol.net [185.57.226.225])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEC188557E
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 06:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 9592A521630;
 Mon,  7 Oct 2019 08:02:16 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id vcF-zkhEbduB; Mon,  7 Oct 2019 08:02:16 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 2224752160B;
 Mon,  7 Oct 2019 08:02:16 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 4A222521630;
 Mon,  7 Oct 2019 08:02:13 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 3/6] media: v4l2-mem2mem: add
 stateless_(try_)decoder_cmd ioctl helpers
Date: Mon, 07 Oct 2019 08:02:12 +0200
Message-ID: <2840939.OS9t7MgvnY@jernej-laptop>
In-Reply-To: <6c7eeaf1-18bb-1c7e-7938-a3eb5af100b6@xs4all.nl>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <20190929200023.215831-4-jernej.skrabec@siol.net>
 <6c7eeaf1-18bb-1c7e-7938-a3eb5af100b6@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 boris.brezillon@collabora.com, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne petek, 04. oktober 2019 ob 11:21:12 CEST je Hans Verkuil napisal(a):
> On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> > These helpers are used by stateless codecs when they support multiple
> > slices per frame and hold capture buffer flag is set. It's expected that
> > all such codecs will use this code.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/media/v4l2-core/v4l2-mem2mem.c | 35 ++++++++++++++++++++++++++
> >  include/media/v4l2-mem2mem.h           |  4 +++
> >  2 files changed, 39 insertions(+)
> > 
> > diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c
> > b/drivers/media/v4l2-core/v4l2-mem2mem.c index 19937dd3c6f6..2677a07e4c9b
> > 100644
> > --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> > +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> > @@ -1154,6 +1154,41 @@ int v4l2_m2m_ioctl_try_decoder_cmd(struct file
> > *file, void *fh,> 
> >  }
> >  EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_try_decoder_cmd);
> > 
> > +int v4l2_m2m_ioctl_stateless_try_decoder_cmd(struct file *file, void *fh,
> > +					     struct 
v4l2_decoder_cmd *dc)
> > +{
> > +	if (dc->cmd != V4L2_DEC_CMD_FLUSH)
> > +		return -EINVAL;
> > +
> > +	dc->flags = 0;
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_stateless_try_decoder_cmd);
> > +
> > +int v4l2_m2m_ioctl_stateless_decoder_cmd(struct file *file, void *priv,
> > +					 struct 
v4l2_decoder_cmd *dc)
> > +{
> > +	struct v4l2_fh *fh = file->private_data;
> > +	struct vb2_v4l2_buffer *out_vb, *cap_vb;
> > +	int ret;
> > +
> > +	ret = v4l2_m2m_ioctl_stateless_try_decoder_cmd(file, priv, dc);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	out_vb = v4l2_m2m_last_src_buf(fh->m2m_ctx);
> > +	cap_vb = v4l2_m2m_last_dst_buf(fh->m2m_ctx);
> 
> I think this should be v4l2_m2m_next_dst_buf. If multiple capture buffers
> were queued up, then it can only be the first capture buffer that can be
> 'HELD'.

I'm pretty sure v4l2_m2m_last_dst_buf() is correct. We want to affect last job 
in the queue, all jobs before are already properly handled by comparing 
timestamps.

> 
> This might solve the race condition you saw with ffmpeg.

This actually doesn't change anything. ffmpeg currently queues only one job and 
then waits until it's executed. In this case it actually doesn't matter if 
"last" or "next" variant is used.

Best regards,
Jernej

> 
> Regards,
> 
> 	Hans
> 
> > +
> > +	if (out_vb)
> > +		out_vb->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> > +	else if (cap_vb && cap_vb->is_held)
> > +		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_stateless_decoder_cmd);
> > +
> > 
> >  /*
> >  
> >   * v4l2_file_operations helpers. It is assumed here same lock is used
> >   * for the output and the capture buffer queue.
> > 
> > diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> > index c9fa96c8eed1..8ae2f56c7fa3 100644
> > --- a/include/media/v4l2-mem2mem.h
> > +++ b/include/media/v4l2-mem2mem.h
> > @@ -714,6 +714,10 @@ int v4l2_m2m_ioctl_try_encoder_cmd(struct file *file,
> > void *fh,> 
> >  				   struct v4l2_encoder_cmd *ec);
> >  
> >  int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
> >  
> >  				   struct v4l2_decoder_cmd *dc);
> > 
> > +int v4l2_m2m_ioctl_stateless_try_decoder_cmd(struct file *file, void *fh,
> > +					     struct 
v4l2_decoder_cmd *dc);
> > +int v4l2_m2m_ioctl_stateless_decoder_cmd(struct file *file, void *priv,
> > +					 struct 
v4l2_decoder_cmd *dc);
> > 
> >  int v4l2_m2m_fop_mmap(struct file *file, struct vm_area_struct *vma);
> >  __poll_t v4l2_m2m_fop_poll(struct file *file, poll_table *wait);




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
