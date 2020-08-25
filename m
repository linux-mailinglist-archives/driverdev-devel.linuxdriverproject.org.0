Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EE325173C
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 13:16:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F9DC8763E;
	Tue, 25 Aug 2020 11:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tlD+ek5q7Z+i; Tue, 25 Aug 2020 11:16:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B0B3870A1;
	Tue, 25 Aug 2020 11:16:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CDD71BF48D
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 11:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 48B5286928
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 11:16:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R4t3YX4rQK1o for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 11:16:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B17888691A
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 11:16:24 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id d22so7094632pfn.5
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 04:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/QCoaLVxYXE090U9wwvvgbRvDY1+rPpSaJkJiaPp3Zk=;
 b=elu09V4ueIxs2zW/I5j+y+g9IFE9XX7sLmbQ3caK5BG9AD8Qzv25SYLJR+uqRYISmK
 BGq8NX5gxznI7slVSaL4F/b0OlWJpjjgMFiFb+NZcQILznebgnQqa4GRLI8Jb1SRCmv3
 Btjgp0EG1AOU7jFGs6UJYsd+PWQgvQaucm/6u0XucfFBDZXV4W7PF06Dn+OTkpw9YHvV
 GVQUcH3E8DhPauYyrFLcdkJ8XQzR+ja9M9yziLi0PmmtpGE+zr57weA5iAAWwhtpqWo5
 4kSr9+c3H06rxzNTIHjZAZErtWoxZHhrmE+mAeWKbxK1BNlnd6zyIUvP069d96a8qR3L
 wqyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/QCoaLVxYXE090U9wwvvgbRvDY1+rPpSaJkJiaPp3Zk=;
 b=XCjfF7Qm9vvgSRwlQo6y/Ks+Gqdu7oCccJ8Bu5T/QzOT4B52q6Mnv8Ju4cm5SjltT0
 GX/7fAKy7MHrIKl1+KnHailLMdxHcpnld8yf1zS78td+D3x2DZmTBJE82ox7Knuuz0UY
 JIpbuXFozMCZt6puUeVS4ODkCMZa9Wr5DUdASUy8X5NLVNy5pZoju4p+n8psxeset+yW
 XAMd71ft3wrFWVEzEuIkr0gLLaZZApyeHUbcJRgPrxF0yU+jSNZZoW5zyYisF2V6m/wY
 eGoqTXjOBwyG5olFMrzXHnUmkXiLkaR5JeKqDR9o9qu88wzcpmu1TRqSbiHBb8Lo82Vy
 BShA==
X-Gm-Message-State: AOAM530iwT2oIefa9KCkXTagoksARgFOm1nJkjhA5XQ6WEXFWSAwNJN8
 es3w/oqaSF6WEyKwfs9A7Ro=
X-Google-Smtp-Source: ABdhPJw74rStIAGkJsYNtPXC++5g68/tLcOwXFrr5ewYKmsB2DTjxjOIuGAqrmDyMdpU4H1P7hhbSA==
X-Received: by 2002:aa7:9a09:: with SMTP id w9mr7589646pfj.206.1598354184240; 
 Tue, 25 Aug 2020 04:16:24 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id t11sm2427078pjy.40.2020.08.25.04.16.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 04:16:23 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Tue, 25 Aug 2020 19:16:08 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH] staging: qlge: fix build breakage with dumping enabled
Message-ID: <20200825111608.2hi52kcqcdjaenki@Rk>
References: <20200821070334.738358-1-coiby.xu@gmail.com>
 <20200821083159.GA16579@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200821083159.GA16579@f3>
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
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 21, 2020 at 05:31:59PM +0900, Benjamin Poirier wrote:
>On 2020-08-21 15:03 +0800, Coiby Xu wrote:
>> This fixes commit 0107635e15ac
>> ("staging: qlge: replace pr_err with netdev_err") which introduced an
>> build breakage with dumping enabled, i.e.,
>>
>>     $ QL_ALL_DUMP=1 QL_OB_DUMP=1 QL_CB_DUMP=1 QL_REG_DUMP=1 \
>>       QL_IB_DUMP=1 QL_DEV_DUMP=1 make M=drivers/staging/qlge
>>
>> Fixes: 0107635e15ac ("taging: qlge: replace pr_err with netdev_err")
>			^ staging

Thank you for reminding me of the typo!

>> Reported-by: Benjamin Poirier <benjamin.poirier@gmail.com>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> ---
>>  drivers/staging/qlge/qlge.h      | 42 ++++++++++++++++----------------
>>  drivers/staging/qlge/qlge_dbg.c  | 36 +++++++++++++--------------
>>  drivers/staging/qlge/qlge_main.c |  4 +--
>>  3 files changed, 41 insertions(+), 41 deletions(-)
>>
>[...]
>> @@ -1615,7 +1615,7 @@ void ql_dump_qdev(struct ql_adapter *qdev)
>>  #endif
>>
>>  #ifdef QL_CB_DUMP
>> -void ql_dump_wqicb(struct wqicb *wqicb)
>> +void ql_dump_wqicb(struct ql_adapter *qdev, struct wqicb *wqicb)
>>  {
>
>This can be fixed without adding another argument:
>
>	struct tx_ring *tx_ring = container_of(wqicb, struct tx_ring, wqicb);
>	struct ql_adapter *qdev = tx_ring->qdev;
>
>>  	netdev_err(qdev->ndev, "Dumping wqicb stuff...\n");
>>  	netdev_err(qdev->ndev, "wqicb->len = 0x%x\n", le16_to_cpu(wqicb->len));
>> @@ -1630,7 +1630,7 @@ void ql_dump_wqicb(struct wqicb *wqicb)
>>  		   (unsigned long long)le64_to_cpu(wqicb->cnsmr_idx_addr));
>>  }
>>
>> -void ql_dump_tx_ring(struct tx_ring *tx_ring)
>> +void ql_dump_tx_ring(struct ql_adapter *qdev, struct tx_ring *tx_ring)
>>  {
>
>This can be fixed without adding another argument:
>	struct ql_adapter *qdev;
>
>	if (!tx_ring)
>		return;
>
>	qdev = tx_ring->qdev;
>
>... similar comment for the other instances.

Thank you for the simpler solution!

For QL_OB_DUMP and QL_IB_DUMP, `struct ql_adapter *qdev` can't be
obtained via container_of. So qdev are still directly passed to these
functions.

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
