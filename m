Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A298BD5766
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 20:41:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45A8F87541;
	Sun, 13 Oct 2019 18:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BbyM4Ve++eND; Sun, 13 Oct 2019 18:41:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 437C886ECC;
	Sun, 13 Oct 2019 18:41:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B30EC1BF2A3
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 18:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A71EF86DD6
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 18:41:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nih3mIhYZzOC for <devel@linuxdriverproject.org>;
 Sun, 13 Oct 2019 18:41:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1347B86D78
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 18:41:33 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,293,1566856800"; d="scan'208";a="322546275"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2019 20:41:27 +0200
Date: Sun, 13 Oct 2019 20:41:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: vc04_services: fix lines
 ending with open parenthesis
In-Reply-To: <20191013183420.13785-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910132040140.2565@hadrien>
References: <20191013183420.13785-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 mchehab+samsung@kernel.org, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 hverkuil-cisco@xs4all.nl, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sun, 13 Oct 2019, Jules Irenge wrote:

> Fix lines ending with open parenthesis. Issue detected by checkpatch tool.
> In the process, change driver functions name in the multiple files from:
> vchiq_mmal_port_parameter_set to vmp_prmtr_set
> vchiq_mmal_component_disable to vm_cmpnt_disable
> vchiq_mmal_port_connect_tunnel to vmp_cnnct_tunnel
> vchiq_mmal_component_enable to vm_cmpnt_enable

You should say why you change the names.

As far as I can see, there is no change to the actual function
definitions, so the code can't compile.  Perhaps that comes later in the
series, but the elements of the series have to be ordered such that
compilation is possible after each patch.

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  .../bcm2835-camera/bcm2835-camera.c           | 191 ++++++++----------
>  1 file changed, 89 insertions(+), 102 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index beb6a0063bb8..0ffe95b3bfb2 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -337,12 +337,11 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
>  			if (is_capturing(dev)) {
>  				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  					 "Grab another frame");
> -				vchiq_mmal_port_parameter_set(
> -					instance,
> -					dev->capture.camera_port,
> -					MMAL_PARAMETER_CAPTURE,
> -					&dev->capture.frame_count,
> -					sizeof(dev->capture.frame_count));
> +				vmp_prmtr_set(instance,
> +					      dev->capture.camera_port,
> +					      MMAL_PARAMETER_CAPTURE,
> +					      &dev->capture.frame_count,
> +					      sizeof(dev->capture.frame_count));
>  			}
>  			if (vchiq_mmal_submit_buffer(instance, port, buf))
>  				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> @@ -392,12 +391,11 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
>  	    is_capturing(dev)) {
>  		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  			 "Grab another frame as buffer has EOS");
> -		vchiq_mmal_port_parameter_set(
> -			instance,
> -			dev->capture.camera_port,
> -			MMAL_PARAMETER_CAPTURE,
> -			&dev->capture.frame_count,
> -			sizeof(dev->capture.frame_count));
> +		vmp_prmtr_set(instance,
> +			      dev->capture.camera_port,
> +			      MMAL_PARAMETER_CAPTURE,
> +			      &dev->capture.frame_count,
> +			      sizeof(dev->capture.frame_count));
>  	}
>  }
>
> @@ -406,20 +404,18 @@ static int enable_camera(struct bm2835_mmal_dev *dev)
>  	int ret;
>
>  	if (!dev->camera_use_count) {
> -		ret = vchiq_mmal_port_parameter_set(
> -			dev->instance,
> -			&dev->component[COMP_CAMERA]->control,
> -			MMAL_PARAMETER_CAMERA_NUM, &dev->camera_num,
> -			sizeof(dev->camera_num));
> +		ret = vmp_prmtr_set(dev->instance,
> +				    &dev->component[COMP_CAMERA]->control,
> +				    MMAL_PARAMETER_CAMERA_NUM, &dev->camera_num,
> +				    sizeof(dev->camera_num));
>  		if (ret < 0) {
>  			v4l2_err(&dev->v4l2_dev,
>  				 "Failed setting camera num, ret %d\n", ret);
>  			return -EINVAL;
>  		}
>
> -		ret = vchiq_mmal_component_enable(
> -				dev->instance,
> -				dev->component[COMP_CAMERA]);
> +		ret = vm_cmpnt_enable(dev->instance,
> +				      dev->component[COMP_CAMERA]);
>  		if (ret < 0) {
>  			v4l2_err(&dev->v4l2_dev,
>  				 "Failed enabling camera, ret %d\n", ret);
> @@ -449,19 +445,17 @@ static int disable_camera(struct bm2835_mmal_dev *dev)
>  		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  			 "Disabling camera\n");
>  		ret =
> -		    vchiq_mmal_component_disable(
> -				dev->instance,
> -				dev->component[COMP_CAMERA]);
> +		    vm_cmpnt_disable(dev->instance,
> +				     dev->component[COMP_CAMERA]);
>  		if (ret < 0) {
>  			v4l2_err(&dev->v4l2_dev,
>  				 "Failed disabling camera, ret %d\n", ret);
>  			return -EINVAL;
>  		}
> -		vchiq_mmal_port_parameter_set(
> -			dev->instance,
> -			&dev->component[COMP_CAMERA]->control,
> -			MMAL_PARAMETER_CAMERA_NUM, &i,
> -			sizeof(i));
> +		vmp_prmtr_set(dev->instance,
> +			      &dev->component[COMP_CAMERA]->control,
> +			      MMAL_PARAMETER_CAMERA_NUM, &i,
> +			      sizeof(i));
>  	}
>  	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  		 "Camera refcount now %d\n", dev->camera_use_count);
> @@ -569,11 +563,11 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
>  	}
>
>  	/* capture the first frame */
> -	vchiq_mmal_port_parameter_set(dev->instance,
> -				      dev->capture.camera_port,
> -				      MMAL_PARAMETER_CAPTURE,
> -				      &dev->capture.frame_count,
> -				      sizeof(dev->capture.frame_count));
> +	vmp_prmtr_set(dev->instance,
> +		      dev->capture.camera_port,
> +		      MMAL_PARAMETER_CAPTURE,
> +		      &dev->capture.frame_count,
> +		      sizeof(dev->capture.frame_count));
>  	return 0;
>  }
>
> @@ -601,11 +595,11 @@ static void stop_streaming(struct vb2_queue *vq)
>  	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "stopping capturing\n");
>
>  	/* stop capturing frames */
> -	vchiq_mmal_port_parameter_set(dev->instance,
> -				      dev->capture.camera_port,
> -				      MMAL_PARAMETER_CAPTURE,
> -				      &dev->capture.frame_count,
> -				      sizeof(dev->capture.frame_count));
> +	vmp_prmtr_set(dev->instance,
> +		      dev->capture.camera_port,
> +		      MMAL_PARAMETER_CAPTURE,
> +		      &dev->capture.frame_count,
> +		      sizeof(dev->capture.frame_count));
>
>  	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  		 "disabling connection\n");
> @@ -675,9 +669,10 @@ static int set_overlay_params(struct bm2835_mmal_dev *dev,
>  			.height = dev->overlay.w.height,
>  		},
>  	};
> -	return vchiq_mmal_port_parameter_set(dev->instance, port,
> -					     MMAL_PARAMETER_DISPLAYREGION,
> -					     &prev_config, sizeof(prev_config));
> +	return vmp_prmtr_set(dev->instance,
> +			     port,
> +			     MMAL_PARAMETER_DISPLAYREGION,
> +			     &prev_config, sizeof(prev_config));
>  }
>
>  /* overlay ioctl */
> @@ -772,12 +767,12 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
>  		ret = vchiq_mmal_port_disable(dev->instance, src);
>  		if (!ret)
>  			ret =
> -			    vchiq_mmal_port_connect_tunnel(dev->instance, src,
> -							   NULL);
> +			    vmp_cnnct_tunnel(dev->instance,
> +					     src,
> +					     NULL);
>  		if (ret >= 0)
> -			ret = vchiq_mmal_component_disable(
> -					dev->instance,
> -					dev->component[COMP_PREVIEW]);
> +			ret = vm_cmpnt_disable(dev->instance,
> +					       dev->component[COMP_PREVIEW]);
>
>  		disable_camera(dev);
>  		return ret;
> @@ -797,15 +792,14 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
>  	if (enable_camera(dev) < 0)
>  		return -EINVAL;
>
> -	ret = vchiq_mmal_component_enable(
> -			dev->instance,
> -			dev->component[COMP_PREVIEW]);
> +	ret = vm_cmpnt_enable(dev->instance,
> +			      dev->component[COMP_PREVIEW]);
>  	if (ret < 0)
>  		return ret;
>
>  	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "connecting %p to %p\n",
>  		 src, dst);
> -	ret = vchiq_mmal_port_connect_tunnel(dev->instance, src, dst);
> +	ret = vmp_cnnct_tunnel(dev->instance, src, dst);
>  	if (ret)
>  		return ret;
>
> @@ -1015,11 +1009,11 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  			 "vid_cap - disconnect previous tunnel\n");
>
>  		/* Disconnect any previous connection */
> -		vchiq_mmal_port_connect_tunnel(dev->instance,
> -					       dev->capture.camera_port, NULL);
> +		vmp_cnnct_tunnel(dev->instance,
> +				 dev->capture.camera_port, NULL);
>  		dev->capture.camera_port = NULL;
> -		ret = vchiq_mmal_component_disable(dev->instance,
> -						   dev->capture.encode_component);
> +		ret = vm_cmpnt_disable(dev->instance,
> +				       dev->capture.encode_component);
>  		if (ret)
>  			v4l2_err(&dev->v4l2_dev,
>  				 "Failed to disable encode component %d\n",
> @@ -1072,10 +1066,10 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  	}
>
>  	remove_padding = mfmt->remove_padding;
> -	vchiq_mmal_port_parameter_set(dev->instance,
> -				      camera_port,
> -				      MMAL_PARAMETER_NO_IMAGE_PADDING,
> -				      &remove_padding, sizeof(remove_padding));
> +	vmp_prmtr_set(dev->instance,
> +		      camera_port,
> +		      MMAL_PARAMETER_NO_IMAGE_PADDING,
> +		      &remove_padding, sizeof(remove_padding));
>
>  	camera_port->format.encoding_variant = 0;
>  	camera_port->es.video.width = f->fmt.pix.width;
> @@ -1107,10 +1101,9 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  						    preview_port);
>  			if (!ret)
>  				ret =
> -				    vchiq_mmal_port_connect_tunnel(
> -						dev->instance,
> -						preview_port,
> -						NULL);
> +				    vmp_cnnct_tunnel(dev->instance,
> +						     preview_port,
> +						     NULL);
>  		}
>  		preview_port->es.video.width = f->fmt.pix.width;
>  		preview_port->es.video.height = f->fmt.pix.height;
> @@ -1124,9 +1117,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  					  dev->capture.timeperframe.numerator;
>  		ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
>  		if (overlay_enabled) {
> -			ret = vchiq_mmal_port_connect_tunnel(
> -				dev->instance,
> -				preview_port,
> +			ret = vmp_cnnct_tunnel(dev->instance,
> +					       preview_port,
>  				&dev->component[COMP_PREVIEW]->input[0]);
>  			if (!ret)
>  				ret = vchiq_mmal_port_enable(dev->instance,
> @@ -1154,10 +1146,9 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  			    camera_port->recommended_buffer.num;
>
>  			ret =
> -			    vchiq_mmal_port_connect_tunnel(
> -					dev->instance,
> -					camera_port,
> -					&encode_component->input[0]);
> +			    vmp_cnnct_tunnel(dev->instance,
> +					     camera_port,
> +					     &encode_component->input[0]);
>  			if (ret) {
>  				v4l2_dbg(1, bcm2835_v4l2_debug,
>  					 &dev->v4l2_dev,
> @@ -1205,9 +1196,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  			}
>
>  			if (!ret) {
> -				ret = vchiq_mmal_component_enable(
> -						dev->instance,
> -						encode_component);
> +				ret = vm_cmpnt_enable(dev->instance,
> +						      encode_component);
>  				if (ret) {
>  					v4l2_dbg(1, bcm2835_v4l2_debug,
>  						 &dev->v4l2_dev,
> @@ -1530,7 +1520,7 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
>  		.use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
>  	};
>
> -	return vchiq_mmal_port_parameter_set(instance, &camera->control,
> +	return vmp_prmtr_set(instance, &camera->control,
>  					    MMAL_PARAMETER_CAMERA_CONFIG,
>  					    &cam_config, sizeof(cam_config));
>  }
> @@ -1655,9 +1645,9 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>  	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
>
>  	/* get the preview component ready */
> -	ret = vchiq_mmal_component_init(
> -			dev->instance, "ril.video_render",
> -			&dev->component[COMP_PREVIEW]);
> +	ret = vchiq_mmal_component_init(dev->instance,
> +					"ril.video_render",
> +					&dev->component[COMP_PREVIEW]);
>  	if (ret < 0)
>  		goto unreg_camera;
>
> @@ -1669,9 +1659,9 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>  	}
>
>  	/* get the image encoder component ready */
> -	ret = vchiq_mmal_component_init(
> -		dev->instance, "ril.image_encode",
> -		&dev->component[COMP_IMAGE_ENCODE]);
> +	ret = vchiq_mmal_component_init(dev->instance,
> +					"ril.image_encode",
> +					&dev->component[COMP_IMAGE_ENCODE]);
>  	if (ret < 0)
>  		goto unreg_preview;
>
> @@ -1708,17 +1698,16 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>  	{
>  		unsigned int enable = 1;
>
> -		vchiq_mmal_port_parameter_set(
> -			dev->instance,
> -			&dev->component[COMP_VIDEO_ENCODE]->control,
> -			MMAL_PARAMETER_VIDEO_IMMUTABLE_INPUT,
> -			&enable, sizeof(enable));
> -
> -		vchiq_mmal_port_parameter_set(dev->instance,
> -					      &dev->component[COMP_VIDEO_ENCODE]->control,
> -					      MMAL_PARAMETER_MINIMISE_FRAGMENTATION,
> -					      &enable,
> -					      sizeof(enable));
> +		vmp_prmtr_set(dev->instance,
> +			      &dev->component[COMP_VIDEO_ENCODE]->control,
> +			      MMAL_PARAMETER_VIDEO_IMMUTABLE_INPUT,
> +			      &enable, sizeof(enable));
> +
> +		vmp_prmtr_set(dev->instance,
> +			      &dev->component[COMP_VIDEO_ENCODE]->control,
> +			      MMAL_PARAMETER_MINIMISE_FRAGMENTATION,
> +			      &enable,
> +			      sizeof(enable));
>  	}
>  	ret = bm2835_mmal_set_all_camera_controls(dev);
>  	if (ret < 0) {
> @@ -1731,15 +1720,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>
>  unreg_vid_encoder:
>  	pr_err("Cleanup: Destroy video encoder\n");
> -	vchiq_mmal_component_finalise(
> -		dev->instance,
> -		dev->component[COMP_VIDEO_ENCODE]);
> +	vchiq_mmal_component_finalise(dev->instance,
> +				      dev->component[COMP_VIDEO_ENCODE]);
>
>  unreg_image_encoder:
>  	pr_err("Cleanup: Destroy image encoder\n");
> -	vchiq_mmal_component_finalise(
> -		dev->instance,
> -		dev->component[COMP_IMAGE_ENCODE]);
> +	vchiq_mmal_component_finalise(dev->instance,
> +				      dev->component[COMP_IMAGE_ENCODE]);
>
>  unreg_preview:
>  	pr_err("Cleanup: Destroy video render\n");
> @@ -1799,13 +1786,13 @@ static void bcm2835_cleanup_instance(struct bm2835_mmal_dev *dev)
>  	if (dev->capture.encode_component) {
>  		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  			 "mmal_exit - disconnect tunnel\n");
> -		vchiq_mmal_port_connect_tunnel(dev->instance,
> -					       dev->capture.camera_port, NULL);
> -		vchiq_mmal_component_disable(dev->instance,
> -					     dev->capture.encode_component);
> +		vmp_cnnct_tunnel(dev->instance,
> +				 dev->capture.camera_port, NULL);
> +		vm_cmpnt_disable(dev->instance,
> +				 dev->capture.encode_component);
>  	}
> -	vchiq_mmal_component_disable(dev->instance,
> -				     dev->component[COMP_CAMERA]);
> +	vm_cmpnt_disable(dev->instance,
> +			 dev->component[COMP_CAMERA]);
>
>  	vchiq_mmal_component_finalise(dev->instance,
>  				      dev->component[COMP_VIDEO_ENCODE]);
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191013183420.13785-1-jbi.octave%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
