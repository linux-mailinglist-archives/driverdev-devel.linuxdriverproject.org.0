Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D35F620B0D2
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 13:47:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6037A227FC;
	Fri, 26 Jun 2020 11:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rlP2mUwPRSwI; Fri, 26 Jun 2020 11:47:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 136A2204BE;
	Fri, 26 Jun 2020 11:47:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9E841BF36E
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 11:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A9A7C204BE
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 11:47:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RZaPhmcN4864 for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 11:47:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 4B25020107
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 11:47:41 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id e8so4858458pgc.5
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 04:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qQNGW1ubfzePDn/nTOZGpiUilVnPMC5Ou6eBIhQTrzs=;
 b=ODOylG7bpS1L8pej1mt62biajx9xwQFo0p9iDxsI/oGwkmPvMJ/0GXIWzTv6TN0P6+
 CHLJtwm0Ry5loEGOYSS5DJuEz6ybKhjiqHa8FFY+bcoC8O0ohxSAFeWMSl5jLCp8cqgk
 ayPh9Rhgrirl2xGv1L5KQu3VK8uLBB108tHDqEJuX8ZlMjUgpA4wNXA8tUelglqkPChg
 RnWCHye7vZsA4kVvVyWl/8fLU0fTgmje3cvLpPyYfHIyy/rWNWQQs+MIfdmGAuUUT4Er
 UqGjTOTC1pUntLCWjCu81H4pt1y4JspScJCcYnB2DzxNGeb1qv6JC7H/yQ2mmB+4gmL/
 q3Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qQNGW1ubfzePDn/nTOZGpiUilVnPMC5Ou6eBIhQTrzs=;
 b=S9eovdg+RgnSb/mteUBFxMv/zsbWAURZsg+2OeJu1xjykBzMn9amYd6Op19Atq92m1
 MCuQamsnjQZ3k0v8gcqNxr3rTTejV+7NRbjYaDvbTnXDCm7IaRclXk5YzwJ5eTpfUmOB
 4bGEjGyqTD7ocPojFn41lW7KRp1Sv8XLQ7BbzDQjhXzUcJSXxehz0m2gzxAQ7oTT9Pdq
 /9oXoJEQQlrd5SjOM5BJqrQInsP9HqhU5u0dYOExAaWpVpz473ibd6/AraU+PARgFlBt
 610Gvs4cjpIY+j0ddpFsqdhqP5nuXAuslCm+4FWaJv2F0jGEnBKVpKuRg/svwfogy+kG
 aghA==
X-Gm-Message-State: AOAM5305/A0+TcEdNHPcpWOWnOxnlLoCpjRIj1Z6Noxmz3XP5dN4DQrl
 xxN1G05mZ5ucqYgJy6nvYWw=
X-Google-Smtp-Source: ABdhPJyNQB41X8+JmdMeQ2PuQfgsiTxZvhldBnutus1649bWIwUSZJPdWiPXZL9wKFWrHZzkJEZ0fw==
X-Received: by 2002:aa7:98c6:: with SMTP id e6mr2460572pfm.17.1593172060828;
 Fri, 26 Jun 2020 04:47:40 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id o1sm11077238pjp.37.2020.06.26.04.47.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 04:47:40 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Fri, 26 Jun 2020 19:47:33 +0800
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 2/2] staging: qlge: fix else after return or break
Message-ID: <20200626114733.ffjbwy7uooz2i73x@Rk>
References: <20200625215755.70329-1-coiby.xu@gmail.com>
 <20200625215755.70329-3-coiby.xu@gmail.com>
 <049f51497b84e55e61aca989025b64493287cbab.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <049f51497b84e55e61aca989025b64493287cbab.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 25, 2020 at 03:13:14PM -0700, Joe Perches wrote:
>On Fri, 2020-06-26 at 05:57 +0800, Coiby Xu wrote:
>> Remove unnecessary elses after return or break.
>
>unrelated trivia:
>
>> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
>[]
>> @@ -1391,12 +1391,11 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
>>  			pr_err("%s: Failed read of mac index register\n",
>>  			       __func__);
>>  			return;
>> -		} else {
>> -			if (value[0])
>> -				pr_err("%s: CAM index %d CAM Lookup Lower = 0x%.08x:%.08x, Output = 0x%.08x\n",
>> -				       qdev->ndev->name, i, value[1], value[0],
>> -				       value[2]);
>
>looks like all of these could use netdev_err
>
>				netdev_err(qdev, "etc...",
>					   i, value[1], value[0], value[2]);
>
>etc...
>
Interestingly, scripts/checkpatch.pl couldn't detect this problem.
I once used printk(KERN_ALERT...) and the script would properly warn me
that,

     WARNING: Prefer [subsystem eg: netdev]_alert([subsystem]dev, ... then dev_alert(dev, ... then pr_alert(...  to printk(KERN_ALERT .

I'll fix this issue when sending another version of the patches. Thank
you for the reminding!

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
