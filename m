Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D98C5290E13
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 01:17:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4CD8988BD5;
	Fri, 16 Oct 2020 23:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0FaRWD5TO6Ho; Fri, 16 Oct 2020 23:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EF4F388BC6;
	Fri, 16 Oct 2020 23:17:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F9DF1BF29F
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 23:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4C5F38906A
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 23:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cnHygD6eQycW for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 23:16:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8D43789069
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 23:16:54 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id h2so2039878pll.11
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 16:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=x6hSFVlaJgCB8hg2RJUELUmJfgX8zfnwtAOEG3X8KRk=;
 b=GmE8xczXXqnrMh3MsLpg+HZZ9Er+EYhFt4ttU688FcVbfAZWL2aUg3lPGDBItpw2oR
 el5T7eKC2o05aL0HbiSPsPh/XKeedj7iQPVheNZ1SgVUlk5d5lgSeMi8n/hC2sQKgXZR
 +xMLQFwgJRI1t/UjNTsRl3q9uPKkzO9rElgGeKIhQsWhIl7/QBaRPg3UJg4MY5PnDP/w
 +5/GF9W5QGBoPHSwLaprExL/4ZjYM1LwZMa2FYKKkfy6pjpHEcPXdtvYLcuwV1j8UiVt
 WoXTqzwHLOSxZgUAmHgadE2iFEO9GFjv5ltQgjdSIMdZp2BtPJhF5HLXrO35APqf/xn9
 zn1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=x6hSFVlaJgCB8hg2RJUELUmJfgX8zfnwtAOEG3X8KRk=;
 b=WIvbhScmeop85xAOr2kaPHF9gg6+UWEzsYamDuIGb9Hd8WlFo+jSMTLUBcJMz1Y2SJ
 IPGIU8W0vUOQjAwBhr4sM05FLfaSD2mHaY6gp+ShVRIrHbABkFriFilS9tjkDI9Da358
 tu8FjVdLUvXkb3pH6jJ0wkTsq6SzV8AvTmb6Ljfcy80ffYQ4+HEuURzHabFKj8BQxv24
 wBCEjPqO/7h5l7aoF9I5F8/K+wRBmFsf+Ta72mJH3Xen5S9IrI3aTsP1qtIc5/GwUKXI
 //CsaKkXs4GJYXvCeBNJpKRQCD++8nVCTBPFRaL+Z8nWHYOJqgofp2BfUdTWpJJizf5L
 mmXg==
X-Gm-Message-State: AOAM530KpIGEqlqDPcmYAThFKX4A2w8f6VYJi8nVDowRZcq64wu96RIR
 OuGHKmWHj2Hxnw7wK81NaO0=
X-Google-Smtp-Source: ABdhPJyQi7b1KBOmbhj++1AhiYXfPqOsE3wSaoA35psvMQoboX5Xz1e04PbFQtYG9v9LtdvsL1bfPA==
X-Received: by 2002:a17:90a:f0ca:: with SMTP id
 fa10mr6196925pjb.130.1602890214147; 
 Fri, 16 Oct 2020 16:16:54 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id z12sm3928887pfr.197.2020.10.16.16.16.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 16:16:53 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 17 Oct 2020 07:16:31 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v2 1/7] staging: qlge: replace ql_* with qlge_* to avoid
 namespace clashes with other qlogic drivers
Message-ID: <20201016231631.efwu5a4a5f3jnrzv@Rk>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
 <20201014104306.63756-2-coiby.xu@gmail.com>
 <20201015010136.GB31835@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015010136.GB31835@f3>
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
Cc: devel@driverdev.osuosl.org,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER" <GR-Linux-NIC-Dev@marvell.com>,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 15, 2020 at 10:01:36AM +0900, Benjamin Poirier wrote:
>On 2020-10-14 18:43 +0800, Coiby Xu wrote:
>> To avoid namespace clashes with other qlogic drivers and also for the
>> sake of naming consistency, use the "qlge_" prefix as suggested in
>> drivers/staging/qlge/TODO.
>>
>> Suggested-by: Benjamin Poirier <benjamin.poirier@gmail.com>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> ---
>>  drivers/staging/qlge/TODO           |    4 -
>>  drivers/staging/qlge/qlge.h         |  190 ++--
>>  drivers/staging/qlge/qlge_dbg.c     | 1073 ++++++++++++-----------
>>  drivers/staging/qlge/qlge_ethtool.c |  231 ++---
>>  drivers/staging/qlge/qlge_main.c    | 1257 +++++++++++++--------------
>>  drivers/staging/qlge/qlge_mpi.c     |  352 ++++----
>>  6 files changed, 1551 insertions(+), 1556 deletions(-)
>>
>> diff --git a/drivers/staging/qlge/TODO b/drivers/staging/qlge/TODO
>> index f93f7428f5d5..5ac55664c3e2 100644
>> --- a/drivers/staging/qlge/TODO
>> +++ b/drivers/staging/qlge/TODO
>> @@ -28,10 +28,6 @@
>>  * the driver has a habit of using runtime checks where compile time checks are
>>    possible (ex. ql_free_rx_buffers(), ql_alloc_rx_buffers())
>>  * reorder struct members to avoid holes if it doesn't impact performance
>> -* in terms of namespace, the driver uses either qlge_, ql_ (used by
>> -  other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
>> -  clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
>> -  prefix.
>
>You only renamed ql -> qlge. The prefix needs to be added where there is
>currently none like the second example of that text.

On second thoughts, these structs like ob_mac_iocb_req are defined in
local headers and there is no mixed usage. So even when we want to
build this diver and other qlogic drivers into the kernel instead of
as separate modules, it won't lead to real problems, is it right?
>
>Besides, the next patch reintroduces the name struct ql_adapter.

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
