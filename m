Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F74496AC
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 03:28:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 676DE204A9;
	Tue, 18 Jun 2019 01:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id npRneLp4qCew; Tue, 18 Jun 2019 01:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 552E120243;
	Tue, 18 Jun 2019 01:28:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8CBC1BF32A
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DC7632045E
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id flLu4rSisaGt for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 01:28:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 0ACE220243
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 01:28:26 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id a186so6622432pfa.5
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 18:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EhVn2VpMWMF3z6W4xlxwl8wypc2+4cPuZsN0Q8XyuuU=;
 b=QxQiLwooXqMRIkh11AjjQpzoWU1haTiRRfs3v/EaP87xSPpKa5JBxenQkYqUhXEx6h
 kpkbHAPqme66p1Q341yD7s78oKCSHZNbtW+zdGku+s0PPSEg/N6Qm03TgetlcHx4TVbm
 xYbt5LQ9uNSfw7VHrymOZwu7PAirRKyhzC1CJLfiA5gaPz+PzM205K7+UjJt9CREqGLi
 ae96RwBqoMwWiMtBVkevOr02W/5NRlj9qAQsr2K1562c0CKuUfGB3UWJAQzknBqI/X0k
 O7NEMWsFgncoYbAlTl0F6/bux/7NUyVv3bT+YZkmsVAJkZdQhZA9809soAHcBiPWrxYB
 zUBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EhVn2VpMWMF3z6W4xlxwl8wypc2+4cPuZsN0Q8XyuuU=;
 b=TD44wJ4saYfSYCoBMJprzSXw7TQL20wiB+o9RaQS3l+Zv+I55GxdKDhvBHuDrNf4j8
 UKYBc7+/9fHU5xbHiAigIxRk1VKl5f/wyapSNScSSbzmmJyQI4tlKTngy5lTlEDTy4bB
 8u49CBk7WAjFV6FXpD8ukyN6DCsNBUfHWd0LuetVKb321mPegBajXZKRey1y4k7S40Wq
 5MkzQ0n12U0ATXnQJMMktjLI3bRF21z+Ibp7Vx5cb8f5qB4fmbjsLd94tD5K9j9UUCcW
 FuYhWBwQY8K447qGKG5z2AfYCmsGuOOO1WSK95RXpSrZEQB4W0uGPHQLTOuPA33mF/Dm
 G/jQ==
X-Gm-Message-State: APjAAAXV1W9Gh8+umeWEdGP1zuGAIW7aeyF0Ep57iNNffKaeMvrf/G8T
 cl6JEcrB1cZ42oWM7i8wi5s=
X-Google-Smtp-Source: APXvYqzwqhVNBJpFvgKBoGS/o0RnWQY7px1RA77j748IdScaUq3udhxsYRuSfDF2Jy9SBRk7xBSF7A==
X-Received: by 2002:a62:2643:: with SMTP id m64mr113828678pfm.46.1560821305718; 
 Mon, 17 Jun 2019 18:28:25 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id k4sm3153187pfk.42.2019.06.17.18.28.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 18:28:25 -0700 (PDT)
Date: Tue, 18 Jun 2019 06:58:20 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8723bs: os_dep: ioctl_linux:  Make use
 rtw_zmalloc
Message-ID: <20190618012819.GA7963@hari-Inspiron-1545>
References: <20190616053250.GA16116@hari-Inspiron-1545>
 <20190616071522.GE28859@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190616071522.GE28859@kadam>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 16, 2019 at 10:15:22AM +0300, Dan Carpenter wrote:
> On Sun, Jun 16, 2019 at 11:02:50AM +0530, Hariprasad Kelam wrote:
> > rtw_malloc with memset can be replace with rtw_zmalloc.
> > 
> > Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 +++---------
> >  1 file changed, 3 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index fc3885d..c59e366 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -478,14 +478,12 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
> >  		if (wep_key_len > 0) {
> >  			wep_key_len = wep_key_len <= 5 ? 5 : 13;
> >  			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
> > -			pwep = rtw_malloc(wep_total_len);
> > +			pwep = rtw_zmalloc(wep_total_len);
> 
> We should not introduce new uses of rtw_malloc() or rtw_zmalloc().  They
> are buggy garbage.  Use normall kmalloc() and kzalloc().
Hi Dan Carpenter,

Sure , will  resend this patch with suggested changes.

Thanks,
Hariprasad k

> 
> regards,
> dan carpenter
 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
