Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F34136DF0
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 14:25:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9637686B3B;
	Fri, 10 Jan 2020 13:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VL5Tdv533Upg; Fri, 10 Jan 2020 13:25:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 994AF86B59;
	Fri, 10 Jan 2020 13:25:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 331031BF3C0
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 13:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 39A8C1FE2F
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 13:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nnJ9IZZPC3HY for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 13:25:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net
 [194.109.24.29])
 by silver.osuosl.org (Postfix) with ESMTPS id C080620C41
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 13:25:25 +0000 (UTC)
Received: from [IPv6:2001:420:44c1:2577:c967:e1d3:183a:b8ef]
 ([IPv6:2001:420:44c1:2577:c967:e1d3:183a:b8ef])
 by smtp-cloud8.xs4all.net with ESMTPA
 id puHrin9xDpLtbpuHuiQmSe; Fri, 10 Jan 2020 14:25:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1578662723; bh=I0b7s/xDqtbd60FacQFIRFFagV1Bh2XVzbaw6GJ8UFk=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=TTtT0/u+HRhWOQa06QDndrU0bUEOOnpgZ7+dEC97BkRPFIGB6+mexFpX5KgD0Ycg7
 yhQzvpBQhpk2DygTF4OkK7SbCzkIEdbt1VBG6UrD+kwFD6l10FwZudPsgW7v4eMGeL
 aYwHyNPBtNy6/lyBAFseDupjlwYKHL69gvkN/Cq4uYQTv02WDFPYe6/H3/nZ+1y+tA
 BALkMj/5GvNS1nAx0I4g/1Vkw1rgqgcm08uw2jwao9fUsMlB844kKhFq4HAFqE21zy
 nTRdmkh4N365san1LzaN8h2TVUGaY8Hytm1MaugFO+7c4Ri1RfYmfqNAU0fotrD5oM
 l7dFQzn+02NNg==
Subject: Re: [PATCH] staging/vc04_services/bcm2835-camera: distinct numeration
 and names for devices
To: Michael Kupfer <michael.kupfer@fau.de>, eric@anholt.net,
 wahrenst@gmx.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 mchehab+samsung@kernel.org, linux-media@vger.kernel.org
References: <20191206085432.19962-1-michael.kupfer@fau.de>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <3db2350b-0a6d-0693-258c-9d47f71c0627@xs4all.nl>
Date: Fri, 10 Jan 2020 14:25:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191206085432.19962-1-michael.kupfer@fau.de>
Content-Language: en-US
X-CMAE-Envelope: MS4wfBd3XXTXHJXsWfyVxCd2xYnZO0N8s/BDiJigBt9fBzOuvI1qg7Ov9vJHlQwwroeHfDptOn2x6LGe/NF17tiYIHe6IKGtbMu6lyUonjXvZHlMv8StSdIC
 KjYmD4yv2S6PG8353r9KVWVoWKnWpExFpS00SMNPq5IJsX0GyIHHf370xIlWiBo1uFBPJrF+j9ZsO01XP4FQMp1f6UC1jRrs61fg77hJ1wy4Zgliil7O9MiI
 pvMz1R6SFwWlhjOzw9WPqyNWo8SWxUYcyyfl2v53V+CvWgwJ5DZG7hUbdZP/qv+bKOk5xyhfl26PIEeuFIG6UMCgRYfGFOYgyV991fAuAVn2Dl9s1kexO+eh
 tpS7DuSgD76w957xPtmjizhbEK3EmsdZ+k/6hrHyjkRb3KLCufZaCXa92/oMKYXPD3EmQEqcCJAZFxvg1thOoX7sSWbv5i9/KTtAn+VIMvFR58Zn88QVT/xo
 D8/JfnqE8C4zdH9i2TrB90rHJKxmGPFc91KhbCbQaPjrg38xmbFqJcOEL/n/XHiROQtHdEhKeUmzL+4YZJ3WDWuvUhprcNE6aPBSeDmnpTKkpbqgiCwjsfFx
 d4HTR0D5GW2x8wmWayKH432z9lI6vqffHTdck7Vrvb7hTmdesfRvgriuI8o4dt6SQuT9nJC9rt7gedvyKw7nsxUw4ODfbr24oLSb/ZkIO0o5i9yK2ZpiaWaF
 8xfVbVb8KZVaxBQ4srQRGIc3bE4uizhm3PTr00SnN0xw9EXC01pJoNmd2cDfozvoMO3xwPWME7KAsoFn8WDu/XKTRBI2lN7SShrCVzRTZ7f9CEOO/08TtnON
 N1dWwwey5LGcCnce6F7Dp2Lmnl+Y2/FYR1WiEk3Ad5N+IsvZOD2DORmv4Xwh12IK0kVRpntnSOLvX7ZLyWK1VfnbCoGLBHMQA04SKM8L6IDC+76awJcUkbxl
 L/eY2w==
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 Kay Friedrich <kay.friedrich@fau.de>, sbranden@broadcom.com,
 linux-kernel@i4.cs.fau.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, daniela.mormocea@gmail.com,
 dave.stevenson@raspberrypi.org, rjui@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Michael, Kay,

On 12/6/19 9:54 AM, Michael Kupfer wrote:
> Create a static atomic counter for numerating cameras.
> Use the Media Subsystem Kernel Internal API to create distinct
> device-names, so that the camera-number (given by the counter)
> matches the camera-name.
> 
> Co-developed-by: Kay Friedrich <kay.friedrich@fau.de>
> Signed-off-by: Kay Friedrich <kay.friedrich@fau.de>
> Signed-off-by: Michael Kupfer <michael.kupfer@fau.de>
> ---
>  .../vc04_services/bcm2835-camera/bcm2835-camera.c        | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index beb6a0063bb8..be5f90a8b49d 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -60,6 +60,9 @@ MODULE_PARM_DESC(max_video_width, "Threshold for video mode");
>  module_param(max_video_height, int, 0644);
>  MODULE_PARM_DESC(max_video_height, "Threshold for video mode");
>  
> +/* camera instance counter */
> +static atomic_t camera_instance = ATOMIC_INIT(0);
> +
>  /* global device data array */
>  static struct bm2835_mmal_dev *gdev[MAX_BCM2835_CAMERAS];
>  
> @@ -1870,7 +1873,6 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
>  
>  		/* v4l2 core mutex used to protect all fops and v4l2 ioctls. */
>  		mutex_init(&dev->mutex);
> -		dev->camera_num = camera;
>  		dev->max_width = resolutions[camera][0];
>  		dev->max_height = resolutions[camera][1];
>  
> @@ -1886,8 +1888,9 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
>  		dev->capture.fmt = &formats[3]; /* JPEG */
>  
>  		/* v4l device registration */
> -		snprintf(dev->v4l2_dev.name, sizeof(dev->v4l2_dev.name),
> -			 "%s", BM2835_MMAL_MODULE_NAME);
> +		dev->camera_num = v4l2_device_set_name(&dev->v4l2_dev,
> +						       BM2835_MMAL_MODULE_NAME,
> +						       &camera_instance);
>  		ret = v4l2_device_register(NULL, &dev->v4l2_dev);
>  		if (ret) {
>  			dev_err(&pdev->dev, "%s: could not register V4L2 device: %d\n",
> 

Actually, in this specific case I would not use v4l2_device_set_name().

Instead just use:

		snprintf(dev->v4l2_dev.name, sizeof(dev->v4l2_dev.name),
			 "%s-%u", BM2835_MMAL_MODULE_NAME, camera);

It would be even better if there would be just one top-level v4l2_device used
for all the camera instances. After all, there really is just one platform
device for all of the cameras, and I would expect to see just a single
v4l2_device as well.

It doesn't hurt to have multiple v4l2_device structs, but it introduces a
slight memory overhead since one would have been sufficient.

v4l2_device_set_name() is meant for pci-like devices. And it really
is a bit overkill to have it as a helper function.

Regards,

	Hans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
