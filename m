Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED990134507
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jan 2020 15:31:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13C4E20525;
	Wed,  8 Jan 2020 14:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IP-zU-zOojtk; Wed,  8 Jan 2020 14:31:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DC3E020366;
	Wed,  8 Jan 2020 14:31:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F4981BF28A
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 14:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8BE6186141
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 14:31:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bf-uHAvps7oi for <devel@linuxdriverproject.org>;
 Wed,  8 Jan 2020 14:31:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9EAE285404
 for <devel@driverdev.osuosl.org>; Wed,  8 Jan 2020 14:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cNdj1XMavqHERd1iC1GAYe1krXO6lCtmsBqdFjLoV6M=; b=PbopclKfzaHTWMFWXvcjUw6nY
 J+aSr1Gq0dnWbRWG/b/BUdLz0FgWrxtH1Ky2Exq9dMwHsD1FihCk1yKNMrHYhS0KAUlMstssxS1S7
 bSeO8i98ugtMsFXZ5gyrnEUGecnRfG/RGaJP17soQOqp50h3X60C6m2PXIiqUjAU4exeelCJnJ9ix
 rjTQKpssdvimmIXCGSS5rV3wDyYZ2Ywgo73XxYp4kTs0kxILBBt99U8RXc2lDNHEFc1OTUEZhpVcO
 UNMHxDaXlUx3NcOqT2jYUGE7CdeCNl9+ApbyKdu+5OhSvep5nLjyKS9kVIId2oNVHl+PsuytLEtbt
 wt4BQ5lsA==;
Received: from 177.206.132.169.dynamic.adsl.gvt.net.br ([177.206.132.169]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCN2-0002Z1-Py; Wed, 08 Jan 2020 14:31:41 +0000
Date: Wed, 8 Jan 2020 15:31:26 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 3/4] media: uapi: hevc: Add segment address field
Message-ID: <20200108153126.49698491@kernel.org>
In-Reply-To: <20191213160428.54303-4-jernej.skrabec@siol.net>
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20191213160428.54303-4-jernej.skrabec@siol.net>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, hverkuil@xs4all.nl, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 13 Dec 2019 17:04:27 +0100
Jernej Skrabec <jernej.skrabec@siol.net> escreveu:

> If HEVC frame consists of multiple slices, segment address has to be
> known in order to properly decode it.
> 
> Add segment address field to slice parameters.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  Documentation/media/uapi/v4l/ext-ctrls-codec.rst | 5 ++++-
>  include/media/hevc-ctrls.h                       | 5 ++++-
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> index aab1451e54d4..5415d5babcc2 100644
> --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> @@ -3975,6 +3975,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      * - __u32
>        - ``data_bit_offset``
>        - Offset (in bits) to the video data in the current slice data.
> +    * - __u32
> +      - ``slice_segment_addr``
> +      -
>      * - __u8
>        - ``nal_unit_type``
>        -
> @@ -4052,7 +4055,7 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>        - ``num_rps_poc_lt_curr``
>        - The number of reference pictures in the long-term set.
>      * - __u8
> -      - ``padding[7]``
> +      - ``padding[5]``
>        - Applications and drivers must set this to zero.
>      * - struct :c:type:`v4l2_hevc_dpb_entry`
>        - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 1592e52c3614..3e2e32098312 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -167,6 +167,9 @@ struct v4l2_ctrl_hevc_slice_params {
>  	__u32	bit_size;
>  	__u32	data_bit_offset;
>  
> +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
> +	__u32	slice_segment_addr;
> +

Why are you adding it in the middle of the data? This will break any 
existing userspace code that might be relying on it.

Ok, I know that this header is not yet under include/uapi,and there's a
warning on it for letting people know that it shouldn't be used anywhere.

Still, people might be using it.

>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
>  	__u8	nal_unit_type;
>  	__u8	nuh_temporal_id_plus1;
> @@ -200,7 +203,7 @@ struct v4l2_ctrl_hevc_slice_params {
>  	__u8	num_rps_poc_st_curr_after;
>  	__u8	num_rps_poc_lt_curr;
>  
> -	__u8	padding;
> +	__u8	padding[5];
>  
>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
>  	struct v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];




Cheers,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
