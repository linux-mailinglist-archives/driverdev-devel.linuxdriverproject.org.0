Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EADFB2F09A3
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Jan 2021 21:11:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8FF98675C;
	Sun, 10 Jan 2021 20:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mo-fvGY-5ODh; Sun, 10 Jan 2021 20:11:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFD738673B;
	Sun, 10 Jan 2021 20:11:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0D761BF44A
 for <devel@linuxdriverproject.org>; Sun, 10 Jan 2021 20:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AD1358673B
 for <devel@linuxdriverproject.org>; Sun, 10 Jan 2021 20:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WxooNtVtQVSE for <devel@linuxdriverproject.org>;
 Sun, 10 Jan 2021 20:11:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AE1908673F
 for <devel@driverdev.osuosl.org>; Sun, 10 Jan 2021 20:11:37 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id c5so14300552wrp.6
 for <devel@driverdev.osuosl.org>; Sun, 10 Jan 2021 12:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=vzqtQyMRq4VCQF1VUb0eyXg1Bg4nfSL5atIamSsB9uc=;
 b=x6LH5YZ4oO5+9nfetywRMADEwS3U7bawPknEEexOvy+CexY+QJbashKsVPIyMqwMgC
 6R0692/OaofsGMM5qHr6+WI/ZCm3momWjYGvNoN9NvQqwdr+PyBNw3LTHxkdG94s7t8e
 8MqkEXp7kKTOediovoBQTwS8bw/tKTe8PbeSiy3qXVDf19YE0Y8kE1Wz3RxdVGH7HsK0
 83Qql7RuMHUInzaieaPxgPzrSqTji74SfwGSiGngmIZ7Z4jJkPo5QeQHTh7xWRRuy+ul
 QYc/haAKWm78z9SqOxtVuybYYoMUMIcwwCma6k81FHNUtMSfN2ITDTm9NBnf7rynJs36
 VFsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vzqtQyMRq4VCQF1VUb0eyXg1Bg4nfSL5atIamSsB9uc=;
 b=rsLi/OvRybXv6Ut1we/kQb+fAvylMx1RDqDD+AijrlEWRKJ1DTHXTADMcehzELei+J
 Q20CoVvqEfHjW6GNnh83uZmNTjyyRfJBEEz6sow4B45jlzsMQZ2UzsFmTOPeqEOMoNjG
 Snno/GCoihWm/qc+dfX0lgWeFicmK/ivRRt4wFU4Dq9HVJ7X/Ao8OeIytMW2dEgRKMP4
 Ss3f9TfXhIUMpOmqS5tor3q3PMRmandKTcODGhesI0enTVJlLeOirHPPNlRuzCvyI982
 8jHmiVZNb3I2pR+29Q1pJ4t4OaOm2u7y+uGShjDB8Z8KSqQYMA8kywl3iA2HnDxPTNwE
 Pogg==
X-Gm-Message-State: AOAM531DDqaEJ3hACXJC3NNIkMAxJS+QABdy9MRhXA8HMn89v5+RbFKb
 Fh4ruTtZ9sYOWj1PQ1ImwxuJjA==
X-Google-Smtp-Source: ABdhPJz5Dfz18y8QFO6GGNqOBNMf1RBCsaBQ6rZSVsoyLzkwP4MPg+sEKPlH4sybqmqVaN00KS42qg==
X-Received: by 2002:a05:6000:100f:: with SMTP id
 a15mr13320174wrx.300.1610309496048; 
 Sun, 10 Jan 2021 12:11:36 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id h3sm19805291wmm.4.2021.01.10.12.11.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 Jan 2021 12:11:35 -0800 (PST)
Date: Sun, 10 Jan 2021 21:11:33 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: Re: [PATCH v2 -next] media: zoran: convert comma to semicolon
Message-ID: <X/tfdbVP5R2dzMuv@Red>
References: <20210108092119.18642-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108092119.18642-1-zhengyongjun3@huawei.com>
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
 linux-kernel@vger.kernel.org, mjpeg-users@lists.sourceforge.net,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Le Fri, Jan 08, 2021 at 05:21:19PM +0800, Zheng Yongjun a =E9crit :
> Replace a comma between expression statements by a semicolon.
> =

> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  drivers/staging/media/zoran/zoran_driver.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging=
/media/zoran/zoran_driver.c
> index 808196ea5b81..d60b4c73ea80 100644
> --- a/drivers/staging/media/zoran/zoran_driver.c
> +++ b/drivers/staging/media/zoran/zoran_driver.c
> @@ -1020,7 +1020,7 @@ int zoran_queue_init(struct zoran *zr, struct vb2_q=
ueue *vq)
>  	vq->buf_struct_size =3D sizeof(struct zr_buffer);
>  	vq->ops =3D &zr_video_qops;
>  	vq->mem_ops =3D &vb2_dma_contig_memops;
> -	vq->gfp_flags =3D GFP_DMA32,
> +	vq->gfp_flags =3D GFP_DMA32;
>  	vq->timestamp_flags =3D V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
>  	vq->min_buffers_needed =3D 9;
>  	vq->lock =3D &zr->lock;
> -- =

> 2.22.0
> =


Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
