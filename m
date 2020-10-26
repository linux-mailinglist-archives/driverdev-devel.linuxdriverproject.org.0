Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34846298604
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 05:06:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 10BCD22812;
	Mon, 26 Oct 2020 04:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xgYg5g7NvF4z; Mon, 26 Oct 2020 04:06:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8EA7320494;
	Mon, 26 Oct 2020 04:06:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 656F11BF2F0
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 04:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 622B385D11
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 04:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 04Q8DyOuXper for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 04:06:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB0EE85CFF
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 04:06:03 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id h4so2378378pjk.0
 for <devel@driverdev.osuosl.org>; Sun, 25 Oct 2020 21:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xVfxj2SJXKZDQe2jFyLqHxnAk0B1Wn2HRYAoGKP3T2s=;
 b=alIttjOxictJHNfAP61wJMKR1D5PdIP9um/7kTsdrZrykKuYFNpM3dp5/fZDnFyrpQ
 Ix163nV8W1WrAcQepyqmQVN7ju0vHOHUw44S82v2IyoHQssdbxiiGXeShOiwwx3Y6CE4
 5V1KOpeeTdbYnqSNJYmTZFXqHgqfaNoHVW+kA5K+K3C9GeNq1qj+9KF1geIRxIuz2bqD
 GkDSiNJBJqRRuYkItZi+RZPH7crIiRYYNZIYc6qT8BxougqfrCmvLIU02utgMClR7EAN
 +YY8CRMl5WaqJsECrAShukt4sMUPpVPknj3VrVupXThyWcV9MiYu/dgiMmRvhABsOmEf
 DX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xVfxj2SJXKZDQe2jFyLqHxnAk0B1Wn2HRYAoGKP3T2s=;
 b=SYazIPoKw1og2kfIryxiM1GMH9J55r+bqdAy6yApcKlmajmu3iF6aMbq6GAn2GEXEa
 /gUA/vfDTupa4KG9CNsWoXugAQ92XCwZaWlKcmSQi/+8BUrM7pOyAwpSSSAelBCrdZpx
 YjK3MKmM4x7lkBnUm/r28C23ohGvVlTzpH728rzvTO9+nf8rG2QCr9YEKpLI4BieAl8D
 hdmTWk5WcXSTW1Q4TLU/Knp5bdfwuD4VI/eaxtWmUP6JHYUzwKVziafVqSpQgN4cz83H
 CjWfGWIWrAcCPiUhu1V1v4zEMdRVkoSd5u5vB+ixYJrekFJpMe+eqWasDFbMftdDwjPO
 azsA==
X-Gm-Message-State: AOAM530izKiMRQ87eby8mYZ25u5Ah0sDSMFEmrC+XwBdE6EY0+Ee0YAA
 MPNjmf2pwBEyNZpP6LwBZZt2goJ+5wY=
X-Google-Smtp-Source: ABdhPJy7bQxTurHIDrT8nghXKKi6XXMamYqNmAiawrBBPZwE+m4/7VqY+YdUcC8QmvbhiR2kQ45+Jw==
X-Received: by 2002:a17:902:b18f:b029:d5:e3d3:9b87 with SMTP id
 s15-20020a170902b18fb02900d5e3d39b87mr12131420plr.78.1603685163536; 
 Sun, 25 Oct 2020 21:06:03 -0700 (PDT)
Received: from my--box ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id m19sm9339001pgn.93.2020.10.25.21.06.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Oct 2020 21:06:03 -0700 (PDT)
Date: Mon, 26 Oct 2020 09:35:58 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 2/2] staging: kpc2000: kpc_dma: rename show function
 per convention
Message-ID: <20201026040558.GD5074@my--box>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <8e02f6d8a4263971b90f73820fd855a31da3f8fc.1603264617.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e02f6d8a4263971b90f73820fd855a31da3f8fc.1603264617.git.mh12gx2825@gmail.com>
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
Cc: mh12gx2825@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 21, 2020 at 01:05:25PM +0530, Deepak R Varma wrote:

Hello,
Requesting a review / ack for this patch.

Thank you,
Deepak.

> Rename show_engine_regs show function to engine_regs_show as per the
> convention followed. The show function macro DEVICE_ATTR is replaced
> by DEVICE_ATTR_RO. Issue reported by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes since v1:
>    - Replace DEVICE_ATTR by DEVICE_ATTR_RO as suggested by Greg.
> 
>  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> index 7698e5ef2a7c..aa9f96793e59 100644
> --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> @@ -50,7 +50,7 @@ static void kpc_dma_del_device(struct kpc_dma_device *ldev)
>  }
>  
>  /**********  SysFS Attributes **********/
> -static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *attr, char *buf)
> +static ssize_t  engine_regs_show(struct device *dev, struct device_attribute *attr, char *buf)
>  {
>  	struct kpc_dma_device *ldev;
>  	struct platform_device *pldev = to_platform_device(dev);
> @@ -80,7 +80,7 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
>  		ldev->desc_completed
>  	);
>  }
> -static DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
> +static DEVICE_ATTR_RO(engine_regs);
>  
>  static const struct attribute *ndd_attr_list[] = {
>  	&dev_attr_engine_regs.attr,
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
