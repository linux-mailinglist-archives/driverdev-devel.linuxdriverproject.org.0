Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353AE1344B8
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jan 2020 15:12:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A48D861E6;
	Wed,  8 Jan 2020 14:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vJy0LKZEZNhU; Wed,  8 Jan 2020 14:12:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD41B85459;
	Wed,  8 Jan 2020 14:12:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D4F91BF28A
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 14:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 592C9204D8
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 14:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VZEF3bm6QM96 for <devel@linuxdriverproject.org>;
 Wed,  8 Jan 2020 14:12:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id E3C872045F
 for <devel@driverdev.osuosl.org>; Wed,  8 Jan 2020 14:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fr9fRlz5jxrgjkeY4j9Bve4Yqtw4Ip+E2iegvsEk9jk=; b=PBzy4YDRvknqyOdLQyAz3OMtm
 VKkkh+lcwJHiQz+AfDbo+JFL3kwsaJHo0GP4eQ8xuTmZMbnDEP1UIVlsYdY9sYN3rs+1rf0xxZbiZ
 uX3ZrF1B8p/4OBrNzTU8JIOyEnxcyNQP+IfxRWacyHfRad6gde1Zo/Gpf56CeHm/wldNEzh8Hmso0
 XfCRsmv1Lov+rld2P3P20MUTPD68Xk90QyZS3/2/tyX9XLhmtQHR77JFpnkYnsibTNaOFMihoeAqR
 zQ51DvLE3lb5zfsz3bVNcIcFgF2uu/bE/q82ktdyTec8YZnpCyVysC1o0iBO3Wtj9V4iO+U8ERZq8
 3wHU2WqDw==;
Received: from 177.206.132.169.dynamic.adsl.gvt.net.br ([177.206.132.169]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipC4B-0002T4-CD; Wed, 08 Jan 2020 14:12:12 +0000
Date: Wed, 8 Jan 2020 15:11:57 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 1/4] media: uapi: hevc: Add scaling matrix control
Message-ID: <20200108151157.17cf9774@kernel.org>
In-Reply-To: <20191213160428.54303-2-jernej.skrabec@siol.net>
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20191213160428.54303-2-jernej.skrabec@siol.net>
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

Em Fri, 13 Dec 2019 17:04:25 +0100
Jernej Skrabec <jernej.skrabec@siol.net> escreveu:

> HEVC has a scaling matrix concept. Add support for it.

> +struct v4l2_ctrl_hevc_scaling_matrix {
> +	__u8	scaling_list_4x4[6][16];
> +	__u8	scaling_list_8x8[6][64];
> +	__u8	scaling_list_16x16[6][64];
> +	__u8	scaling_list_32x32[2][64];
> +	__u8	scaling_list_dc_coef_16x16[6];
> +	__u8	scaling_list_dc_coef_32x32[2];
> +};

I never looked at HEVC spec, but the above seems really weird.

Please correct me if I am wrong, but each of the above matrixes
is independent, and the driver will use just one of the above on
any specific time (for a given video output node), right?

If so, why would userspace be forced to update lots of matrixes, if would
likely use just one at a given time?

IMO, the proper way would be, instead, to use an uAPI like:

/*
 * Actually, as this is uAPI, we will use a fixed size integer type, like
 *  unsigned int
 */
enum hevc_scaling_matrix_type {
	HEVC_SCALING_MATRIX_4x4,
	HEVC_SCALING_MATRIX_8x8,
...
	HEVC_SCALING_MATRIX_DC_COEF_32x32,
};

struct v4l2_ctrl_hevc_scaling_matrix {
	__u32	scaling_type 		/* as defined by enum hevc_scaling_matrix_type */

	union {
		__u8	scaling_list_4x4[6][16];
		__u8	scaling_list_8x8[6][64];
		__u8	scaling_list_16x16[6][64];
		__u8	scaling_list_32x32[2][64];
		__u8	scaling_list_dc_coef_16x16[6];
		__u8	scaling_list_dc_coef_32x32[2];
	};
};

And let the core use a default for each scaling matrix, if userspace doesn't
set it.



Cheers,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
