Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F30F230D00
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 17:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD69622888;
	Tue, 28 Jul 2020 15:06:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6qahCV4X8P1k; Tue, 28 Jul 2020 15:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A11572275A;
	Tue, 28 Jul 2020 15:05:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57C031BF573
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 15:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4C56322624
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 15:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fETN2yZ1+QFM for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 15:05:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net
 [194.109.24.26])
 by silver.osuosl.org (Postfix) with ESMTPS id EA97920432
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 15:05:52 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id 0RApktChPuuXO0RAqkIwdS; Tue, 28 Jul 2020 17:05:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1595948750; bh=s/8wU/OYnn+1yy+ZDpmsRLIrFFZsNbp4nosqe4mg8fA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=ZzV4fX9x4cg4ZWISJqFrnv3589i4yZjtg/3bSj08TrpZF+rpfTnmKNEkPFcSPz67M
 i7yABAueUm5R+qekUWVi4P2pgR0mM3e6C1IGpjKmUFxWcDBLYNFNf3woFYflbzVrg5
 Hf98FxjVuCNs90J0bmooLROTrqtJmIYCabmtRgkMLFCaZolovyo9nlSDGaRr+SdI1p
 wixST7LAtzuwzP1RdtQuKMZB19oRYprd9bAcbqIu5cgxPNqO54ohWRnRAMSNsKYNFo
 G6DfZJP+ins23RLU+1iKmMnH9YQRmv0qIFzt4hXzO4oMCRBv9j3/yg3DDF1a2N1Vng
 gQlffU6CF4AsQ==
Subject: Re: [PATCH] media: usbvision: fixed coding style
To: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>, gregkh@linuxfoundation.org,
 stern@rowland.harvard.edu, arnd@arndb.de, jrdr.linux@gmail.com
References: <20200728143004.3228-1-dhiraj.sharma0024@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <b357f49c-0ce6-18f5-9f3c-fdead5e4c838@xs4all.nl>
Date: Tue, 28 Jul 2020 17:05:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200728143004.3228-1-dhiraj.sharma0024@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfPBZPluvQ8h8v68YkawN5APFdn6ltE1s1f3lLRaceNQF+l8Ir/9EdEgCYWSRfY/HGA6nlYSmDG/UC4+pv0ldQXivqP/QiyXeZk77ZOGK06m18sCjmMCJ
 /H1/m5RmdXYCXuoNkOGDKbozUJvnrLcaHYX3946C29OUVmxOoFhrZRmTz+kqCMeThfxxCQR8ZMf0Q3qKslOEyn8VoN7z9KBal/KaxrksfgSIpCDoHKa3h22y
 8Ysggdzj1oYNvuMbtNwSmPTBjjfEtNLhkS8i9fddfNtphnmTkfAAqnl+NklYZLly3JZKJWpiEoh365C7HcOpvbgdlcWsfBHIVRgA8eejoSS2TLr1leAKB4+N
 mA5h5LPjLZQshVuxz1Zmg4X39hKjT2/XAWDXUWJi7hVljCmtsFZltgEJEdptisrG9WWUcuOEQomwLY27vRzVvBO6/AkyZSGuBa120JH8S3mMmE9nypbwnxFF
 jMdUfEhRD1XC7tn6YVqluC+b9DQP2+ocFeJ2PhnJ4syHpoWJWeg3fe5v7mE=
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

Hi Dhiraj,

On 28/07/2020 16:30, Dhiraj Sharma wrote:
> As per eudyptula challenge task 10 I had to fix coding styles. Thus I
> used checkpatch.pl script and fixed a chunk of warnings and few errors.

As both drivers/staging/media/usbvision/Kconfig and .../TODO say, this
driver is deprecated and will be removed by the end of this year.

So don't bother with this driver.

Regards,

	Hans

> 
> Signed-off-by: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
> ---
>  .../staging/media/usbvision/usbvision-video.c | 91 +++++++++++--------
>  1 file changed, 52 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/staging/media/usbvision/usbvision-video.c b/drivers/staging/media/usbvision/usbvision-video.c
> index 3ea25fdcf767..8b68e99a2813 100644
> --- a/drivers/staging/media/usbvision/usbvision-video.c
> +++ b/drivers/staging/media/usbvision/usbvision-video.c
> @@ -67,8 +67,8 @@
>  #ifdef USBVISION_DEBUG
>  	#define PDEBUG(level, fmt, args...) { \
>  		if (video_debug & (level)) \
> -			printk(KERN_INFO KBUILD_MODNAME ":[%s:%d] " fmt, \
> -				__func__, __LINE__ , ## args); \
> +			pr_debug(KBUILD_MODNAME ":[%s:%d] " fmt, \
> +				__func__, __LINE__, ## args); \
>  	}
>  #else
>  	#define PDEBUG(level, fmt, args...) do {} while (0)
> @@ -79,8 +79,8 @@
>  #define DBG_MMAP	(1 << 3)
> 
>  /* String operations */
> -#define rmspace(str)	while (*str == ' ') str++;
> -#define goto2next(str)	while (*str != ' ') str++; while (*str == ' ') str++;
> +#define rmspace(str)	do { str++; } while (*str == ' ')
> +#define goto2next(str)	do { str++; } while (*str != ' ' || *str == ' ')
> 
> 
>  /* sequential number of usbvision device */
> @@ -145,27 +145,29 @@ MODULE_ALIAS(DRIVER_ALIAS);
>  static inline struct usb_usbvision *cd_to_usbvision(struct device *cd)
>  {
>  	struct video_device *vdev = to_video_device(cd);
> +
>  	return video_get_drvdata(vdev);
>  }
> 
> -static ssize_t show_version(struct device *cd,
> +static ssize_t version_show(struct device *cd,
>  			    struct device_attribute *attr, char *buf)
>  {
>  	return sprintf(buf, "%s\n", USBVISION_VERSION_STRING);
>  }
> -static DEVICE_ATTR(version, S_IRUGO, show_version, NULL);
> +static DEVICE_ATTR_RO(version, 0444, version_show, NULL);
> 
> -static ssize_t show_model(struct device *cd,
> +static ssize_t model_show(struct device *cd,
>  			  struct device_attribute *attr, char *buf)
>  {
>  	struct video_device *vdev = to_video_device(cd);
>  	struct usb_usbvision *usbvision = video_get_drvdata(vdev);
> +
>  	return sprintf(buf, "%s\n",
>  		       usbvision_device_data[usbvision->dev_model].model_string);
>  }
> -static DEVICE_ATTR(model, S_IRUGO, show_model, NULL);
> +static DEVICE_ATTR_RO(model, 0444, model_show, NULL);
> 
> -static ssize_t show_hue(struct device *cd,
> +static ssize_t hue_show(struct device *cd,
>  			struct device_attribute *attr, char *buf)
>  {
>  	struct video_device *vdev = to_video_device(cd);
> @@ -175,9 +177,9 @@ static ssize_t show_hue(struct device *cd,
> 
>  	return sprintf(buf, "%d\n", val);
>  }
> -static DEVICE_ATTR(hue, S_IRUGO, show_hue, NULL);
> +static DEVICE_ATTR_RO(hue, 0444, hue_show, NULL);
> 
> -static ssize_t show_contrast(struct device *cd,
> +static ssize_t contrast_show(struct device *cd,
>  			     struct device_attribute *attr, char *buf)
>  {
>  	struct video_device *vdev = to_video_device(cd);
> @@ -187,9 +189,9 @@ static ssize_t show_contrast(struct device *cd,
> 
>  	return sprintf(buf, "%d\n", val);
>  }
> -static DEVICE_ATTR(contrast, S_IRUGO, show_contrast, NULL);
> +static DEVICE_ATTR_RO(contrast, 0444, contrast_show, NULL);
> 
> -static ssize_t show_brightness(struct device *cd,
> +static ssize_t brightness_show(struct device *cd,
>  			       struct device_attribute *attr, char *buf)
>  {
>  	struct video_device *vdev = to_video_device(cd);
> @@ -199,9 +201,9 @@ static ssize_t show_brightness(struct device *cd,
> 
>  	return sprintf(buf, "%d\n", val);
>  }
> -static DEVICE_ATTR(brightness, S_IRUGO, show_brightness, NULL);
> +static DEVICE_ATTR_RO(brightness, 0444, brightness_show, NULL);
> 
> -static ssize_t show_saturation(struct device *cd,
> +static ssize_t saturation_show(struct device *cd,
>  			       struct device_attribute *attr, char *buf)
>  {
>  	struct video_device *vdev = to_video_device(cd);
> @@ -211,36 +213,39 @@ static ssize_t show_saturation(struct device *cd,
> 
>  	return sprintf(buf, "%d\n", val);
>  }
> -static DEVICE_ATTR(saturation, S_IRUGO, show_saturation, NULL);
> +static DEVICE_ATTR_RO(saturation, 0444, saturation_show, NULL);
> 
> -static ssize_t show_streaming(struct device *cd,
> +static ssize_t streaming_show(struct device *cd,
>  			      struct device_attribute *attr, char *buf)
>  {
>  	struct video_device *vdev = to_video_device(cd);
>  	struct usb_usbvision *usbvision = video_get_drvdata(vdev);
> +
>  	return sprintf(buf, "%s\n",
>  		       YES_NO(usbvision->streaming == stream_on ? 1 : 0));
>  }
> -static DEVICE_ATTR(streaming, S_IRUGO, show_streaming, NULL);
> +static DEVICE_ATTR_RO(streaming, 0444, streaming_show, NULL);
> 
> -static ssize_t show_compression(struct device *cd,
> +static ssize_t compression_show(struct device *cd,
>  				struct device_attribute *attr, char *buf)
>  {
>  	struct video_device *vdev = to_video_device(cd);
>  	struct usb_usbvision *usbvision = video_get_drvdata(vdev);
> +
>  	return sprintf(buf, "%s\n",
>  		       YES_NO(usbvision->isoc_mode == ISOC_MODE_COMPRESS));
>  }
> -static DEVICE_ATTR(compression, S_IRUGO, show_compression, NULL);
> +static DEVICE_ATTR_RO(compression, 0444, compression_show, NULL);
> 
>  static ssize_t show_device_bridge(struct device *cd,
>  				  struct device_attribute *attr, char *buf)
>  {
>  	struct video_device *vdev = to_video_device(cd);
>  	struct usb_usbvision *usbvision = video_get_drvdata(vdev);
> +
>  	return sprintf(buf, "%d\n", usbvision->bridge_type);
>  }
> -static DEVICE_ATTR(bridge, S_IRUGO, show_device_bridge, NULL);
> +static DEVICE_ATTR_RO(bridge, 0444, show_device_bridge, NULL);
> 
>  static void usbvision_create_sysfs(struct video_device *vdev)
>  {
> @@ -329,7 +334,8 @@ static int usbvision_v4l2_open(struct file *file)
>  		err_code = usbvision_scratch_alloc(usbvision);
>  		if (isoc_mode == ISOC_MODE_COMPRESS) {
>  			/* Allocate intermediate decompression buffers
> -			   only if needed */
> +			 * only if needed
> +			 */
>  			err_code = usbvision_decompress_alloc(usbvision);
>  		}
>  		if (err_code) {
> @@ -344,6 +350,7 @@ static int usbvision_v4l2_open(struct file *file)
>  		/* Send init sequence only once, it's large! */
>  		if (!usbvision->initialized) {
>  			int setup_ok = 0;
> +
>  			setup_ok = usbvision_setup(usbvision, isoc_mode);
>  			if (setup_ok)
>  				usbvision->initialized = 1;
> @@ -400,7 +407,7 @@ static int usbvision_v4l2_close(struct file *file)
>  	mutex_unlock(&usbvision->v4l2_lock);
> 
>  	if (r) {
> -		printk(KERN_INFO "%s: Final disconnect\n", __func__);
> +		pr_debug("%s: Final disconnect\n", __func__);
>  		usbvision_release(usbvision);
>  		return 0;
>  	}
> @@ -490,7 +497,8 @@ static int vidioc_enum_input(struct file *file, void *priv,
>  		chan = vi->index + 1; /* skip Television string*/
> 
>  	/* Determine the requested input characteristics
> -	   specific for each usbvision card model */
> +	 * specific for each usbvision card model
> +	 */
>  	switch (chan) {
>  	case 0:
>  		if (usbvision_device_data[usbvision->dev_model].video_channels == 4) {
> @@ -649,7 +657,8 @@ static int vidioc_reqbufs(struct file *file,
>  	RESTRICT_TO_RANGE(vr->count, 1, USBVISION_NUMFRAMES);
> 
>  	/* Check input validity:
> -	   the user must do a VIDEO CAPTURE and MMAP method. */
> +	 * the user must do a VIDEO CAPTURE and MMAP method.
> +	 */
>  	if (vr->memory != V4L2_MEMORY_MMAP)
>  		return -EINVAL;
> 
> @@ -675,7 +684,8 @@ static int vidioc_querybuf(struct file *file,
>  	struct usbvision_frame *frame;
> 
>  	/* FIXME : must control
> -	   that buffers are mapped (VIDIOC_REQBUFS has been called) */
> +	 * that buffers are mapped (VIDIOC_REQBUFS has been called)
> +	 */
>  	if (vb->index >= usbvision->num_frames)
>  		return -EINVAL;
>  	/* Updating the corresponding frame state */
> @@ -813,6 +823,7 @@ static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
>  					struct v4l2_format *vf)
>  {
>  	struct usb_usbvision *usbvision = video_drvdata(file);
> +
>  	vf->fmt.pix.width = usbvision->curwidth;
>  	vf->fmt.pix.height = usbvision->curheight;
>  	vf->fmt.pix.pixelformat = usbvision->palette.format;
> @@ -897,24 +908,27 @@ static ssize_t usbvision_read(struct file *file, char __user *buf,
>  		return -EFAULT;
> 
>  	/* This entry point is compatible with the mmap routines
> -	   so that a user can do either VIDIOC_QBUF/VIDIOC_DQBUF
> -	   to get frames or call read on the device. */
> +	 * so that a user can do either VIDIOC_QBUF/VIDIOC_DQBUF
> +	 * to get frames or call read on the device.
> +	 */
>  	if (!usbvision->num_frames) {
>  		/* First, allocate some frames to work with
> -		   if this has not been done with VIDIOC_REQBUF */
> +		 * if this has not been done with VIDIOC_REQBUF
> +		 */
>  		usbvision_frames_free(usbvision);
>  		usbvision_empty_framequeues(usbvision);
>  		usbvision_frames_alloc(usbvision, USBVISION_NUMFRAMES);
>  	}
> 
>  	if (usbvision->streaming != stream_on) {
> -		/* no stream is running, make it running ! */
> +		// no stream is running, make it running !
>  		usbvision->streaming = stream_on;
>  		call_all(usbvision, video, s_stream, 1);
>  	}
> 
>  	/* Then, enqueue as many frames as possible
> -	   (like a user of VIDIOC_QBUF would do) */
> +	 * (like a user of VIDIOC_QBUF would do)
> +	 */
>  	for (i = 0; i < usbvision->num_frames; i++) {
>  		frame = &usbvision->frame[i];
>  		if (frame->grabstate == frame_state_unused) {
> @@ -1125,7 +1139,7 @@ static int usbvision_radio_close(struct file *file)
>  	mutex_unlock(&usbvision->v4l2_lock);
> 
>  	if (r) {
> -		printk(KERN_INFO "%s: Final disconnect\n", __func__);
> +		pr_debug("%s: Final disconnect\n", __func__);
>  		v4l2_fh_release(file);
>  		usbvision_release(usbvision);
>  		return 0;
> @@ -1273,7 +1287,7 @@ static int usbvision_register_video(struct usb_usbvision *usbvision)
> 
>  	if (video_register_device(&usbvision->vdev, VFL_TYPE_VIDEO, video_nr) < 0)
>  		goto err_exit;
> -	printk(KERN_INFO "USBVision[%d]: registered USBVision Video device %s [v4l2]\n",
> +	pr_debug("USBVision[%d]: registered USBVision Video device %s [v4l2]\n",
>  	       usbvision->nr, video_device_node_name(&usbvision->vdev));
> 
>  	/* Radio Device: */
> @@ -1284,7 +1298,7 @@ static int usbvision_register_video(struct usb_usbvision *usbvision)
>  		usbvision->rdev.device_caps = V4L2_CAP_RADIO | V4L2_CAP_TUNER;
>  		if (video_register_device(&usbvision->rdev, VFL_TYPE_RADIO, radio_nr) < 0)
>  			goto err_exit;
> -		printk(KERN_INFO "USBVision[%d]: registered USBVision Radio device %s [v4l2]\n",
> +		pr_debug("USBVision[%d]: registered USBVision Radio device %s [v4l2]\n",
>  		       usbvision->nr, video_device_node_name(&usbvision->rdev));
>  	}
>  	/* all done */
> @@ -1429,7 +1443,7 @@ static int usbvision_probe(struct usb_interface *intf,
>  		ret = -ENODEV;
>  		goto err_usb;
>  	}
> -	printk(KERN_INFO "%s: %s found\n", __func__,
> +	pr_debug("%s: %s found\n", __func__,
>  				usbvision_device_data[model].model_string);
> 
>  	if (usbvision_device_data[model].interface >= 0)
> @@ -1501,8 +1515,7 @@ static int usbvision_probe(struct usb_interface *intf,
>  			goto err_pkt;
>  		}
> 
> -		tmp = le16_to_cpu(uif->altsetting[i].endpoint[1].desc.
> -				      wMaxPacketSize);
> +		tmp = le16_to_cpu(uif->altsetting[i].endpoint[1].desc.wMaxPacketSize);
>  		usbvision->alt_max_pkt_size[i] =
>  			(tmp & 0x07ff) * (((tmp & 0x1800) >> 11) + 1);
>  		PDEBUG(DBG_PROBE, "Alternate setting %i, max size= %i", i,
> @@ -1581,7 +1594,7 @@ static void usbvision_disconnect(struct usb_interface *intf)
>  	mutex_unlock(&usbvision->v4l2_lock);
> 
>  	if (u) {
> -		printk(KERN_INFO "%s: In use, disconnect pending\n",
> +		pr_debug("%s: In use, disconnect pending\n",
>  		       __func__);
>  		wake_up_interruptible(&usbvision->wait_frame);
>  		wake_up_interruptible(&usbvision->wait_stream);
> @@ -1625,7 +1638,7 @@ static int __init usbvision_init(void)
>  	err_code = usb_register(&usbvision_driver);
> 
>  	if (err_code == 0) {
> -		printk(KERN_INFO DRIVER_DESC " : " USBVISION_VERSION_STRING "\n");
> +		pr_debug(DRIVER_DESC " : " USBVISION_VERSION_STRING "\n");
>  		PDEBUG(DBG_PROBE, "success");
>  	}
>  	return err_code;
> --
> 2.17.1
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
