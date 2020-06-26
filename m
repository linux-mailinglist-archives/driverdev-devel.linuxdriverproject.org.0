Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E525B20BD4E
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 01:59:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C3A886D48;
	Fri, 26 Jun 2020 23:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GWKL2v0gFADV; Fri, 26 Jun 2020 23:59:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E9DC86D50;
	Fri, 26 Jun 2020 23:59:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A5F41BF20D
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 23:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 704E886CC5
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 23:57:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T6iMmkuZ40tl for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 23:57:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD42D86C53
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 23:57:34 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id f6so1579688pjq.5
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 16:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rsEV3VWlPvkhUXAUMqPfLhxZXBvMiVayXQJsZCVog6Q=;
 b=qaJFgFOqAcU29/5kD0f06Npxd2Dlxs2CofOxWIM1ri/KxJeD3CMMJ59rQmHzFucJ8B
 nh+vDWWb+BZtfjTYdIbBpJMUOu030FU6Y+BhUOavRYl3MX0jA7NtmJIIxBGfckqOL/pZ
 kGNCyhm8AjNr+poSF74dgm1gYnHVvWwFl6PRIPz/nC9ezwCvaDSGHLApTFGq4E3djAey
 yUqEr0GP9DqRyggZnLAydyoons0pEOwnqNWJ18syoG1G3wnz8VxgY5IZ6Vtn3vNhFbSW
 Uv2UMMCUu0B/IhXD3Ex/l0STcGim+cHLqzPyHuLLt/r3fWRgJ4wjhZFK77Xhna4/Ftor
 QMVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rsEV3VWlPvkhUXAUMqPfLhxZXBvMiVayXQJsZCVog6Q=;
 b=QbPN6v8NNONJIKxMIdN6GX7yWW9xQmgviuj1NHTXESZlqzSVEZtTXRPwNpdUHuwjUe
 1temN9BHUPRUU3QiPi3kxyyDRLq7Wp82yAkE2tO4R3A0+zyb+UN6EWt7gCulW+wa49Tr
 hMXkLVJGv5t0fktnbagXeMcRChOUajafwtCMobKUkioAWIFiYrkdCTrRkdFjT9F0gA9c
 3bs7NZap9KuPI9Ho2G7GJpfXECS5TsUlV0qYUnv22cDaGHrjnCpeIP0tQ/es0T+i0Kb9
 agRVJMdAlGafwgj9scRIINBy6xo9QrCGlNKd5CZx4Kepa789h+1AjCQDwup17FPXbSnT
 oxcA==
X-Gm-Message-State: AOAM531SPOkMyiYEJ8CCvtFI6rB+sPdCFnRICRsZJWhJtg30LgH4rfeN
 MNgMbmvRZyfTC0MJz/GlI0M=
X-Google-Smtp-Source: ABdhPJzVai7R7S/T4iw8i1jkT9aJDWWEaEIMVs2EARAOFCaoDxYnib5o0dCMspzPd8YqYik5vgix9g==
X-Received: by 2002:a17:90b:50d:: with SMTP id
 r13mr5872471pjz.94.1593215854419; 
 Fri, 26 Jun 2020 16:57:34 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id t5sm5081758pgl.38.2020.06.26.16.57.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 16:57:33 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 27 Jun 2020 07:57:25 +0800
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 2/2] staging: qlge: fix else after return or break
Message-ID: <20200626235725.2rcpisito2253jhm@Rk>
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

Should we also replace all pr_errs with netdev_err in
ql_dump_* functions? I'm not sure how we will use ql_dump_*. For example,
ql_dump_regs is not referred by any kernel source, so I guess it's for
the sole purpose of debugging the driver by the developer. But one
pr_err in ql_dump_routing_entries which is called by dl_dump_regs doesn't
prints out the device name whereas the other does,

> void ql_dump_routing_entries(struct ql_adapter *qdev)
> {
> 	int i;
> 	u32 value;
>
> 	i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
> 	if (i)
> 		return;
> 	for (i = 0; i < 16; i++) {
> 		value = 0;
> 		if (ql_get_routing_reg(qdev, i, &value)) {
> 			pr_err("%s: Failed read of routing index register\n",
> 			       __func__);
> 			break;
> 		}
> 		if (value)
> 			pr_err("%s: Routing Mask %d = 0x%.08x\n",
> 			       qdev->ndev->name, i, value);
> 	}

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
