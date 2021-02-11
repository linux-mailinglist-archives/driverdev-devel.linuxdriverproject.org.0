Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A353188AE
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 11:57:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EBD56F694
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 10:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fgFEcjhicSTI for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 10:57:41 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id E33606F5A3; Thu, 11 Feb 2021 10:57:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB4DE6F682;
	Thu, 11 Feb 2021 10:57:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D902D1BF4D5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D5CF48722B
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bz9FUgc4GTmZ for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:57:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B0762870D9
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 10:57:07 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id s11so6479636edd.5
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=caSVfOVCyXZi4K6uM0rmrJ0XGff0G0ewWwkWS9QfX9g=;
 b=BIzLsJKbHvY/jIsiLzOjsu7Z3QPV+xtkpdIMJd0bhpYP35X6+a1niHtxColqbFzzH9
 Fz3cC02Qbov37J+Tq/0oLkRI/zjuEo6H8uZDregp1ahozo9sV/uEF+wl7/PlWQTLopKH
 mRhit3HkP51YZHJ/uVwdoNPXK9VGoI9tLCYofyBiMTCF6XnQ7H3vn2AFEB7FtiuWjzp3
 PrxstwgIW7MHBTw/pKlQOGMxZHHCEnN0Lly/m9qZkhstkmGDlAXnnTnFK6H/8n3Ba5y5
 ObZY9bNpJBP2jgpIyTyKM6iz/Dp1o4WPJafWbvDAsXUFDGvkPj7wxUEqKJW6HGVQMmpH
 HNgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=caSVfOVCyXZi4K6uM0rmrJ0XGff0G0ewWwkWS9QfX9g=;
 b=Fjn5zJH6tnNCPlcF/s9OdN1oi/+s+ixkctJWHKAb4GtpiT1ZEKKH89T4Dyt1ZSR34Z
 wUpe2hu7LoMW4u1eTex0/CjXNQUvPQFGPUvZZsrtHvfOff2T6Jf6w38LwtbYCBYMgo8h
 jEGSrRN5DBVnAHIPfVHWbxQcEreXg555Cxc7GtZXXlm8xWpmP1Bv4/BCbRoVyHj6fQep
 kLv4CJegPDrivbU8bFgE0lDzoZKayyL5NruCXyZ1rJ1LhrIOT2VEVgIK7mEEvljVdj3A
 401W2Yc14veHLUalgbghdsM/pnjPcyqTC7jbJq8EQ6jDs98fmvG3mygRkfzDAuti8Bo2
 JgFg==
X-Gm-Message-State: AOAM530wzaSvRzYq3NdBI1ianUFdYAiCGIBFM00P+SjBeqzSc024p8WU
 VLLqZ6yo6X3ThStkHbvpAYI=
X-Google-Smtp-Source: ABdhPJyqsAPx3nyXAZwt4GcT4hkdhJR2mcnbf5sWwXrBa9alLs4G8z7DyDvz7TTkiwY6mppGj7bkZA==
X-Received: by 2002:a05:6402:11d3:: with SMTP id
 j19mr7799711edw.314.1613041026130; 
 Thu, 11 Feb 2021 02:57:06 -0800 (PST)
Received: from TRWS9215.usr.ingenico.loc ([95.13.23.74])
 by smtp.gmail.com with ESMTPSA id n6sm3924794ejy.123.2021.02.11.02.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 02:57:05 -0800 (PST)
Date: Thu, 11 Feb 2021 13:57:04 +0300
From: Fatih YILDIRIM <yildirim.fatih@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH -next] staging: ks7010: Macros with complex values
Message-ID: <20210211105704.GA10351@TRWS9215.usr.ingenico.loc>
References: <20210211092239.10291-1-yildirim.fatih@gmail.com>
 <YCUAy1VhLV3lwa3H@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCUAy1VhLV3lwa3H@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 11:02:51AM +0100, Greg KH wrote:
> On Thu, Feb 11, 2021 at 12:22:39PM +0300, Fatih Yildirim wrote:
> > Fix for checkpatch.pl warning:
> > Macros with complex values should be enclosed in parentheses.
> > 
> > Signed-off-by: Fatih Yildirim <yildirim.fatih@gmail.com>
> > ---
> >  drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
> >  1 file changed, 12 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
> > index 39138191a556..c62a494ed6bb 100644
> > --- a/drivers/staging/ks7010/ks_hostif.h
> > +++ b/drivers/staging/ks7010/ks_hostif.h
> > @@ -498,20 +498,20 @@ struct hostif_mic_failure_request {
> >  #define TX_RATE_FIXED		5
> >  
> >  /* 11b rate */
> > -#define TX_RATE_1M	(u8)(10 / 5)	/* 11b 11g basic rate */
> > -#define TX_RATE_2M	(u8)(20 / 5)	/* 11b 11g basic rate */
> > -#define TX_RATE_5M	(u8)(55 / 5)	/* 11g basic rate */
> > -#define TX_RATE_11M	(u8)(110 / 5)	/* 11g basic rate */
> > +#define TX_RATE_1M	((u8)(10 / 5))	/* 11b 11g basic rate */
> > +#define TX_RATE_2M	((u8)(20 / 5))	/* 11b 11g basic rate */
> > +#define TX_RATE_5M	((u8)(55 / 5))	/* 11g basic rate */
> > +#define TX_RATE_11M	((u8)(110 / 5))	/* 11g basic rate */
> 
> But these are not "complex macros" that need an extra () added to them,
> right?
> 
> Checkpatch is a hint, it's not a code parser and can not always know
> what is happening.  With your knowledge of C, does this look like
> something that needs to be "fixed"?
> 
> thanks,
> 
> greg k-h

Hi Greg,

Thanks for your reply.
Actually, I'm following the Eudyptula Challenge and I'm at task 10.
Task is to find and fix a coding style in linux-next/drivers/staging.
I've checked many files with checkpatch.pl but they are almost fine :)
I found this one and prepared a patch for it.
Thanks in advance for your comments and advice.

Thanks,
Fatih
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
