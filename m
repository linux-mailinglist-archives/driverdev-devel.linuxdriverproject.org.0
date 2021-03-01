Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE4E32802E
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 15:02:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CEE483F9A;
	Mon,  1 Mar 2021 14:02:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n6SZXzHPJKpg; Mon,  1 Mar 2021 14:02:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC83583BC8;
	Mon,  1 Mar 2021 14:02:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E7531BF372
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 14:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0DCE24EB95
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 14:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m4P84I1PUq9o for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 14:02:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C5484DD86
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 14:02:08 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id u8so17763396ior.13
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 06:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Fq/x49jqXmKojHug6ANYoucwqHdUcneKoCYrYkNt1YA=;
 b=ijJZQHGB4NRwo/ukqqFMsJafwaIwnClzvtDyyPJC5LAyiwxHrtCX6JB/W0bPwjDCTV
 zLttM0NPNRSf257SjY3trmWKn327AcFx0rhJH2vYrk2iiY8AFQkwb9FqoE9fMAGWSFP/
 wAizOV4617F2FVfOmGnbcCQm7DGQicusR0A2iFPphg5W4q96EM926JfyfKQt4gIKc9uW
 IfTmeMl4yPilMNbcQidd4ALxKD6Lw5swFQpcLz/zC38evOA0IMSVa1K3XI7xeSWRHojZ
 SgvY5/V4185dAte+lahMigKfH6bNFaHSfZIMDt4DlctA61zaliRIobu9dwQIkZz0gZNB
 2wjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Fq/x49jqXmKojHug6ANYoucwqHdUcneKoCYrYkNt1YA=;
 b=D/7pECXFGKt/+Dk4rRXDIwd/pVO0IAghfBQd3mR2Wx6DUzhDKVIyaQfgu4V4VBgqYu
 nC/i+fbZaYfV7tky5zlRHg2oHE8TLKS4ZNBAljitzu1fZKErfqCUJOM93jELtOYn9B7h
 CG/XC2pDh+0G8TP5pmBmLIZ8XLWHkE37LOp1YgRYZ3Z/oajfic1hpDDG0FJY6+r83OO/
 uNJLVN5APdQms3/0kENNogcSb9cKtIlxYT3K8nNevjvbys9C9D8ReQPplmoi4Hr/2NAV
 yfZKUQ3LLYzN0/8nXUUVdi432ofAM0Gs4n9SsvOUJOaYJFiJx8vATkq0xacGz7Br3J4k
 fEBw==
X-Gm-Message-State: AOAM533sGxqTmFHN7GURLoSZChE2Llb0sneJB6GWrMWFmPKakbHfodv0
 b5TbYwwB8hCRy9zdJvvuNA==
X-Google-Smtp-Source: ABdhPJwGEn45kphPrB5mlMCCgDpD8GaB+rXApb8mkrVKyQNLu3OrzxRfaOjIPeALy8b4t2mfdzwd6A==
X-Received: by 2002:a02:30cb:: with SMTP id q194mr15950547jaq.57.1614607327547; 
 Mon, 01 Mar 2021 06:02:07 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id m15sm8714489ilh.6.2021.03.01.06.02.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 06:02:06 -0800 (PST)
Date: Mon, 1 Mar 2021 21:01:54 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: Re: [PATCH 3/3] staging: rtl8723bs: os_dep: Replace sprintf with
 scnprintf
Message-ID: <YDzz0kfj/PKSnIWD@mainframe>
References: <cover.1614603705.git.cfebriyanto@gmail.com>
 <502b559ee7d6a2736f10d8228002ac7780243cd1.1614603705.git.cfebriyanto@gmail.com>
 <20210301134109.GS2087@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301134109.GS2087@kadam>
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

On Mon, Mar 01, 2021 at 04:41:09PM +0300, Dan Carpenter wrote:
> On Mon, Mar 01, 2021 at 08:13:54PM +0700, Candy Febriyanto wrote:
> > @@ -5082,7 +5084,7 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
> >  		case IW_PRIV_TYPE_BYTE:
> >  			/* Display args */
> >  			for (j = 0; j < n; j++) {
> > -				sprintf(str, "%d  ", extra[j]);
> > +				scnprintf(str, sizeof(str), "%d  ", extra[j]);
> >  				len = strlen(str);
> 
> You could save a little code and combine the two statements:
> 
> 				len = scnprintf(str, sizeof(str), "%d  ", extra[j]);

Good catch, I'll send a V2.

> 
> For bonus points, you could write a Coccinelle script to look for that
> pattern of calling strlen() on a freshly sprintfed string.

Sounds like a good idea, I don't know how to do it though so feel free.

> 
> >  				output_len = strlen(output);
> >  				if ((output_len + len + 1) > 4096) {
> 
> regards,
> dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
