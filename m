Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1A0B6B2
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Apr 2019 22:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8466B85CEC;
	Sun, 28 Apr 2019 20:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yji-w6NPRdcJ; Sun, 28 Apr 2019 20:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4852D8550D;
	Sun, 28 Apr 2019 20:35:49 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D92E1BF2F5
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 28 Apr 2019 20:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 49D7885374
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 28 Apr 2019 20:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PRER1gXbodyi
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 28 Apr 2019 20:35:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4058885310
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 28 Apr 2019 20:35:46 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id n25so12548605wmk.4
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 28 Apr 2019 13:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=IZAy47XcoSM8oaf+24nONRYgmpJ1wMLHcNESne/0ILE=;
 b=BroiY2sHfoh63xVR0xXA5FXbM+VHAv1rv4LsbOwztaw9UfMhfLyeXOlbSaHyKuEg3k
 XV1Co4muhFvyu6AOZPktVSecY55Td+EDeBTF+CWw83W11mmeAX45FOEHpyjxXGC/dybh
 DEIs4chJOLQkE1zLYhBwbsN56bT1rmrwXEz7grVuxTAtOQJw1Oq3PD/Nn+y92/UrnlFQ
 NlWcxlr9o6DAuvezVY5EQmCSS1fhMcZpzuSDDxB2giJ9OQZIytDUZedM0w7z7LvqlIVU
 tTmMTvruGpltiUUT0LDMgn+yJV0o1UAvVjErnA8ZjZUQ5qPMIYmBE/RZwaOBCB7HBDZ5
 CPAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=IZAy47XcoSM8oaf+24nONRYgmpJ1wMLHcNESne/0ILE=;
 b=lQbGtmMWQIneQCzKfYNcWvuRwyXzzFkE2xaIONZ3iWKf9IcJ8IzrpyiYvHLAL50oSO
 NlVO4lAjTZSGaBjKaZllRQjeMjO+RnC1pl1lNIdO2it5WOyg0I91sN58o/HxRyWFtNqc
 y44t4IYou/UKevYTFVgDV1FDukCoB9ojOFASCbpBSj4MWlfmWJY1y72kILZz8FFx7Jfq
 35iW4iaPa42d6oEUSY7AHuT8jKcvX9E3LTRJbYpBsF/Uc6N2xMua8vk9wtcZ2+4LxU3J
 B+hbBFaLxYC1EArFq/rHFK/An8eSPhFdsQ5e6xbi4nNBJwAdb4hruBPMsL1WYrk5aSWI
 iEhw==
X-Gm-Message-State: APjAAAWS1IOd2SyFFHtWdYIa1B4QdZfuhHjni5BF1tjarfL8endHVhO4
 fSF+CtW7zGPOsWT/FVkIVCI=
X-Google-Smtp-Source: APXvYqzIJ5IbEB6QgZ35qPVMUP+lOzBHASkLpXOrREvmF5t+xGKUFobpaLc0Fmm5yCDeE3X7L7yC1g==
X-Received: by 2002:a1c:4d1a:: with SMTP id o26mr2423373wmh.133.1556483744571; 
 Sun, 28 Apr 2019 13:35:44 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id e7sm28046130wme.37.2019.04.28.13.35.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:35:43 -0700 (PDT)
References: <20190412164400.1270-1-rui.silva@linaro.org>
 <a375ed17-72e3-21d7-59c1-60b1fbe4b166@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: driverdev-devel@linuxdriverproject.org
Subject: Re: [PATCH] media: staging/imx: add media device to capture register
In-reply-to: <a375ed17-72e3-21d7-59c1-60b1fbe4b166@gmail.com>
Date: Sun, 28 Apr 2019 21:35:42 +0100
Message-ID: <m3wojdx3z5.fsf@gmail.com>
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, devel@driverdev.osuosl.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Steve,
On Sun 28 Apr 2019 at 19:53, Steve Longerbeam wrote:
> Hi Rui,
>
> On second thought, there is no reason to pass the media device to 
> imx_media_capture_device_register(), because it is already available via 
> v4l2_dev->mdev. I will be posting a patch in v2 of the "Switch to sync 
> registration for IPU subdevs" series that fixes this.

That make sense to me. I've already took a look to v2 and I like
the ideas in there, I will give it a proper test and review
tomorrow. Will send feedback afterwards.

Thanks so much for your work on this.

---
Cheers,
	Rui

>
> Steve
>
>
> On 4/12/19 9:44 AM, Rui Miguel Silva wrote:
>> When register the capture media device it is assumed that the device
>> data is the media device. In the imx6 case is but in the imx7 is not
>> case. The device data is the csi structure.
>>
>> Add the explicit argument of the media device that we want to
>> associate with the capture device.
>>
>> Reported-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
>> ---
>>   drivers/staging/media/imx/imx-ic-prpencvf.c   | 2 +-
>>   drivers/staging/media/imx/imx-media-capture.c | 6 +++---
>>   drivers/staging/media/imx/imx-media-csi.c     | 2 +-
>>   drivers/staging/media/imx/imx-media.h         | 3 ++-
>>   drivers/staging/media/imx/imx7-media-csi.c    | 2 +-
>>   5 files changed, 8 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
>> index 5c8e6ad8c025..3ca1422f6154 100644
>> --- a/drivers/staging/media/imx/imx-ic-prpencvf.c
>> +++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
>> @@ -1270,7 +1270,7 @@ static int prp_registered(struct v4l2_subdev *sd)
>>   	if (ret)
>>   		return ret;
>>   
>> -	ret = imx_media_capture_device_register(priv->vdev);
>> +	ret = imx_media_capture_device_register(priv->md, priv->vdev);
>>   	if (ret)
>>   		return ret;
>>   
>> diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
>> index 9703c85b19c4..7688238a3396 100644
>> --- a/drivers/staging/media/imx/imx-media-capture.c
>> +++ b/drivers/staging/media/imx/imx-media-capture.c
>> @@ -706,7 +706,8 @@ void imx_media_capture_device_error(struct imx_media_video_dev *vdev)
>>   }
>>   EXPORT_SYMBOL_GPL(imx_media_capture_device_error);
>>   
>> -int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
>> +int imx_media_capture_device_register(struct imx_media_dev *md,
>> +				      struct imx_media_video_dev *vdev)
>>   {
>>   	struct capture_priv *priv = to_capture_priv(vdev);
>>   	struct v4l2_subdev *sd = priv->src_sd;
>> @@ -715,8 +716,7 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
>>   	struct v4l2_subdev_format fmt_src;
>>   	int ret;
>>   
>> -	/* get media device */
>> -	priv->md = dev_get_drvdata(sd->v4l2_dev->dev);
>> +	priv->md = md;
>>   
>>   	vfd->v4l2_dev = sd->v4l2_dev;
>>   
>> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
>> index 3b7517348666..3408ec023d29 100644
>> --- a/drivers/staging/media/imx/imx-media-csi.c
>> +++ b/drivers/staging/media/imx/imx-media-csi.c
>> @@ -1806,7 +1806,7 @@ static int csi_registered(struct v4l2_subdev *sd)
>>   	if (ret)
>>   		goto free_fim;
>>   
>> -	ret = imx_media_capture_device_register(priv->vdev);
>> +	ret = imx_media_capture_device_register(priv->md, priv->vdev);
>>   	if (ret)
>>   		goto free_fim;
>>   
>> diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
>> index ae964c8d5be1..c3a8512bd10f 100644
>> --- a/drivers/staging/media/imx/imx-media.h
>> +++ b/drivers/staging/media/imx/imx-media.h
>> @@ -271,7 +271,8 @@ int imx_media_of_add_csi(struct imx_media_dev *imxmd,
>>   struct imx_media_video_dev *
>>   imx_media_capture_device_init(struct v4l2_subdev *src_sd, int pad);
>>   void imx_media_capture_device_remove(struct imx_media_video_dev *vdev);
>> -int imx_media_capture_device_register(struct imx_media_video_dev *vdev);
>> +int imx_media_capture_device_register(struct imx_media_dev *md,
>> +				       struct imx_media_video_dev *vdev);
>>   void imx_media_capture_device_unregister(struct imx_media_video_dev *vdev);
>>   struct imx_media_buffer *
>>   imx_media_capture_device_next_buf(struct imx_media_video_dev *vdev);
>> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
>> index 3fba7c27c0ec..a907c5feb3eb 100644
>> --- a/drivers/staging/media/imx/imx7-media-csi.c
>> +++ b/drivers/staging/media/imx/imx7-media-csi.c
>> @@ -1124,7 +1124,7 @@ static int imx7_csi_registered(struct v4l2_subdev *sd)
>>   	if (ret < 0)
>>   		return ret;
>>   
>> -	ret = imx_media_capture_device_register(csi->vdev);
>> +	ret = imx_media_capture_device_register(csi->imxmd, csi->vdev);
>>   	if (ret < 0)
>>   		return ret;
>>   
>
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
