Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D477808E8
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Aug 2019 04:40:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF74385AE4;
	Sun,  4 Aug 2019 02:40:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wFC_ODxVsCdm; Sun,  4 Aug 2019 02:40:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A6AC85644;
	Sun,  4 Aug 2019 02:40:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 404E61BF336
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 02:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3864786523
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 02:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IXuAyjqCYY20 for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 02:38:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 94480864F4
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 02:38:50 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id y8so35123239plr.12
 for <devel@driverdev.osuosl.org>; Sat, 03 Aug 2019 19:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=H2kGdFHGIeclWVr2UklHiFu8m0yV1tr6Ja1uSrC9yrU=;
 b=tP3qwu4p8GBWE8MXvyloMEeMxNcfG9oqiL/iohCbp15o7RI7C6M3uxeOcDRICZqIMl
 D6xpXXir3LaQxGqAReCLckgjEbmPhIKBCGmsKGgmOppzCeBu04+zmWaVEBTpt5biT++o
 tNxAS+vC76t+2kCphwNFHOAKjqcQ4sk32yvAU91Yjrc94wj3395xmxr6+Z2fmCutonM+
 Wx3JuG9PRGI7szP0m14/jfDrx33N3ZpoJAG7GiKwEftlEC3SIvcJUEqHhLT1o5nOMcnX
 r+93WWtX7Yix0ZdwLUb0emMD7lRnJzJHHF6A2mFYaGZtDo+yRCHbkmb+xV+Zswg74eLr
 EtoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H2kGdFHGIeclWVr2UklHiFu8m0yV1tr6Ja1uSrC9yrU=;
 b=SeIY1efBQv8RYW9R9kLu9EF7tkDJ4kY+JAF1UX+aTkCF0glysK4hUEfvKOHdafmCKV
 pRQB7xT4yI58iXN2T+7y4Bd2oNZw770J1dqmmIE5i35QxOltjddywqX0DjwE2ENCFRe9
 7isS+xtKwWNaniENhCnCdWIZKImUfw4US81+1kY2CYSybSpLr4XyS7QSnhLWHsgrlUBL
 bXDEyG2heJMKlRo0IHmqEGOazhvn5FTyNxBtHfKWJOCurYbwECNbndIq0z7DSBsf/Sq1
 58eakjFQLCFz0I5uSRCaNbWdplSD+sLJQSdIdFKku1q1a+M+c777eb2Erj8IjIkm+OLq
 CP7Q==
X-Gm-Message-State: APjAAAUN/TVSplBigDUR4+Rvbw4RXQ/d59QluPZucnmmYevvTwXk470R
 SFy754siiJ7ylc/rBnsBqs4=
X-Google-Smtp-Source: APXvYqwCmMuA2B2qY1a0yJbpRj+pAgCYX255arn2ubObJ8hMFVpZIo3GL/aqyY/V2WN9a5lAVmtjqw==
X-Received: by 2002:a17:902:86:: with SMTP id
 a6mr51950683pla.244.1564886330246; 
 Sat, 03 Aug 2019 19:38:50 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id v13sm92909934pfe.105.2019.08.03.19.38.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 03 Aug 2019 19:38:49 -0700 (PDT)
Date: Sun, 4 Aug 2019 08:08:44 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Joe Perches <joe@perches.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Michiel Schuurmans <michielschuurmans@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8192e: Make use kmemdup
Message-ID: <20190804023844.GA14043@hari-Inspiron-1545>
References: <20190803174038.GA10454@hari-Inspiron-1545>
 <774ade692f5e64ab1f4fc7b35b9eeae69e11cf71.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <774ade692f5e64ab1f4fc7b35b9eeae69e11cf71.camel@perches.com>
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

On Sat, Aug 03, 2019 at 10:52:04AM -0700, Joe Perches wrote:
> On Sat, 2019-08-03 at 23:10 +0530, Hariprasad Kelam wrote:
> > As kmemdup API does kmalloc + memcpy . We can make use of it instead of
> > calling kmalloc and memcpy independetly.
> []
> > diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
> []
> > @@ -1382,10 +1382,8 @@ rtllib_association_req(struct rtllib_network *beacon,
> >  	ieee->assocreq_ies = NULL;
> >  	ies = &(hdr->info_element[0].id);
> >  	ieee->assocreq_ies_len = (skb->data + skb->len) - ies;
> > -	ieee->assocreq_ies = kmalloc(ieee->assocreq_ies_len, GFP_ATOMIC);
> > -	if (ieee->assocreq_ies)
> > -		memcpy(ieee->assocreq_ies, ies, ieee->assocreq_ies_len);
> > -	else {
> > +	ieee->assocreq_ies = kmemdup(ies, ieee->assocreq_ies_len, GFP_ATOMIC);
> > +	if (!ieee->assocreq_ies) {
> >  		netdev_info(ieee->dev,
> >  			    "%s()Warning: can't alloc memory for assocreq_ies\n",
> >  			    __func__);
> > @@ -2259,12 +2257,10 @@ rtllib_rx_assoc_resp(struct rtllib_device *ieee, struct sk_buff *skb,
> >  			ieee->assocresp_ies = NULL;
> >  			ies = &(assoc_resp->info_element[0].id);
> >  			ieee->assocresp_ies_len = (skb->data + skb->len) - ies;
> > -			ieee->assocresp_ies = kmalloc(ieee->assocresp_ies_len,
> > +			ieee->assocresp_ies = kmemdup(ies,
> > +						      ieee->assocresp_ies_len,
> >  						      GFP_ATOMIC);
> > -			if (ieee->assocresp_ies)
> > -				memcpy(ieee->assocresp_ies, ies,
> > -				       ieee->assocresp_ies_len);
> > -			else {
> > +			if (!ieee->assocresp_ies) {
> >  				netdev_info(ieee->dev,
> >  					    "%s()Warning: can't alloc memory for assocresp_ies\n",
> >  					    __func__);
> 
> Could also remove the netdev_info() uses for allocation failures.
> These are redundant as a dump_stack() is already done when OOM.
> 
Sure will do.

Thanks,
Hariprasad k
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
