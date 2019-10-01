Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA43BC3EC9
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 19:39:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C06481E2B;
	Tue,  1 Oct 2019 17:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g09xERdPUByZ; Tue,  1 Oct 2019 17:39:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1DF0A82072;
	Tue,  1 Oct 2019 17:39:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 900DD1BF951
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 17:39:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 73F618409C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 17:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dvEzr7axCd53
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 17:39:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AAF4C81926
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 17:39:32 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id s1so10144247pgv.8
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 01 Oct 2019 10:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Uce97h6GKpt9IKiunnkkngsq56RFy7BNh8tJ10yCPLw=;
 b=CfPhqFm8vMeTW2Cj7KXcOBi0Sa2AiJYT8R+hE3s7WpXAxeQEiZ+y+nszHLsJ2t5qe1
 bJ2ybURfl9Kk118NHda0t7ntn7E+Pnwfsi02BuXYOql7U+MmJ4Solit2mdAc+a0eopoy
 R/mLMBUWRKugHA9Ii+8aGcB5PuhXQVbIAlj5i5C3C2jKvG2GBfI3v0oHgVQSh5CKzSul
 40EV8PpYtYLGz9j+N2wE5aStIdVrWfdKS7R2GRGMyU2KEZlK8vzKLU3nKOzPcbCl+8mW
 dTpVE06lxB81euePHkkiXQ8c9S5GcuNnHJEg+o3FRRNHcguhaSBNtJC0FpiyuMWy0NIR
 lBPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Uce97h6GKpt9IKiunnkkngsq56RFy7BNh8tJ10yCPLw=;
 b=kwYHKilkvsgBVeIox3c+OqeY3YxT5ws+vuDefHpWwqCd8NefK/w4yum3v0R1KKItr6
 8/u519KsFvMqWKo7Cb8UO9xa3ng39ldscS0akGcTSQxcO/o7HazNXZV+eDMyTFJnG6g0
 Y/+DYLD/xJXYIg7ji4GqAPzOCAEGjwTwbCd2ejhSec8PNUmuciblx3n8hZvJM0TbLnL8
 q7ip9ur8p3pTS9Ic6/fc7xvjYRLqbEOYuFThxb+W4414+2ewVlmMgaROb1NW3+hJb/D8
 xstBXKGP2BAgjiNZ0MU46GljUkiVgOmbk9w1ksXQKqQptD12uZd0u7vHGC1lmo2q/Fe3
 E5+g==
X-Gm-Message-State: APjAAAWt8DOBq8BECNil+8Mcsn4P57m5m0aBU2FAElaofg3ctqqNoQIy
 4iwnUoK39AneCq9ChQsO152cG5v/9C+NxQ==
X-Google-Smtp-Source: APXvYqx6AacZeHcU5Y05jbfpvPPqYBQ2i4O6hikdK0VU/8kXjuq9In/SL5Q/1f0IzEPMYuyuaUCNoQ==
X-Received: by 2002:a63:6c8a:: with SMTP id
 h132mr31235371pgc.256.1569951571837; 
 Tue, 01 Oct 2019 10:39:31 -0700 (PDT)
Received: from SARKAR ([1.186.12.91])
 by smtp.gmail.com with ESMTPSA id k5sm15332113pgo.45.2019.10.01.10.39.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 10:39:31 -0700 (PDT)
Date: Tue, 1 Oct 2019 23:09:26 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8712: Replace snprintf with scnprintf
Message-ID: <20191001173926.GA11819@SARKAR>
References: <20190910184931.GA8228@SARKAR>
 <20191001084514.GJ27389@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001084514.GJ27389@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org,
 florian.c.schilhabel@googlemail.com, larry.finger@lwfiner.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 01, 2019 at 11:45:14AM +0300, Dan Carpenter wrote:
> > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > index b08b9a191a34..ff5edcaba64d 100644
> > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > @@ -142,7 +142,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
> >  		memset(buf, 0, MAX_WPA_IE_LEN);
> >  		n = sprintf(buf, "wpa_ie=");
> >  		for (i = 0; i < wpa_len; i++) {
> > -			n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
> > +			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
> >  						"%02x", wpa_ie[i]);
> >  			if (n >= MAX_WPA_IE_LEN)
>                             ^^^^^^^^^^^^^^^^^^^
> It checks for overflow here.  This check is impossible now and doesn't
> make sense.  The other loop is similar.

Good catch! I must have overlooked this.
"n" cannot be greater than MAX_WPA_IE_LEN but it can be equal to that
value. We can replace the '>=' with '==' so that we don't loop
unnecessarily when n has reached it's threshold.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
