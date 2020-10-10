Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE9B289FB9
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 12:00:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA72287844;
	Sat, 10 Oct 2020 10:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R96XyKwl1RBM; Sat, 10 Oct 2020 10:00:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 962438782C;
	Sat, 10 Oct 2020 10:00:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F1A031BF82D
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 10:00:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EE1878701E
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 10:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WVGvqAxBDOum for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 10:00:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB94487019
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 10:00:10 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i2so9387946pgh.7
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 03:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=I9AHl5bp5WPLKmxh/1O3ggN7nM3m0zYYXn5K7tm55Tg=;
 b=Fzygsyj9HGxWtMq/RnjXUGsalngSdHOTFRRv+WAKcop2NmXGD03TrHiPfZHCHfeSDj
 Efo2CQmVRt1E+BCn/R7xqsYlcdwDw3T+mQMHkfGT0IT7CRQAlRU3XJgDF34dSdmX68w/
 4x7yc0HAy/DoCMBsX1GUZHI+PjHFvqllqb08dR6dpWbH/bjA0dXsWlUMsA6ZLImftgI3
 Q0cxevsy4k8VoUU73jYD0qOaJbwUu7MosYtF5W+8wZ3/FjLYF+0RmRrzq69YYPSjepIa
 FGYGwVmkzWctVC9XNcpGzZepguKSNWe1WgEOqZ8GX9gBVWc+UfFJfVazbsBxcVyu4tdy
 I0zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=I9AHl5bp5WPLKmxh/1O3ggN7nM3m0zYYXn5K7tm55Tg=;
 b=gGTIY+PWJ7xxcnwGoVxTmppYZli3jF5+ogF8vy+8dyleV/XzABkGtem7WwBmj1Mplp
 w/TgaVDrKBa9BxbZC+phdL2zWogm63GUI8n3OK+dulUDbDGJzY8v+n3PFz8VTv5s/xRH
 3joK3AqpG1V9vKErPnvwGhBnjwUhfzKDTo845oVaQP27Ws/w7tAQ/sYkxSlwdD2cO4EY
 94CvQcfXygJ0QAUPYkRN3W81BJAzqElAXpYk9TVrbIeAStCe1WVGc0w3Z6fZIFFBNXkQ
 9Kpwrs6rNGQrt045DnvGYcyNKLMH3boUNUvBj+ElFD4SXVYw4UnJRVRH/Pehgohvwr/R
 rfuw==
X-Gm-Message-State: AOAM531lv0JVtMFjo5ewAyh15GRLXWvwPmCuq+80iYEhHWvzSRtHWKVw
 3jIK/bwVTHi14d1niYtRZKw=
X-Google-Smtp-Source: ABdhPJy99sRp2/6FtliyUxTv0c9pvD+eJMJ2dVrAf4fS97haV/vaZ/6lN2mDWGt7h8WXIc2rlbswyg==
X-Received: by 2002:aa7:9358:0:b029:152:b349:8af7 with SMTP id
 24-20020aa793580000b0290152b3498af7mr15526536pfn.18.1602324010493; 
 Sat, 10 Oct 2020 03:00:10 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id b4sm6961319pjz.51.2020.10.10.03.00.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Oct 2020 03:00:10 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 10 Oct 2020 18:00:02 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v1 5/6] staging: qlge: clean up debugging code in the
 QL_ALL_DUMP ifdef land
Message-ID: <20201010100002.6v54yiojnscnuxqv@Rk>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-6-coiby.xu@gmail.com>
 <20201010080126.GC14495@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010080126.GC14495@f3>
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
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 10, 2020 at 05:01:26PM +0900, Benjamin Poirier wrote:
>On 2020-10-08 19:58 +0800, Coiby Xu wrote:
>> The debugging code in the following ifdef land
>>  - QL_ALL_DUMP
>>  - QL_REG_DUMP
>>  - QL_DEV_DUMP
>>  - QL_CB_DUMP
>>  - QL_IB_DUMP
>>  - QL_OB_DUMP
>>
>> becomes unnecessary because,
>>  - Device status and general registers can be obtained by ethtool.
>>  - Coredump can be done via devlink health reporter.
>>  - Structure related to the hardware (struct ql_adapter) can be obtained
>>    by crash or drgn.
>>
>> Suggested-by: Benjamin Poirier <benjamin.poirier@gmail.com>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> ---
>>  drivers/staging/qlge/qlge.h         |  82 ----
>>  drivers/staging/qlge/qlge_dbg.c     | 688 ----------------------------
>>  drivers/staging/qlge/qlge_ethtool.c |   2 -
>>  drivers/staging/qlge/qlge_main.c    |   7 +-
>
>Please also update drivers/staging/qlge/TODO accordingly. There is still
>a lot of debugging code IMO (the netif_printk statements - kernel
>tracing can be used instead of those) but this patch is a substantial
>improvement.

Thank you for the reminding! To move qlge out of staging tree would be
interesting exercise for me:)

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
