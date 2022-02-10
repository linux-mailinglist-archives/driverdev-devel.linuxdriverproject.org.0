Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 226164B099F
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Feb 2022 10:35:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63FE7409AD;
	Thu, 10 Feb 2022 09:35:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3eEXtu3u_byJ; Thu, 10 Feb 2022 09:35:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 132F04099C;
	Thu, 10 Feb 2022 09:35:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B40911BF285
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 09:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC79240993
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 09:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iuatdZsEXCSv for <devel@linuxdriverproject.org>;
 Thu, 10 Feb 2022 09:34:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71A684094E
 for <devel@driverdev.osuosl.org>; Thu, 10 Feb 2022 09:34:57 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id i14so8371535wrc.10
 for <devel@driverdev.osuosl.org>; Thu, 10 Feb 2022 01:34:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:organization:in-reply-to:content-transfer-encoding;
 bh=G+YDDnr2slUFHsUM/IlbFGkS85HzAaIxJtVEmZjhqMI=;
 b=fFvqalnJA8sWVtzDVywLCenoPVSbM4BhkZK9XFrkh6Uhpi+h4y/LKiKPi0+ZpMMW/Z
 8oUWKgTy+/vB6iqVkziuScLT+kEEaPx4cW97cxs178WEC9/LpV1PbchEV0yhArLeUKei
 Mlqk8nmMSwVxPZPMdo7PhJzx9J9flAKp6V/antjKCI6D9JvcSZIa993aC67gdMa40vNi
 iKaOYZWoizEF4zUNkT7BdkzPJ0w9QQSZNiE4Tkh/yi1bZG8tc6HGVwyxPS8oH35Nuysb
 fBd++IIZ5lX81lBwDZ4ywBPbYiCD3/fndjabl0NGgG41OW1NKXnrFD1wVZveXOfhwjmg
 bMNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:organization:in-reply-to
 :content-transfer-encoding;
 bh=G+YDDnr2slUFHsUM/IlbFGkS85HzAaIxJtVEmZjhqMI=;
 b=XpTlUSYdu8hEW919USct6rqeiUoqasaej78rt7Ex4sXHJsMwDXdP4UGIg3VsRy7HsJ
 UP9PR0lusT9xxntuuhwnMTbLNR6WmEBbYzLsQSSJWpgSR5c0s+0pXJUm+H2cZIcE5WZX
 xzVUqs+6VQTNoW3Ml8W27K4qn5MDZdGafMEgpSfCTSMMlC3f8AWzuecmtEYEJTmIysCR
 kSFrpBeVUzAiTLwqBBhISEtyWzSCvTCHzjFP0vGkWomE3fgMKtiDG+YoXmcy8EFwVFR2
 QniuWkOn94wS//IqHUyc9XK52yaA3pJLwagtn68AfQH6cfIbHPJiE5thLucFEl+oGKUf
 GSAQ==
X-Gm-Message-State: AOAM530JTqHyIBljp8q0aJQIfnci0EqxKRMqv1f5vcNDQrTxjxtVmmLR
 q63Ub3p9jxOZwyDyGnoHlDH0UQ==
X-Google-Smtp-Source: ABdhPJxBmsNmtY10oYaIzh1QwOHqjXPf7ItHPImfVqE1FxspgN0H8jxhkM1pdM6mESt6dmgnlo306g==
X-Received: by 2002:a5d:4c85:: with SMTP id z5mr5695114wrs.225.1644485695484; 
 Thu, 10 Feb 2022 01:34:55 -0800 (PST)
Received: from ?IPV6:2001:861:44c0:66c0:76d9:bf0e:e516:58a9?
 ([2001:861:44c0:66c0:76d9:bf0e:e516:58a9])
 by smtp.gmail.com with ESMTPSA id x5sm9483363wrv.63.2022.02.10.01.34.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Feb 2022 01:34:54 -0800 (PST)
Message-ID: <640ef0b2-fcba-50a6-71c2-8156181682b0@baylibre.com>
Date: Thu, 10 Feb 2022 10:34:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] drivers: meson: vdec: add VP9 support to GXM
Content-Language: en-US
To: Christian Hewitt <christianshewitt@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220209153150.30688-1-christianshewitt@gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <20220209153150.30688-1-christianshewitt@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 09/02/2022 16:31, Christian Hewitt wrote:
> VP9 support for GXM appears to have been missed from the original
> codec submission [0] but it works well, so let's add support.
> 
> [0] https://github.com/torvalds/linux/commit/00c43088aa680989407b6afbda295f67b3f123f1
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
> Tested with LibreELEC 11 nightly 'AMLGX' dev images for Khadas VIM2
> and WeTek Core2 GXM devices which can be found here [1]. The images
> combine Linux 5.16.y [2] with Kodi v20 [3] and FFmpeg 4.4 [4] which
> notably includes many V4L2 refinements for stability and usability.
> 
> [1] https://test.libreelec.tv/
> [2] https://github.com/chewitt/linux/commits/amlogic-5.16.y
> [3] https://github.com/xbmc/xbmc/
> [4] https://github.com/jc-kynesim/rpi-ffmpeg/commits/dev/4.4/rpi_import_1
> 
>   drivers/staging/media/meson/vdec/vdec_platform.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/staging/media/meson/vdec/vdec_platform.c b/drivers/staging/media/meson/vdec/vdec_platform.c
> index eabbebab2da2..88c9d72e1c83 100644
> --- a/drivers/staging/media/meson/vdec/vdec_platform.c
> +++ b/drivers/staging/media/meson/vdec/vdec_platform.c
> @@ -103,6 +103,18 @@ static const struct amvdec_format vdec_formats_gxl[] = {
>   
>   static const struct amvdec_format vdec_formats_gxm[] = {
>   	{
> +		.pixfmt = V4L2_PIX_FMT_VP9,
> +		.min_buffers = 16,
> +		.max_buffers = 24,
> +		.max_width = 3840,
> +		.max_height = 2160,
> +		.vdec_ops = &vdec_hevc_ops,
> +		.codec_ops = &codec_vp9_ops,
> +		.firmware_path = "meson/vdec/gxl_vp9.bin",
> +		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, 0 },
> +		.flags = V4L2_FMT_FLAG_COMPRESSED |
> +			 V4L2_FMT_FLAG_DYN_RESOLUTION,
> +	}, {
>   		.pixfmt = V4L2_PIX_FMT_H264,
>   		.min_buffers = 2,
>   		.max_buffers = 24,


Acked-by: Neil Armstrong <narmstrong@baylibre.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
