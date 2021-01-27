Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A11E1304E72
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 02:16:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA3E62051D;
	Wed, 27 Jan 2021 01:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r0lTch+zZ31M; Wed, 27 Jan 2021 01:16:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1EDC420515;
	Wed, 27 Jan 2021 01:16:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5921C1BF263
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 01:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 558BE8666E
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 01:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SKwFsp35sSPC for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 01:15:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A0E908660D
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 01:15:56 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id g15so307377pjd.2
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 17:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=KJ+yQ5bWaZ2enwzjx+4GHtaZjxc83d9TFtN5y4k2HgI=;
 b=i/yuys92Y5AzJRo1OemPBFbioTJmSuQ33639+tZ6prHwvFx51LOyZrVSO1E33i+8wh
 dEJHgrQ8sxZTiELoPu/HB5idN1Xr1ngd23fU7Q5qWKVITJs29r5uNEgiLJ+UF3eew7oh
 Te/siDN/xEQeEQxDBwRHsCc0asJLTkm6YLdAmJzmN6G5BtxF5PPok0bVMoyLAZ3KdEOI
 Iq/KGqEfFxJ8EHCQGitG/cuxLRRvin9iwNT0mDvewcCr0Gf/gUQc+rg3v6bY/LX+Q7bw
 v09GqAMKSqwIVfOdSE9AZRLH5lptxD2UA4smZNauFMOwPs6tZbLVbnqHk4lzlHnzj5FL
 mYJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=KJ+yQ5bWaZ2enwzjx+4GHtaZjxc83d9TFtN5y4k2HgI=;
 b=ajiU8pw6kfwowXOsw2bm9cm0fyV+C3n2dQLKEYFLpa08zrvaYvyUo2ed0iXfV1J/6k
 7x1xgbqZQuY1ah06pnmc/t3QIaT08yzGfYl8rw/t1WH0n5tUFLJeQ8/SUdk1kqdHtYhx
 rnoNRcGN3slrswgqACGguyJoaEBhMw0cw8iPIMcWb0z5pnX8YpA5F/jP7rxPWQNToFzN
 x3wodWAQgvBbHRLKUs07EEGMUS1NbEi1lTmymuVaK5BSFXfSMnYpKABixw/Sr5usRKDJ
 KH1jQodKL6pxx0TTJG3Dgrtf3YajB/PLcj58z3ZQLcHpWkPggwGuTXSXnm8tp8m/iimd
 eUYg==
X-Gm-Message-State: AOAM5335IEK7hoX/sGGAVEA5LmAT4FdfvtMSf9E1U+KQB4Tx30+f2Zys
 oB6fHC/kx0yXT/9OnkaepqY=
X-Google-Smtp-Source: ABdhPJwh8l3R0l+5Z0cCZw5Tw01gyH/2L5iZDeU27N+EyiLMmddVKlQ+fKoZdTxT07XrfYEndiiX9A==
X-Received: by 2002:a17:902:d64e:b029:df:e5b1:b7f7 with SMTP id
 y14-20020a170902d64eb02900dfe5b1b7f7mr8586928plh.10.1611710156278; 
 Tue, 26 Jan 2021 17:15:56 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id d128sm218943pga.87.2021.01.26.17.15.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 17:15:55 -0800 (PST)
Date: Wed, 27 Jan 2021 09:15:49 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v4] fbtft: add tearing signal detect
Message-ID: <20210127091549.00005933@gmail.com>
In-Reply-To: <20210126175141.GZ2696@kadam>
References: <1611664835-150687-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210126175141.GZ2696@kadam>
Organization: Tyzmig-ryrjum-8kedto
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, gregkh@linuxfoundation.org,
 oliver.graute@kococonnector.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sbrivio@redhat.com, colin.king@canonical.com,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 26 Jan 2021 20:51:41 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> On Tue, Jan 26, 2021 at 08:40:35PM +0800, Carlis wrote:
> > @@ -82,6 +111,29 @@ enum st7789v_command {
> >   */
> >  static int init_display(struct fbtft_par *par)
> >  {
> > +	int rc;
> > +	struct device *dev = par->info->device;
> > +
> > +	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> > GPIOD_IN);
> > +	if (par->gpio.te) {  
> 
> I explained in my earlier review that devm_gpiod_get_index_optional()
> can return error pointers...  There was quite a bit of detail about
> how to handle this correctly in my earlier review, but I think you
> might not have noticed it.  Please read it again.
> 
> > +		init_completion(&spi_panel_te);
> > +		mutex_init(&te_mutex);
> > +		rc = devm_request_irq(dev,
> > +				      gpiod_to_irq(par->gpio.te),
> > +				     spi_panel_te_handler,
> > IRQF_TRIGGER_RISING,
> > +				     "TE_GPIO", par);
> > +		if (rc) {
> > +			pr_err("TE request_irq failed.\n");
> > +			devm_gpiod_put(dev, par->gpio.te);
> > +			par->gpio.te = NULL;
> > +		} else {
> > +
> > disable_irq_nosync(gpiod_to_irq(par->gpio.te));
> > +			pr_info("TE request_irq completion.\n");
> > +		}
> > +	} else {
> > +		pr_err("%s:%d, TE gpio not specified\n",
> > +		       __func__, __LINE__);
> > +	}  
> 
> regards,
> dan carpenter
> 
Thank you for your correction,i will change pr_err to pr_info in next
patch v5

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
