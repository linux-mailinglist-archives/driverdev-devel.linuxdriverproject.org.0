Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A63DAF42
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 16:11:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2961024B04;
	Thu, 17 Oct 2019 14:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9bDJWJykMkEF; Thu, 17 Oct 2019 14:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1C33820409;
	Thu, 17 Oct 2019 14:11:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F6341BF82C
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 14:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6C4E886190
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 14:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kk-u1AWc6+8q for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 14:11:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F1A8F860FC
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 14:11:01 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id q10so3195277iop.2
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 07:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kD8P09ztJzsDdy3Q4JnHnCOWPuxy2rBIE7ir+ClVjQk=;
 b=YOVotuLVEyWRuJR/oNtS7l5z9o73AhjyCPMiiBgu9Xw68RHIbrdl2YJKsIzHAM5x4F
 PeOA+tNFmwVYPckBQRvdwRqZ09qr2Iyas2vgUb90SK+SgP7yW4nA93z1whUw4eRcjiO+
 iHYL/sy6swRBRT6RJ02xzWW04ioALogGzoVueA7ZoKv2UQEYQX1QbaywP1pQ2RExwDYo
 /liUexW31uOc+hota87jpEjXT4MX8yIqyGegGLuwMQ/YrBLNQnwYdTC9ly1PicJcynEb
 bYH5PNlCreptfseeyRZan5qHKK/fSzS05uu8frZtwAA2LLAYJaraVzi1JLjzaOE+Bowa
 y/OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kD8P09ztJzsDdy3Q4JnHnCOWPuxy2rBIE7ir+ClVjQk=;
 b=EogmmwNf2+mO98m6xQhMrFraAek/rsqn0LRq/Gc1rXHNTFWH7NGhF8h/KOVlgaxQ7u
 ItTJkNf8umYef5j9NuVPZSTHkkDsYyK22/+ZoB6zuzv4A9SlBVQ56ELtksC2AY3+6HMN
 v8Qjc4ySx5eUWNmznjwreeRg/gGGAxQ9TXqebEqrPvR+7XunFCmC+ChL9Shrczb01moX
 GIbjk4g05KbQbOLNX2BrGtHRa6i9orWIFt71VW3A8vG09fJxOCQ8LcKyY7lk02GD8sCf
 5/9BDxUoa4z7HBUz1iPICrwi5DhBH4JimltfnEylgVmtbj2ebaHzdbOgpJrn2K2yOd+d
 7enA==
X-Gm-Message-State: APjAAAU/tGGHSXrYZPowJs146ByGzncm/CCq9LSy1UtNvwxjiJ++sKDv
 o9tfdySnPNSjKEgEAlQ1oU8=
X-Google-Smtp-Source: APXvYqx5Rtp+yvyjhQdeEmVFkVzC4VdoFKlMz8vckOfz9HN2iqSSSNArGo7+15i2OipgOZS0Yex9Sw==
X-Received: by 2002:a5e:dd41:: with SMTP id u1mr3147307iop.230.1571321461163; 
 Thu, 17 Oct 2019 07:11:01 -0700 (PDT)
Received: from aliasgar ([159.41.8.12])
 by smtp.gmail.com with ESMTPSA id g79sm986672ilf.14.2019.10.17.07.10.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Oct 2019 07:11:00 -0700 (PDT)
Date: Thu, 17 Oct 2019 19:40:45 +0530
From: Aliasgar Surti <aliasgar.surti500@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging:rtl8723bs: removed unwanted if..else condition
Message-ID: <20191017141045.GA14175@aliasgar>
References: <1571234873-13847-1-git-send-email-aliasgar.surti500@gmail.com>
 <20191016145950.GC24678@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016145950.GC24678@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 16, 2019 at 05:59:50PM +0300, Dan Carpenter wrote:
> On Wed, Oct 16, 2019 at 07:37:53PM +0530, Aliasgar Surti wrote:
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -507,19 +507,9 @@ int rtw_cmd_thread(void *context)
> >  
> >  		cmd_process_time = jiffies_to_msecs(jiffies - cmd_start_time);
> >  		if (cmd_process_time > 1000) {
> > -			if (pcmd->cmdcode == GEN_CMD_CODE(_Set_Drv_Extra)) {
> > -				DBG_871X(ADPT_FMT" cmd =%d process_time =%lu > 1 sec\n",
> > -					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
> > -				/* rtw_warn_on(1); */
> > -			} else if (pcmd->cmdcode == GEN_CMD_CODE(_Set_MLME_EVT)) {
> > -				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
> > -					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
> > -				/* rtw_warn_on(1); */
> > -			} else {
> > -				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
> > -					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
> > -				/* rtw_warn_on(1); */
> > -			}
> > +			DBG_871X(ADPT_FMT "cmd= %d process_time= %lu > 1 sec\n",
> > +				 ADPT_ARG(pcmd->padapter), pcmd->cmdcode,
> > +					  cmd_process_time);
> 
> This last line is aligned to the wrong parenthesis.  It should be:
> 
> 			DBG_871X(ADPT_FMT "cmd= %d process_time= %lu > 1 sec\n",
> 				 ADPT_ARG(pcmd->padapter), pcmd->cmdcode,
> 				 cmd_process_time);
My bad. I will correct this and send v2.

Thanks,
Aliasgar

> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
