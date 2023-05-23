Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65F770DB93
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 May 2023 13:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D396140503;
	Tue, 23 May 2023 11:38:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D396140503
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b7xoQ98BXR6l; Tue, 23 May 2023 11:38:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0ABD4417B4;
	Tue, 23 May 2023 11:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ABD4417B4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5AE371BF37B
 for <devel@linuxdriverproject.org>; Tue, 23 May 2023 11:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 39FC941E2E
 for <devel@linuxdriverproject.org>; Tue, 23 May 2023 11:37:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39FC941E2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xKiNhn37B7Dh for <devel@linuxdriverproject.org>;
 Tue, 23 May 2023 11:37:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDD7841E9A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDD7841E9A
 for <devel@driverdev.osuosl.org>; Tue, 23 May 2023 11:37:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7E48E6316F;
 Tue, 23 May 2023 11:36:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7CE1C433EF;
 Tue, 23 May 2023 11:36:52 +0000 (UTC)
Message-ID: <e8f8fc26-1853-d8ab-bc1b-a8cc2474bb6f@xs4all.nl>
Date: Tue, 23 May 2023 13:36:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] staging: media: usbvision: Remove comparision to NULL
Content-Language: en-US
To: Anup Sharma <anupnewsmail@gmail.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org
References: <ZFBh54sbwiRFKyG+@yoga>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <ZFBh54sbwiRFKyG+@yoga>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Anup,

On 02/05/2023 03:05, Anup Sharma wrote:
> Remove comparison to null in file usbvision-core.c and usbvision-i2c.c.
> 
> Signed-off-by: Anup Sharma <anupnewsmail@gmail.com>
> ---
>  drivers/staging/media/usbvision/usbvision-core.c | 8 ++++----
>  drivers/staging/media/usbvision/usbvision-i2c.c  | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)

The usbvision driver has been removed almost 2 years ago, so this patch is for
a really old kernel.

Rather odd, but in any case, I'm rejecting this patch for obvious reasons...

Regards,

	Hans

> 
> diff --git a/drivers/staging/media/usbvision/usbvision-core.c b/drivers/staging/media/usbvision/usbvision-core.c
> index e35dee35b068..a38104b2a0f9 100644
> --- a/drivers/staging/media/usbvision/usbvision-core.c
> +++ b/drivers/staging/media/usbvision/usbvision-core.c
> @@ -349,7 +349,7 @@ int usbvision_scratch_alloc(struct usb_usbvision *usbvision)
>  {
>  	usbvision->scratch = vmalloc_32(scratch_buf_size);
>  	scratch_reset(usbvision);
> -	if (usbvision->scratch == NULL) {
> +	if (!usbvision->scratch) {
>  		dev_err(&usbvision->dev->dev,
>  			"%s: unable to allocate %d bytes for scratch\n",
>  				__func__, scratch_buf_size);
> @@ -374,7 +374,7 @@ int usbvision_decompress_alloc(struct usb_usbvision *usbvision)
>  	int IFB_size = MAX_FRAME_WIDTH * MAX_FRAME_HEIGHT * 3 / 2;
>  
>  	usbvision->intra_frame_buffer = vmalloc_32(IFB_size);
> -	if (usbvision->intra_frame_buffer == NULL) {
> +	if (!usbvision->intra_frame_buffer) {
>  		dev_err(&usbvision->dev->dev,
>  			"%s: unable to allocate %d for compr. frame buffer\n",
>  				__func__, IFB_size);
> @@ -2284,7 +2284,7 @@ int usbvision_init_isoc(struct usb_usbvision *usbvision)
>  		struct urb *urb;
>  
>  		urb = usb_alloc_urb(USBVISION_URB_FRAMES, GFP_KERNEL);
> -		if (urb == NULL)
> +		if (!urb)
>  			return -ENOMEM;
>  		usbvision->sbuf[buf_idx].urb = urb;
>  		usbvision->sbuf[buf_idx].data =
> @@ -2343,7 +2343,7 @@ void usbvision_stop_isoc(struct usb_usbvision *usbvision)
>  	int buf_idx, err_code, reg_value;
>  	int sb_size = USBVISION_URB_FRAMES * usbvision->isoc_packet_size;
>  
> -	if ((usbvision->streaming == stream_off) || (usbvision->dev == NULL))
> +	if ((usbvision->streaming == stream_off) || (!usbvision->dev))
>  		return;
>  
>  	/* Unschedule all of the iso td's */
> diff --git a/drivers/staging/media/usbvision/usbvision-i2c.c b/drivers/staging/media/usbvision/usbvision-i2c.c
> index 6e4df3335b1b..3bba93293463 100644
> --- a/drivers/staging/media/usbvision/usbvision-i2c.c
> +++ b/drivers/staging/media/usbvision/usbvision-i2c.c
> @@ -233,7 +233,7 @@ int usbvision_i2c_register(struct usb_usbvision *usbvision)
>  				&usbvision->i2c_adap,
>  				"tuner", 0, v4l2_i2c_tuner_addrs(type));
>  
> -		if (sd == NULL)
> +		if (!sd)
>  			return -ENODEV;
>  		if (usbvision->tuner_type != -1) {
>  			tun_setup.mode_mask = T_ANALOG_TV | T_RADIO;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
