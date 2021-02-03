Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E6530E7EA
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 00:54:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7A6CF8614E;
	Wed,  3 Feb 2021 23:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7u0G4oPngN6Q; Wed,  3 Feb 2021 23:54:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 15E4F86101;
	Wed,  3 Feb 2021 23:54:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19E281BF578
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 23:54:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1671886BC4
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 23:54:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cgf9eAjsVWe8 for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 23:54:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91B1686822
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 23:54:44 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id s24so627601pjp.5
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 15:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nZAouJ9Q1u3X+ZvtRh/Vg0EzFXPDM+LocfiBgAhlYWM=;
 b=nBTC3wQT6lumczDmMbdRa0QZ5BkCw36PRnazOhzcdUGeaLXDNANZa4gSgS9G3JbbCx
 t3HLk0MvoeygGTbj+eEC6u/r57qUAmb/5IO4hhoDSxQVkPRDZD2pHCb+/fCEtJgSBya9
 9v99gKL/22f06SM+Sla3HyP/QVD0ud96TRBiDLJtXfENvsBG1NuP0M0VYBYX+4PJVY8W
 MpAHi9U6lRWHR99br4z2MI0gvdecqJl2oct0ZIhY7Vm6m/Gy/qrjB2+YCz7cB8ZJ7tQR
 zK6Gru4e9eYax4fEOEn5vV6Gb7gaRL69esJQAYKeI40hxlumC9k+EFecStMdDqUXF9RB
 pHuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nZAouJ9Q1u3X+ZvtRh/Vg0EzFXPDM+LocfiBgAhlYWM=;
 b=k5fzrVIIJZyiBgcymIpQM46PeYgwfPR36fBuwH3sQMoIL9R9ksW+AhELZyLsgn+IsK
 9VgO0on3Ysp7kL49RN3ORn3+ouVunU0z1D+ztezhq1DvRX9D+Xd+SqzCtQh3sS1rznEU
 uAyBQlzHeVDWh4mSSNQgg9y/5HITlFu58Kv3Ctedm6TTedyS2N7qnPMGvNBiIF5mOvml
 VWK9KFtCwNMbEhpv8/a9jbseiF+nGz2Z9WIrDK+n6Ga7y8/bheCfDsIIA5vn36g9ws1m
 EhW69ttanuoA9VrVIo/OQYqXGTdjzJc2DbdJt4eDc1HSweJU+2NR8R2codvjrJ9+CDW9
 6PVA==
X-Gm-Message-State: AOAM532sVjUoXGHYk6D0kV+iGoUUSvJHLiX4yoiCou4xuoTlpSz/3L1V
 Oh8a325SlnLmlLhJJfN2PIE=
X-Google-Smtp-Source: ABdhPJzz9gryvZhG6owi3SNR7aDFoyiFYiWmwcMenJDwg5Nx9WZSdcU27bWsJ5sKfyEO2ER6RuPing==
X-Received: by 2002:a17:90a:b397:: with SMTP id
 e23mr5258360pjr.7.1612396484108; 
 Wed, 03 Feb 2021 15:54:44 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id o190sm4025526pgo.50.2021.02.03.15.54.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 15:54:42 -0800 (PST)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Thu, 4 Feb 2021 07:36:34 +0800
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [bug report] staging: qlge: Initialize devlink health dump
 framework
Message-ID: <20210203233634.n5ehklp6wpjth6n2@Rk>
References: <YBpwGqe64phqNAYL@mwanda> <20210203134551.r4eghuzlvxji737y@Rk>
 <20210203143601.GG20820@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210203143601.GG20820@kadam>
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

On Wed, Feb 03, 2021 at 05:36:01PM +0300, Dan Carpenter wrote:
>On Wed, Feb 03, 2021 at 09:45:51PM +0800, Coiby Xu wrote:
>> Hi Dan,
>>
>>
>> On Wed, Feb 03, 2021 at 12:42:50PM +0300, Dan Carpenter wrote:
>> > Hello Coiby Xu,
>> >
>> > The patch 953b94009377: "staging: qlge: Initialize devlink health
>> > dump framework" from Jan 23, 2021, leads to the following static
>> > checker warning:
>> >
>> > 	drivers/staging/qlge/qlge_devlink.c:163 qlge_health_create_reporters()
>> > 	error: uninitialized symbol 'reporter'.
>> >
>> > drivers/staging/qlge/qlge_devlink.c
>> >   151  void qlge_health_create_reporters(struct qlge_adapter *priv)
>> >   152  {
>> >   153          struct devlink_health_reporter *reporter;
>> >   154          struct devlink *devlink;
>> >   155
>> >   156          devlink = priv_to_devlink(priv);
>> >   157          priv->reporter =
>> >   158                  devlink_health_reporter_create(devlink, &qlge_reporter_ops,
>> >   159                                                 0, priv);
>> >   160          if (IS_ERR(priv->reporter))
>> >   161                  netdev_warn(priv->ndev,
>> >   162                              "Failed to create reporter, err = %ld\n",
>> >   163                              PTR_ERR(reporter));
>> >
>> > Obviously the static checker is correct because we initialized
>> > "priv->reporter" instead of "reporter".
>> >
>> > It's not clear to me how "reporter" is used.  Presumably this should be:
>> >
>> > 	reporter = devlink_health_reporter_create(devlink, &qlge_reporter_ops,
>> > 						  0, priv);
>> > 	if (IS_ERR(reporter)) {
>> > 		netdev_warn(priv->ndev,
>> > 			    "Failed to create reporter, err = %ld\n",
>> > 			    PTR_ERR(reporter));
>> > 		return;
>> > 	}
>> > 	priv->reporter = reporter;
>> >
>>
>> Thank you for finding this issue! "struct devlink_health_reporter
>> *reporter" is not needed since priv->reporter is used instead which
>> I think simplifies the code.
>>
>> > But I can't actually find where "priv->reporter" is checked against
>> > NULL.  There should be some NULL checks, right?
>> >
>>
>> There is no need to do NULL check since devlink_health_reporter_create
>> has done the job for us,
>>
>> // net/core/devlink.c
>> __devlink_health_reporter_create(struct devlink *devlink,
>> 				 const struct devlink_health_reporter_ops *ops,
>> 				 u64 graceful_period, void *priv)
>> {
>> 	reporter = kzalloc(sizeof(*reporter), GFP_KERNEL);
>> 	if (!reporter)
>> 		return ERR_PTR(-ENOMEM);
>>
>> }
>
>No, Sorry I was unclear.  I mean that instead of error handling this
>qlge_health_create_reporters() function just prints an error:
>
> 		netdev_warn(priv->ndev,
> 			    "Failed to create reporter, err = %ld\n",
> 			    PTR_ERR(priv->reporter));
>
>Then it looks like it gets passed to qlge_reporter_coredump() which
>dereferences "reporter" without checking.  That will crash, right?
>

Now I see what you mean. Thanks for the explanation! I'll send a patch
to address this issue.

>regards,
>dan carpenter
>

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
