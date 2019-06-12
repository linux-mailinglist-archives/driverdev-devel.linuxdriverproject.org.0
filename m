Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA6C4215F
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 11:50:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F12CC860C1;
	Wed, 12 Jun 2019 09:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2jlF2LAkcGO8; Wed, 12 Jun 2019 09:50:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82971855CC;
	Wed, 12 Jun 2019 09:50:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DAD5C1BF29A
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 09:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D3F14855CC
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 09:50:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s3_TP7ntXEEi
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 09:50:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 956F8855CB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 09:50:19 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n4so16198034wrs.3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 02:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=ZJsTW+O05AROy+G1apR5WOZNSvDTqWHYGjlS075tzxY=;
 b=eizuwhiWUV3n6xSdHxd58HiKve+9u6jUiT/ljZXK5s3j/Ex/t6ffqk451rstA8sSd9
 o6UbfiQYP9wNyOBKN6anmcqEj3HmZ6RKxgLeSc2HFHg5rQMeMvZpy3Ul75NirVMZOe5j
 wk2PHVD2dzfIb1h5gols1sqIVsDDy1RhsKnh7PZCkoEqQC7oJgllo6Z4Kj5oNXPIwS/a
 4Ydwu5P1bbWc+/HD+X3pQl44TGbjFU55kGwlDzHbKpUdTxrjonLtQxQpzQe4salCr3KK
 6Gyf05YfxbLo5I9AlqHxCmX0SQDpq0QZxGHlic+lt/7WBI1PHuL+6MNd4k0IpXa9EZQ3
 YrrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=ZJsTW+O05AROy+G1apR5WOZNSvDTqWHYGjlS075tzxY=;
 b=br+ZzPjx6e/1TMC1rhvQD+BZWM1yrJ+Vf1wOblqdLGvNz0oxRIgIIAb+vyRdSOugKg
 xAi7ANaxhqoKPZGegNkfOv1nYCPtVqHbT3a/vau+pcFmEwbmDBNlWA5KiL0Fud+l3BSs
 L8IKW4GpymkScmKlXbmOupmUMf+8WOtLna6W9emm/pcQAPG9TxEi2BpktvfuPu9MWct8
 5OfgBAmXLXA8wChP6fvsGZja5a3YOGwlPmjf8JZ7gkjGVNdjhcM0HpxxPOJukTXUTxEY
 Cf5Rpbu3OixM+Mm2oZI/iKKAzJtZ/PsVV8k/+5qMSLigKhBwL5cVq3gLC7Wm7ku4LzN5
 lvQg==
X-Gm-Message-State: APjAAAV90ha4rijlFW30w8Oe77a9f7+RE7I7WpkeEQ80caHZfk+CS1SA
 fKtPrjUFI4WEVNOIjIFMPtq5sN1w8kA=
X-Google-Smtp-Source: APXvYqwstYueRUQK30b7+nKYXI4lqIsUtJkY3tMf0xUd4VogyyisAy9gS+ENqOj4a4S+hj2He2lugA==
X-Received: by 2002:adf:cf0e:: with SMTP id o14mr888526wrj.250.1560333018158; 
 Wed, 12 Jun 2019 02:50:18 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id s188sm7698462wmf.40.2019.06.12.02.50.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 02:50:17 -0700 (PDT)
References: <20190611150955.8038-1-rui.silva@linaro.org>
 <20190612074319.GE1915@kadam>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: driverdev-devel@linuxdriverproject.org
Subject: Re: [PATCH] media: imx7-media-csi: get csi upstream endpoint
In-reply-to: <20190612074319.GE1915@kadam>
Date: Wed, 12 Jun 2019 10:50:09 +0100
Message-ID: <m31rzzp1ym.fsf@gmail.com>
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
 Sebastien Szymanski <sebastien.szymanski@armadeus.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,
On Wed 12 Jun 2019 at 08:43, Dan Carpenter wrote:
> On Tue, Jun 11, 2019 at 04:09:55PM +0100, Rui Miguel Silva wrote:
>> When the upstream endpoint is neither a mux nor a CSI2 module, just get
>> the source pad directly upstream from the CSI.
>>
>> Fixes: 05f634040c0d ("media: staging/imx7: add imx7 CSI subdev driver")
>> Reported-by: Sebastien Szymanski <sebastien.szymanski@armadeus.com>
>> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
>> ---
>>  drivers/staging/media/imx/imx7-media-csi.c | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
>> index 9101566f3f67..8979ee0c8202 100644
>> --- a/drivers/staging/media/imx/imx7-media-csi.c
>> +++ b/drivers/staging/media/imx/imx7-media-csi.c
>> @@ -442,6 +442,14 @@ static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
>>
>>  	src = &csi->src_sd->entity;
>>
>> +	/*
>> +	 * if the source in neither a mux or csi2 get the one directly upstream
>                          ^^
> is?

yup.

>
>> +	 * from this csi
>> +	 */
>> +	if (src->function != MEDIA_ENT_F_VID_IF_BRIDGE &&
>> +		src->function != MEDIA_ENT_F_VID_MUX)
>> +		src = &csi->sd.entity;
>
> This would be easier to read if the white space were tweaked a little:
>
> 	if (src->function != MEDIA_ENT_F_VID_IF_BRIDGE &&
> 	    src->function != MEDIA_ENT_F_VID_MUX)
> 		src = &csi->sd.entity;

Agreed, Thanks for the feedback.

---
Cheers,
	Rui

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
