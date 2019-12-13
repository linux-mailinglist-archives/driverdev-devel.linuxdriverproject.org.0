Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAE011DF44
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 09:21:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2545088AF9;
	Fri, 13 Dec 2019 08:21:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X0KfFnwtKh3R; Fri, 13 Dec 2019 08:21:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43F87888EB;
	Fri, 13 Dec 2019 08:21:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A19A1BF3F2
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 08:21:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 11BEB88A5B
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 08:21:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B8VfJchVk52T for <devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 08:21:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 02203888EB
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 08:21:38 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id p9so5311187wmc.2
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 00:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=B1eP2vkRbC7o7mbRoosyYPfjuzYz86reSm5iy2bvyDE=;
 b=kQfeAAlxqo8WfaG9lwUWtue1krS96nVizRUmcqoq9DTzvsYUMgxmBG7GY5XPhcg0Jg
 L5rqvOO0JvRMd1y7IQzz6Xv0JVhy3xHLVMONICrBL0F+RPEXwUuin01k9tRSvA9MWPFE
 iAo53qAQSH/uUZmYOmq+a6BPc48lBqcW6kKBMYCRYAjD6SkRs+h67q0GZgEtrZYsJ3cW
 Tc/mzS/1QLSrltoP8xLJArAf9ygYPTd7Jq7CfjIs67lRsqUk5deur4yJmE1I3TbYpD0u
 J3lmz1+3eNKaJrAoFGDiEIkr6Qm2GpZd098icu97VOmJCuNn1Nbl9/zPyroozMnNGCT9
 BhPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=B1eP2vkRbC7o7mbRoosyYPfjuzYz86reSm5iy2bvyDE=;
 b=GLdMdg5G79QjIDqVBDq4zm7V3H9iWfTeA1nkZfUDIXZHJy/hrNtj8K0GPG6RJtU2Pd
 e55zPxhsoMSXLpOcgPP/pwbQI2S8N/YP0FPqv2zX5JG72MwuTotgi3/keRf6e/Chs9yn
 y9sdOiNVBYzoRBZFJG3jUfU855G/HBLCtTsGvxXMmrOlHnIFOD7u+hN3xx8eeq5ntxsO
 3Aj0quvlmVFm9oT/s+baYmV++atpXq0XNH4H2Bq/Btg1uAgkFyLygn1JApOuof/LzE9L
 M/6Z21Ko5ipF4lAvlrmatvacvr7A4D6xLX5024RKuIjvoAHpPHbUBONgJC+acDxvQ3js
 It7g==
X-Gm-Message-State: APjAAAXb/u51YR25ihbOdEEg4V8TmsgSElewPXxFlbHTosbqOWZoDD2c
 nA0NCWsh5NlkCipJ8YdOIOFXmg==
X-Google-Smtp-Source: APXvYqwjzFG03gi4VEfJvOP4v6eaEtaYjEoGzITtfG5ZYq+8xgAyjTc6kZp+0NgLMgrFyoAy98Zmlw==
X-Received: by 2002:a1c:9ec6:: with SMTP id h189mr11828959wme.28.1576225297295; 
 Fri, 13 Dec 2019 00:21:37 -0800 (PST)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id q15sm9067850wrr.11.2019.12.13.00.21.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 00:21:36 -0800 (PST)
Date: Fri, 13 Dec 2019 08:21:33 +0000
From: Rui Miguel Silva <rui.silva@linaro.org>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH] media: imx7-mipi-csis: remove subdev_notifier
Message-ID: <20191213082133.sdx4dquynxcneile@arch-thunder.localdomain>
References: <20191212191714.812249-1-rmfrfs@gmail.com>
 <13a26524-fa5e-1619-5026-d9b076271988@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13a26524-fa5e-1619-5026-d9b076271988@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Steve Longerbeam <slongerbeam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Hans,
On Fri, Dec 13, 2019 at 08:59:22AM +0100, Hans Verkuil wrote:
> On 12/12/19 8:17 PM, Rui Miguel Silva wrote:
> > It was defined a notifier in the csi_state structure that is never
> > allocated. And besides that it's unregister in the remove, even
> > though it is a no-op, just remove both.
> > 
> > Fixes: 7807063b862b ("media: staging/imx7: add MIPI CSI-2 receiver
> > subdev for i.MX7") Reported-by: Hans Verkuil <hverkuil@xs4all.nl>
> > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Suggested-by: Philipp Zabel <p.zabel@pengutronix.de>
> > Signed-off-by: Rui Miguel Silva <rmfrfs@gmail.com>
> 
> Mismatch between this Signed-off-by and your email address.  Is it
> OK if I use your linaro email in this Signed-off-by?

Yeah, no problem. go ahead. Thanks.

------
Cheers,
     Rui

> 
> Regards,
> 
> 	Hans
> 
> > --- drivers/staging/media/imx/imx7-mipi-csis.c | 3 ---
> >  1 file changed, 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c
> > b/drivers/staging/media/imx/imx7-mipi-csis.c index
> > 99166afca071..383abecb3bec 100644 ---
> > a/drivers/staging/media/imx/imx7-mipi-csis.c +++
> > b/drivers/staging/media/imx/imx7-mipi-csis.c @@ -251,8 +251,6 @@
> > struct csi_state {
> >  
> >  	struct mipi_csis_event events[MIPI_CSIS_NUM_EVENTS];
> >  
> > -	struct v4l2_async_notifier subdev_notifier; - struct
> > csis_hw_reset hw_reset; struct regulator *mipi_phy_regulator; bool
> > sink_linked; @@ -1104,7 +1102,6 @@ static int
> > mipi_csis_remove(struct platform_device *pdev)
> >  
> >  	mipi_csis_debugfs_exit(state);
> >  	v4l2_async_unregister_subdev(&state->mipi_sd); -
> >  	v4l2_async_notifier_unregister(&state->subdev_notifier);
> >  
> >  	pm_runtime_disable(&pdev->dev);
> >  	mipi_csis_pm_suspend(&pdev->dev, true);
> > 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
