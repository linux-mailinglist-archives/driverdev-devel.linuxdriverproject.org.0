Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D89B96D0C2D
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Mar 2023 19:05:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D6C341E85;
	Thu, 30 Mar 2023 17:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D6C341E85
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MV6NwHBnM4-D; Thu, 30 Mar 2023 17:05:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04058402E5;
	Thu, 30 Mar 2023 17:05:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04058402E5
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F8E61BF3C8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 17:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5EFC942049
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 17:05:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EFC942049
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c0peLV0k_8wZ
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 17:05:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A08824204A
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A08824204A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 17:05:04 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 fy10-20020a17090b020a00b0023b4bcf0727so20384106pjb.0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 10:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680195904;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/RhTCvFU04Z911eDGmWlcdN2E+0Qy15cuZmJweiAivc=;
 b=oSs6XIU1ZtUouNqWTqPc6IcCXofIu7wVqT06N6yZ3NCppPu5hoD2mnEIMUyz/JN2uw
 v2nE4Nnesc5XbhvXdp0/1z/QZp472PEu3Zy1FrdO73RUm1DGJv8teQ2ZYRKbYo48CwfY
 W0/n4qKctemsFtbQCNpZN4WGDJiWclXvSz8jH+ZQqqMBW8vb2r7IqLiZsXvQN/HPNbkw
 fwnSB9Cs7QfLwzOb+pQBsR29hiQ6B5OGMxZmtH4NDELGUIKh4Kd5jOPT31n/7Fgu9ztR
 mNNS/tmWwEIuZRWbMuphQYFnF4CiZLjXCUPlunKMhpSKhRjKjtNcKjprvC2VTLa68hm0
 pxiw==
X-Gm-Message-State: AAQBX9d2JVlRCFlzcF3sh/Bqcm8xS1Q4for0IQh5QHDVI0wZ0l+2iFOa
 GwhZ+U9T59GphPdf0NNeUbnCRotCVuBj3C0R
X-Google-Smtp-Source: AKy350Zs4OW6OX4RIyWsRZaEsTlbNgRwErlR6RkRS+/xLHprZ6SkMogglY331/j4Pp1Q22KUWB/UsA==
X-Received: by 2002:a17:902:ced0:b0:19f:1c69:54b5 with SMTP id
 d16-20020a170902ced000b0019f1c6954b5mr25910790plg.12.1680195903901; 
 Thu, 30 Mar 2023 10:05:03 -0700 (PDT)
Received: from joel-ubuntu-desktop ([2407:4d00:2c02:823f:14a7:49e0:2d87:e0ad])
 by smtp.gmail.com with ESMTPSA id
 c1-20020a170902724100b001a198adb190sm25066247pll.88.2023.03.30.10.05.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 10:05:03 -0700 (PDT)
Date: Fri, 31 Mar 2023 01:04:59 +0800
From: "Joel C. Chang" <jcchangg3@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: ks7010: remove unnecesary parentheses
Message-ID: <ZCXBO0cugdyR80g3@joel-ubuntu-desktop>
References: <ZCWEM7DCDUEOzBe9@joel-ubuntu-desktop> <ZCWFcosyX0PllKLI@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCWFcosyX0PllKLI@kroah.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680195904;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/RhTCvFU04Z911eDGmWlcdN2E+0Qy15cuZmJweiAivc=;
 b=fvUJQbWt4yQoIbRQI7cGdmkpux1QTQ59o3AYRW4kc8O/u53k8CXl1SLTm5fxQsUa4z
 bzFy2QIdcXqUkTk6GcwIBShLWs5voSZjnFVEzCp+A3mCO2cknU0qlX/xKpIp6+hH5nlm
 mhNwrpl9JAKt8idKediVSksmKqszs+DS3A8KkQ1HDM0NdKsRZMybebctL8JKXH++JM3s
 jxWL9lNuAr6RRq6/awFn2H2bsboN6p0uJj8wmgCwY4RglnGrgScwfP/7LXR2dSB8+mjS
 VE/k5oE8/8SJYu+Wa9lKXNdI0OYkVYmWc5EcDeXrOVUR7qt5g63rb6aE/nBX14rz4gq4
 Mw4g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=fvUJQbWt
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
Cc: linux-staging@lists.linux.dev, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 30, 2023 at 02:49:54PM +0200, Greg KH wrote:
> On Thu, Mar 30, 2023 at 08:44:35PM +0800, Joel Camilo Chang Gonzalez wrote:
> > Remove parentheses not needed in if statement
> > 
> > Signed-off-by: Joel Camilo Chang Gonzalez <jcchangg3@gmail.com>
> > ---
> >  drivers/staging/ks7010/ks_hostif.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> > index af3825578d85..8bded7e88ce7 100644
> > --- a/drivers/staging/ks7010/ks_hostif.c
> > +++ b/drivers/staging/ks7010/ks_hostif.c
> > @@ -129,7 +129,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info *ap_info)
> >  	size = (ap_info->rsn.size <= RSN_IE_BODY_MAX) ?
> >  		ap_info->rsn.size : RSN_IE_BODY_MAX;
> >  	if ((ap_info->rsn_mode & RSN_MODE_WPA2) &&
> > -	    (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2)) {
> > +	    priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) {
> 
> If you look in the archives, you will see that I reject this type of
> patch all the time.
> 
> Also, please use scripts/get_maintainer.pl to determine who to send this
> to, you used a very old mailing list address that is long dead.
> 
> thanks,
> 
> greg k-h

Thanks for the input. I wasn't sure who to send it to, since the TODO in
the driver and the script have different email addresses.

Is there a place to check for inactive mailing lists?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
