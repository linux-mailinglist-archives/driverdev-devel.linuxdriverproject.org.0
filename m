Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D9030DB9B
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 14:46:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC7C285764;
	Wed,  3 Feb 2021 13:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1nQitspUrT_m; Wed,  3 Feb 2021 13:46:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 81AFF848FA;
	Wed,  3 Feb 2021 13:46:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F4D21BF27A
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 13:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5113720373
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 13:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zBkOAIENQ5er for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 13:46:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by silver.osuosl.org (Postfix) with ESMTPS id 948C71FE65
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 13:46:12 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id l18so4571736pji.3
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 05:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=P4GHGtAwiKXMfmomLv+YEDfidxFnJ5M+TB/8d9NYt7I=;
 b=S4VKO99DglRCK/77Leb9R75hUX5WLjPDw1B9jrrHySz+ky2upoNSf6VCi0QqnTIk+u
 We+2uwSvU7qq/3jcKSu8MnuE0ZZ1pPNKvjnyVqSrPMy23kFyrpMiqaoNIKWU/gcehmVr
 Zj0iYsNGDLalJ7m+sBRXiCGtjobg3op0vMWlL56X2Ao2DOj2YLQWTwofWR6hTO1UQgqf
 3SaFVVvVtR+kIwvVcHyWa+O6zRgLJlBB21QfXYDDHBfOGEHs1j0pz8agIah1YPnvRKI0
 kSdmrfTAyc+WdHTw2deW1mdU/kfdX84bgy7bgGA1CBnofrGBPZuky7New67lxM+Oy0NG
 Jlzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=P4GHGtAwiKXMfmomLv+YEDfidxFnJ5M+TB/8d9NYt7I=;
 b=TCxZCOZlExNs7YtbZWmOCW2MiAJv6A3Mqiz2ftgFfoc7p0B5orCB23/7UazPpFoBUu
 Y0To6tMZOYzU237dUbImKezhP5P0QyeJ/hx2MCCus2gyq7itlZYvqr6zaoGJyNcU9fRn
 SecfxEp64AfWe6zdPEI7n5hoGmkgQ9FYJtQ9oSx0dAUXEXobOoEzIAxf3zmbMyO9iENX
 s+FLij0a8mikpWzGebOQapdrKrEyifV8K54S6k8VNI9DibmJPvx9zuCE5F8wsmTci/DA
 1AA8xY7t5VFLuNV15UrA96rPDZT1EsO6i3wxWJNUXF9vUb8BQMIKRWSuWXc6M3KuoCgc
 Rw/A==
X-Gm-Message-State: AOAM531UKkzNufv4JeAf3LVl/ePHV1ptlx5yiDMaH/RvCfeg/OJW9IpW
 H4kOxlu7cDBU3y5X7Vb8sR8=
X-Google-Smtp-Source: ABdhPJzdMCEld0BrjgE5W0cv1qxQZc+pHwFC0BqpxloZICtwGwAGst/OhvlVssGZCt51VXOWOCsMeg==
X-Received: by 2002:a17:902:b411:b029:e0:8f0:5ba with SMTP id
 x17-20020a170902b411b02900e008f005bamr3084423plr.19.1612359972122; 
 Wed, 03 Feb 2021 05:46:12 -0800 (PST)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id ck10sm2291173pjb.3.2021.02.03.05.46.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 05:46:11 -0800 (PST)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Wed, 3 Feb 2021 21:45:51 +0800
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [bug report] staging: qlge: Initialize devlink health dump
 framework
Message-ID: <20210203134551.r4eghuzlvxji737y@Rk>
References: <YBpwGqe64phqNAYL@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBpwGqe64phqNAYL@mwanda>
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
Cc: devel@driverdev.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,


On Wed, Feb 03, 2021 at 12:42:50PM +0300, Dan Carpenter wrote:
>Hello Coiby Xu,
>
>The patch 953b94009377: "staging: qlge: Initialize devlink health
>dump framework" from Jan 23, 2021, leads to the following static
>checker warning:
>
>	drivers/staging/qlge/qlge_devlink.c:163 qlge_health_create_reporters()
>	error: uninitialized symbol 'reporter'.
>
>drivers/staging/qlge/qlge_devlink.c
>   151  void qlge_health_create_reporters(struct qlge_adapter *priv)
>   152  {
>   153          struct devlink_health_reporter *reporter;
>   154          struct devlink *devlink;
>   155
>   156          devlink = priv_to_devlink(priv);
>   157          priv->reporter =
>   158                  devlink_health_reporter_create(devlink, &qlge_reporter_ops,
>   159                                                 0, priv);
>   160          if (IS_ERR(priv->reporter))
>   161                  netdev_warn(priv->ndev,
>   162                              "Failed to create reporter, err = %ld\n",
>   163                              PTR_ERR(reporter));
>
>Obviously the static checker is correct because we initialized
>"priv->reporter" instead of "reporter".
>
>It's not clear to me how "reporter" is used.  Presumably this should be:
>
>	reporter = devlink_health_reporter_create(devlink, &qlge_reporter_ops,
>						  0, priv);
>	if (IS_ERR(reporter)) {
>		netdev_warn(priv->ndev,
>			    "Failed to create reporter, err = %ld\n",
>			    PTR_ERR(reporter));
>		return;
>	}
>	priv->reporter = reporter;
>

Thank you for finding this issue! "struct devlink_health_reporter
*reporter" is not needed since priv->reporter is used instead which
I think simplifies the code.

>But I can't actually find where "priv->reporter" is checked against
>NULL.  There should be some NULL checks, right?
>

There is no need to do NULL check since devlink_health_reporter_create
has done the job for us,

// net/core/devlink.c
__devlink_health_reporter_create(struct devlink *devlink,
				 const struct devlink_health_reporter_ops *ops,
				 u64 graceful_period, void *priv)
{
	reporter = kzalloc(sizeof(*reporter), GFP_KERNEL);
	if (!reporter)
		return ERR_PTR(-ENOMEM);

}

>   164  }
>
>regards,
>dan carpenter

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
