Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC72F28E99B
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 03:01:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B742C886FD;
	Thu, 15 Oct 2020 01:01:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r3ygrr1k2gm9; Thu, 15 Oct 2020 01:01:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A7A2886F7;
	Thu, 15 Oct 2020 01:01:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C5D1C1BF406
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 01:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A25A22E5EC
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 01:01:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ydTq5nOeaSDk for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 01:01:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 745C22E5E9
 for <devel@driverdev.osuosl.org>; Thu, 15 Oct 2020 01:01:43 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id y1so638253plp.6
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 18:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LwerkOdRsnCJHMpXddlyMckRobHsa+u7GtVSMhhS8lI=;
 b=BRE6k+Vlxcm645Daww/9IQr9e9BY6KhXtwvPZlpEIhh0C2EpOyQJJV1s0DyVkUfAnW
 lLUUxoRvG4PP+D3yINPpReSX12FcGN0zeOLAZQK6lqthjnaBlqfJu9zZvc9Wph5FwmQV
 kqt59vRi7nRFgVW2OVpggU3ow0k1dBH2cTXAiZ0XGDK/pQbHa45AvBwvDL3CszbvqWnK
 qHIpcUQrvn2h1NYYAOilf8NFXv5fvN2S3rVQaZGecrRRzBpVR5pWGQDC52M8cNUB/dD6
 F2PzyrvKh+11CTndbIM1aUHsl2bUA/CNJDApYwpuVbszwGr9IsZ9oOYrUPXXl9W1yA9n
 dXEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LwerkOdRsnCJHMpXddlyMckRobHsa+u7GtVSMhhS8lI=;
 b=RagUTWNhci8BJwAGNynSExSdg5ml7Fx/8iL/rZmHgPQbImL0/Y5VVozYq2y2QqbYSJ
 72Z9OKN3QNYn8rwtQtdDHm2xN69144YfH6oX72Xz/7ualYXitL9aXqtL7CphuRtUCg6D
 RYNekSTWtrhHuEG1vbrPxPlTAyu8PEZxMN7lsSH1SyR/l+O8qMQD66fq/uY0YiOinLs7
 D2no0yfzrnYeNLKS4Ene/yriG7dlDA2ZKscjh4f9Yqe8yb554Jswz5eNejIQO6bhYjkW
 G8tT0KnJV3yW8wfnvgDSiD+ACV8rfA0Axl02SI2gN9UwWFvOiqslaUdzMVjPf2ueHpni
 hZHg==
X-Gm-Message-State: AOAM533IZxhwH8IAVPVb3REOB3nC472VGXqMuqS2MSiZyxu1VyqcXi/2
 sLMTtpFc6SVamBl/COcMNb4=
X-Google-Smtp-Source: ABdhPJwzGaRcZXELQQDsb0RL51HUB5jeCVJnKyJOaYKWfqyyAK9/uRi+xYiHOEOpXkfpn3UNqDhd/Q==
X-Received: by 2002:a17:90b:1215:: with SMTP id
 gl21mr1714511pjb.132.1602723702701; 
 Wed, 14 Oct 2020 18:01:42 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id m3sm792258pjv.52.2020.10.14.18.01.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 18:01:41 -0700 (PDT)
Date: Thu, 15 Oct 2020 10:01:36 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v2 1/7] staging: qlge: replace ql_* with qlge_* to avoid
 namespace clashes with other qlogic drivers
Message-ID: <20201015010136.GB31835@f3>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
 <20201014104306.63756-2-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201014104306.63756-2-coiby.xu@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-10-14 18:43 +0800, Coiby Xu wrote:
> To avoid namespace clashes with other qlogic drivers and also for the
> sake of naming consistency, use the "qlge_" prefix as suggested in
> drivers/staging/qlge/TODO.
> 
> Suggested-by: Benjamin Poirier <benjamin.poirier@gmail.com>
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/qlge/TODO           |    4 -
>  drivers/staging/qlge/qlge.h         |  190 ++--
>  drivers/staging/qlge/qlge_dbg.c     | 1073 ++++++++++++-----------
>  drivers/staging/qlge/qlge_ethtool.c |  231 ++---
>  drivers/staging/qlge/qlge_main.c    | 1257 +++++++++++++--------------
>  drivers/staging/qlge/qlge_mpi.c     |  352 ++++----
>  6 files changed, 1551 insertions(+), 1556 deletions(-)
> 
> diff --git a/drivers/staging/qlge/TODO b/drivers/staging/qlge/TODO
> index f93f7428f5d5..5ac55664c3e2 100644
> --- a/drivers/staging/qlge/TODO
> +++ b/drivers/staging/qlge/TODO
> @@ -28,10 +28,6 @@
>  * the driver has a habit of using runtime checks where compile time checks are
>    possible (ex. ql_free_rx_buffers(), ql_alloc_rx_buffers())
>  * reorder struct members to avoid holes if it doesn't impact performance
> -* in terms of namespace, the driver uses either qlge_, ql_ (used by
> -  other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
> -  clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
> -  prefix.

You only renamed ql -> qlge. The prefix needs to be added where there is
currently none like the second example of that text.

Besides, the next patch reintroduces the name struct ql_adapter.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
