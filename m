Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFBB30DBC4
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 14:50:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB20D80868;
	Wed,  3 Feb 2021 13:50:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id smDZnipaps6Q; Wed,  3 Feb 2021 13:50:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80662840B2;
	Wed,  3 Feb 2021 13:50:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E19881BF27A
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 13:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DE47187123
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 13:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KFE1NnZDWOvw for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 13:50:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 900078710A
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 13:50:24 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id x9so8530830plb.5
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 05:50:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sJZTLx+wKAWIbKuFm4LnLXwbwiJWc4BnsCezUdYc3sM=;
 b=hWKPKYPMRwVInqHOLoFeqYKaNXcKDNSkIZeUbxx05bVkNId4uj+SWLdONYQvKciJQN
 Y5PcMgglVFRLMPKUQOm5RCj97kVaKviYNlhDYlRiwNJbokm10Grs59j2g4HTL4p/u+aW
 FCxEYfGr0/Jy5IhL2a1ugaM7KxeiDOTPN++2T/QxTQhVsRydS2qfzeyB9ODFi8Jssyai
 J5BhyqnaDkRSsFrKft7F7nLdBRupgurZyHWjhQmPRd6cZ7gDdDIuMrbGm0kGruYCKHiC
 Muh86zXtdEK1dQrUd5HUIgYMEnoNio1nBDE0HJF/M0wUEroGlE3RuHcgYgoliEhEcVsm
 xPRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sJZTLx+wKAWIbKuFm4LnLXwbwiJWc4BnsCezUdYc3sM=;
 b=ofSXbv1ve744fWOqwgiNgonyuYfS//YYHaTnY1UdM1+tPcYYlhDDMwOg3l1ClANQHi
 uDPmDBx/7fBpKaPJTMfTM/3jYBpKwaZnVtrWQgP8wnTMDReMrPzJZ/EGJ5s7cHdziMzL
 4L+Ph5ZjWxeasZNkZMWzlmV/TtBCcKHtfqvjnjH/slWYKIzzaKA3WkRUjygOAy/dZxGi
 ehP4da3v0+uAAD7Cwi06KQol0SuJrClOVZLcviPZFlgKcdZYCF4dDKdSxDXlWqkup00O
 nTznCge+CKWYp4vfeBpy7AK6HQbeFASGnn04slopAJbQcvWZpS0gV9YpbHqEWsEjsa2X
 ZfpQ==
X-Gm-Message-State: AOAM530bGB6OQW06414Of5yMjBA/lJJa3n4ztwHSguqtLRKwaXIwmSa5
 2c2trZDYBkFYWS85qqkia5o=
X-Google-Smtp-Source: ABdhPJzGPKdXUny+epDEYahw3mO/tST1Qn7idQVzLqZ/A0x72nx8O4cJCUr6bK9l36Gv79YdN1OmAQ==
X-Received: by 2002:a17:902:6b02:b029:da:c6c0:d650 with SMTP id
 o2-20020a1709026b02b02900dac6c0d650mr3364377plk.74.1612360224157; 
 Wed, 03 Feb 2021 05:50:24 -0800 (PST)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id x63sm2532560pfc.145.2021.02.03.05.50.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 05:50:23 -0800 (PST)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Wed, 3 Feb 2021 21:50:09 +0800
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] staging: qlge: fix read of an uninitialized pointer
Message-ID: <20210203135009.4boh3fhpaydysxej@Rk>
References: <20210203133834.22388-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210203133834.22388-1-colin.king@canonical.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 03, 2021 at 01:38:34PM +0000, Colin King wrote:
>From: Colin Ian King <colin.king@canonical.com>
>
>Currently the pointer 'reporter' is not being initialized and is
>being read in a netdev_warn message.  The pointer is not used
>and is redundant, fix this by removing it and replacing the reference
>to it with priv->reporter instead.
>
>Addresses-Coverity: ("Uninitialized pointer read")
>Fixes: 1053c27804df ("staging: qlge: coredump via devlink health reporter")
>Signed-off-by: Colin Ian King <colin.king@canonical.com>
>---
> drivers/staging/qlge/qlge_devlink.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>
>diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
>index c6ef5163e241..86834d96cebf 100644
>--- a/drivers/staging/qlge/qlge_devlink.c
>+++ b/drivers/staging/qlge/qlge_devlink.c
>@@ -150,7 +150,6 @@ static const struct devlink_health_reporter_ops qlge_reporter_ops = {
>
> void qlge_health_create_reporters(struct qlge_adapter *priv)
> {
>-	struct devlink_health_reporter *reporter;
> 	struct devlink *devlink;
>
> 	devlink = priv_to_devlink(priv);
>@@ -160,5 +159,5 @@ void qlge_health_create_reporters(struct qlge_adapter *priv)
> 	if (IS_ERR(priv->reporter))
> 		netdev_warn(priv->ndev,
> 			    "Failed to create reporter, err = %ld\n",
>-			    PTR_ERR(reporter));
>+			    PTR_ERR(priv->reporter));
> }
>--
>2.29.2
>

Thanks for fixing this issue.

Reviewed-by: Coiby Xu <coiby.xu@gmail.com>

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
