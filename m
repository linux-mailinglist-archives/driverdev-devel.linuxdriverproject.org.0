Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ECC28EC4E
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 06:32:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9FFE88078;
	Thu, 15 Oct 2020 04:32:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2dlkjjx3G0sf; Thu, 15 Oct 2020 04:32:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EBDCE88070;
	Thu, 15 Oct 2020 04:32:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8EFB51BF31D
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 04:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8BA998806C
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 04:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YYcABC+4gvyg for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 04:32:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CBF6688069
 for <devel@driverdev.osuosl.org>; Thu, 15 Oct 2020 04:32:44 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id h2so887791pll.11
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 21:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AXmRyhdS0GmnvBNnxkJbmQYN3zA7PGYdeJKou+GYMoo=;
 b=mpMjdv6mT4g/VsBLWkdSiBxftUd526VNielRQ0VQfG1pt+L2u5osaPA22YbWSfKXva
 OdKP7BfLnt3IguqnNSQoeJmM0eMpgns2wNIJLNqfBVDVa5NbrMhmW0UL5xqGCXJVfJmu
 XahafWswVwfYcpw0D9+3YNvMHlPXSToq/Xm44PMTBve5HNV2/3SRQOOIOjh0pD2AtGja
 JJogbjyO/6h2vAS+DEtfK7Q9+zduqvUp9BEh9Tq6zNFmo7okMjyHnOOlNZCtD9H1wJXA
 TdgFc5ClyLzr9OvaCQGnalUcwPjgyKcG5Gws+qMA5JM2G7BNnLbv4fT/E+J7kQ0Exeu3
 c3GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AXmRyhdS0GmnvBNnxkJbmQYN3zA7PGYdeJKou+GYMoo=;
 b=qYu7MPj7owhjuZog7mcjXK/agOWuYoT8IAxoDKqZZz6VnuYf1ZFkNplOSdFUu1vjRL
 WBxgkYXhjTNXzvSp9J5LJanvl77hHtzTnqvl3LS9da3/vJHtwGojoMekqVG0Y1bgntF8
 Vyo4UYnd3zRPVlc3feFlQVnWnL12hczEo7hNHruBS9khsBMguqBJLJJ/meDC2nDj3+R1
 0SL78NJi89amPhyz4ocQUHOolZpnI/HIYVL234vQ/+M4RJlxb5piPfjfzkIO1aQx9M2I
 SFyItWyLZJU+0QaE9xZqF32qZc9ykSnXc0vOVK/T5l+QejFeAcBghwansZTeaEBrq93c
 Bqsg==
X-Gm-Message-State: AOAM5304aURXvrE/WSMcseYZujo3AzgA1NyUX2CcQk78s1x8od4J4/LL
 HyJvBMpMRcXnweZl0ZE5LgA=
X-Google-Smtp-Source: ABdhPJyyxNTCxrERuQhJUbuIfefATua/xJ5SaZSMGoJ9xBYOsLupMChuptum8AWnVLJ+XujWyr99Fg==
X-Received: by 2002:a17:902:bf45:b029:d5:b36d:56eb with SMTP id
 u5-20020a170902bf45b02900d5b36d56ebmr2177589pls.28.1602736364265; 
 Wed, 14 Oct 2020 21:32:44 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id w187sm1309176pfb.93.2020.10.14.21.32.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 21:32:43 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Thu, 15 Oct 2020 12:32:29 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v2 1/7] staging: qlge: replace ql_* with qlge_* to avoid
 namespace clashes with other qlogic drivers
Message-ID: <20201015043229.yngmk7h32plk5kkn@Rk>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
 <20201014104306.63756-2-coiby.xu@gmail.com>
 <20201015010136.GB31835@f3> <20201015042628.42evgens2z47x3d6@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015042628.42evgens2z47x3d6@Rk>
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

On Thu, Oct 15, 2020 at 12:26:28PM +0800, Coiby Xu wrote:
>On Thu, Oct 15, 2020 at 10:01:36AM +0900, Benjamin Poirier wrote:
>>On 2020-10-14 18:43 +0800, Coiby Xu wrote:
>>>To avoid namespace clashes with other qlogic drivers and also for the
>>>sake of naming consistency, use the "qlge_" prefix as suggested in
>>>drivers/staging/qlge/TODO.
>>>
>>>Suggested-by: Benjamin Poirier <benjamin.poirier@gmail.com>
>>>Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>>>---
>>> drivers/staging/qlge/TODO           |    4 -
>>> drivers/staging/qlge/qlge.h         |  190 ++--
>>> drivers/staging/qlge/qlge_dbg.c     | 1073 ++++++++++++-----------
>>> drivers/staging/qlge/qlge_ethtool.c |  231 ++---
>>> drivers/staging/qlge/qlge_main.c    | 1257 +++++++++++++--------------
>>> drivers/staging/qlge/qlge_mpi.c     |  352 ++++----
>>> 6 files changed, 1551 insertions(+), 1556 deletions(-)
>>>
>>>diff --git a/drivers/staging/qlge/TODO b/drivers/staging/qlge/TODO
>>>index f93f7428f5d5..5ac55664c3e2 100644
>>>--- a/drivers/staging/qlge/TODO
>>>+++ b/drivers/staging/qlge/TODO
>>>@@ -28,10 +28,6 @@
>>> * the driver has a habit of using runtime checks where compile time checks are
>>>   possible (ex. ql_free_rx_buffers(), ql_alloc_rx_buffers())
>>> * reorder struct members to avoid holes if it doesn't impact performance
>>>-* in terms of namespace, the driver uses either qlge_, ql_ (used by
>>>-  other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
>>>-  clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
>>>-  prefix.
>>
>>You only renamed ql -> qlge. The prefix needs to be added where there is
>>currently none like the second example of that text.
>>
>Thank you for reminding me of the second example!
>
>>Besides, the next patch reintroduces the name struct ql_adapter.
>
>Oh, there is still a left-over ql_adapter in qlge.h (I renamed ql->qlge
>after initializing the devlink framework earlier but did a git rebase
>to make the order of the changes more reasonable). Thank you for the
>reminding!

Btw, is there a way to configure kernel building to let the compiler
discover this kind of issue automatically?

>--
>Best regards,
>Coiby

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
