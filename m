Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D0CA52F7
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 11:39:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46B1A87C76;
	Mon,  2 Sep 2019 09:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qzGCADPUE7N3; Mon,  2 Sep 2019 09:39:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A454D87C41;
	Mon,  2 Sep 2019 09:39:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1928F1BF23C
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 09:39:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0FCEA81278
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 09:39:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9DZk5YJdr0n for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 09:39:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 49E3581234
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 09:39:04 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id k1so13784508wmi.1
 for <devel@driverdev.osuosl.org>; Mon, 02 Sep 2019 02:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=TuI9rd12MfxFCijDCnxps6RQxMfXZ9+gpL/KNKqGJec=;
 b=MvNFZ1/jbfE4vo5KXjxBEUkydGqOUTy8/La+RmqGYg5z2JPMO4Qd0g2/1gppakerEf
 R+9Sj7AHvlz/9wAfHYLgtAfERiRSR9JjQa7RSa0vIohbKMR7hJPH87Bgf/jVqZ8nCo2a
 l71eHN00Xhi7Dnp4J/12HU59pZXlaoSB6fYGx6pWRC6n+SU6CM82+HEnH4AVywthNWtI
 zG6kcdf3TtKfKoFTLPdQ8PY/9oi24mzPlTBu1oytWaJG7bv8p7JTIL2cXqRivwJuRva4
 FfZdqgg24TrobN/IjD4hgTjIitilPnkaWpFgJGp7C1epJ8tFPCy0C2MvvdFI4kMzRgnK
 stkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=TuI9rd12MfxFCijDCnxps6RQxMfXZ9+gpL/KNKqGJec=;
 b=siutWjIXQ9jUVCo80NiwcFTGGOaPs6ZXKcHB4BWZUj29yx2gryv0qiL0ffeYxt/C8w
 Mn2RmYdydaMz3VWF8cBCohod1zC7xtvVPkNbTQnH09QjKBS8OzCQWvvHcNjJF20HYAqb
 ilnsrvt7bdMRtcrBpwNnOFp3IgTmikyKiO7uyRXjMMKOlsmehOHNuJmVJiTTbyXEQwUP
 hYF8ozGzbFdktlPcdx4AcWv95XYy3OrMQwVle4M+UdUezj1dH+ZYsEqNHOm78N+KeFC/
 IRpHMq3jEIeAiMrosTfNgk5Cg4cOvFcQtr8eE6OAyaO1ieX3egW/3Mm6o5+SbqxUOm8F
 ae7g==
X-Gm-Message-State: APjAAAXgtJ5uEGc1IJrOEj5ys+DZMXs29MqL7y7kl0wn/iRB0mkZqcd1
 Uw22fh2HeR+dksfE7hsBbCc=
X-Google-Smtp-Source: APXvYqxLMl9twPuZRaBPGCt6IQrTMUDpWGDiRa+m+TO/WYNNG1GFTxiKSkMi81n2v/MwR6YMiUQ8ZQ==
X-Received: by 2002:a1c:c909:: with SMTP id f9mr35144152wmb.52.1567417142665; 
 Mon, 02 Sep 2019 02:39:02 -0700 (PDT)
Received: from arch-late (87-196-73-69.net.novis.pt. [87.196.73.69])
 by smtp.gmail.com with ESMTPSA id t123sm14100440wma.40.2019.09.02.02.39.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 02:39:01 -0700 (PDT)
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-16-slongerbeam@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH 15/22] media: imx7-media-csi: Create media links in bound
 notifier
In-reply-to: <20190805233505.21167-16-slongerbeam@gmail.com>
Date: Mon, 02 Sep 2019 10:38:59 +0100
Message-ID: <m3blw35970.fsf@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Steve,
On Tue 06 Aug 2019 at 00:34, Steve Longerbeam wrote:
> Implement a notifier bound op to register media links from the remote
> sub-device's source pad(s) to the CSI sink pad.
>
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> ---
>  drivers/staging/media/imx/imx7-media-csi.c | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
> index a1c96c52a606..f71ac485f780 100644
> --- a/drivers/staging/media/imx/imx7-media-csi.c
> +++ b/drivers/staging/media/imx/imx7-media-csi.c
> @@ -196,6 +196,11 @@ struct imx7_csi {
>  	struct completion last_eof_completion;
>  };
>
> +static inline struct imx7_csi *notifier_to_dev(struct v4l2_async_notifier *n)
>

As the other one add the namespace for the function name:
imx7_csi_notifier_to_dev

other than this, looks good to me.

Cheers,
  Rui
> +{
> +	return container_of(n, struct imx7_csi, notifier);
> +}
> +
>  static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
>  {
>  	return readl(csi->regbase + offset);
> @@ -1173,6 +1178,23 @@ static int imx7_csi_parse_endpoint(struct device *dev,
>  	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
>  }
>
> +static int imx7_csi_notify_bound(struct v4l2_async_notifier *notifier,
> +				 struct v4l2_subdev *sd,
> +				 struct v4l2_async_subdev *asd)
> +{
> +	struct imx7_csi *csi = notifier_to_dev(notifier);
> +	struct media_pad *sink = &csi->sd.entity.pads[IMX7_CSI_PAD_SINK];
> +
> +	return media_create_fwnode_pad_links(sink,
> +					     dev_fwnode(csi->sd.dev),
> +					     &sd->entity,
> +					     dev_fwnode(sd->dev), 0);
> +}
> +
> +static const struct v4l2_async_notifier_operations imx7_csi_notify_ops = {
> +	.bound = imx7_csi_notify_bound,
> +};
> +
>  static int imx7_csi_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -1253,6 +1275,8 @@ static int imx7_csi_probe(struct platform_device *pdev)
>
>  	v4l2_async_notifier_init(&csi->notifier);
>
> +	csi->notifier.ops = &imx7_csi_notify_ops;
> +
>  	ret = v4l2_async_register_fwnode_subdev(&csi->sd, &csi->notifier,
>  						sizeof(struct v4l2_async_subdev),
>  						NULL, 0,

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
