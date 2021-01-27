Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38645305842
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 11:24:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BC7A62151E;
	Wed, 27 Jan 2021 10:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v4tguQVjk3tr; Wed, 27 Jan 2021 10:24:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 69D5121080;
	Wed, 27 Jan 2021 10:24:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17BCA1BF405
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 10:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1439084FC9
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 10:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6tvqRA2vEZXC for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 10:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E1F5484E77
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 10:24:02 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id s15so779832plr.9
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 02:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=xRcgTb91tK28anYqrlC++wtp+Am92iHcjy/4eSWbMUs=;
 b=ZVd0VPHkqckjxZmYv4/v2cboiZSDr8qUPwHMzMlYHsy0Hu3sK1Sh2jfHizwSenYTig
 AhejQOWtpeZ6dqXMdwqVaZLcgU4eRtnJIhzFAUjdHqTxQdJOLRaJM3nA+QMX5DBrFf0l
 FEjo16QriDvnD/40PuuhCJfhDE37wGRKgRZgqGdh1w7ZQLl9zmuB+/UpKLSRkCkeKgbs
 Qtk5QufgvK8Hdz7om32gkQZ8rOPszKZnTwGaPCHTaZEIe4VlQxkTHRQOdObfncNdfbww
 lF8aItGo2wKUlFFRS9qH3RqjWY4t4aWl5oWjSJIMHSSUnpgu4Nyk5kTyPImZSSTwvPIk
 129g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=xRcgTb91tK28anYqrlC++wtp+Am92iHcjy/4eSWbMUs=;
 b=DJ3m511MlRtkIwD63i9jXcZbWB0ZTBtW5KkOeZMQLgvnKPghzC7IHP0vwXjQgnaZLQ
 qJnx08McZqdrVotO3VmwHu8ZkhWYdzj751FzFXRL9c7KRSBMrjFXvP+e/2uWdRhc4wpu
 X9L0/itZvUd/yPwDRO6U4IkE9wnPyATi/Ym96KwPd614hpVETFu94l5q+GEwkiXRKwXA
 ODdpRSeC2riWAILYnOfmNh5/nxGrW2cxpCeb0H3p6jsxQ/gkwuU53rOX0cHKRFNR8fV8
 0x6zVU2Af4KjDY4aSVyAYpDaHe59zSpPrMHclpaAv+thdKnP0RfZHf9pp+b2zvJwHSIf
 YD0w==
X-Gm-Message-State: AOAM531PByjWbVCD6REYpJ8iwEvALR7lAlgipGt5NEnjx/eRgUdj1R1A
 N4ml8dK13XKPixrwI9Ywqm0=
X-Google-Smtp-Source: ABdhPJzTgP2xJ9TiEus/lM8X6G6P4az0ohaUTLuqRAbnoOTXq0i9h7FnZEwNwwYqWfTlv5yT/U1Epg==
X-Received: by 2002:a17:90a:3f82:: with SMTP id
 m2mr4895955pjc.235.1611743042596; 
 Wed, 27 Jan 2021 02:24:02 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id d128sm2152572pga.87.2021.01.27.02.23.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 02:24:01 -0800 (PST)
Date: Wed, 27 Jan 2021 18:23:55 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v6] fbtft: add tearing signal detect
Message-ID: <20210127182355.00007300@gmail.com>
In-Reply-To: <20210127085951.GE2696@kadam>
References: <1611732502-99639-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210127085951.GE2696@kadam>
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

On Wed, 27 Jan 2021 11:59:51 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> On Wed, Jan 27, 2021 at 03:28:22PM +0800, Carlis wrote:
> >  static int init_display(struct fbtft_par *par)
> >  {
> > +	int rc;
> > +	struct device *dev = par->info->device;
> > +
> > +	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> > GPIOD_IN);
> > +	if (IS_ERR(par->gpio.te)) {
> > +		rc = PTR_ERR(par->gpio.te);
> > +		pr_err("Failed to request te gpio: %d\n", rc);
> > +		par->gpio.te = NULL;
> > +	}
> > +	if (par->gpio.te) {
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
> 
> #SadFaceEmoji
> 
> > +		}
> > +	} else {
> > +		pr_info("%s:%d, TE gpio not specified\n",
> > +			__func__, __LINE__);
> > +	}  
> 
> regards,
> dan carpenter
> 
Sorry,i will delete this log in patch v8
regards
zhangxuezhi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
