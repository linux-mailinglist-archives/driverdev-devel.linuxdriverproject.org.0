Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D81221D6FFC
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 06:54:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DA2B88398;
	Mon, 18 May 2020 04:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SCutjgH3S83b; Mon, 18 May 2020 04:54:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2BEB8836A;
	Mon, 18 May 2020 04:54:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A74781BF3DF
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 04:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A3A2B858B8
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 04:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tIHyC4aZ7FEq for <devel@linuxdriverproject.org>;
 Mon, 18 May 2020 04:54:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 25BCC85852
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 04:54:13 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id cx22so1128959pjb.1
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 21:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CNyAh3C19OfyBhM8UYQrB5bR+7wKmGoyo3pyav8YnVo=;
 b=BsCVTvxE0mGB5xc/3+LSNQW99Lq6bU0DvZnZ7VAbz3ttY2BP2Qjxecfp/BUfMEsCFV
 jZoOi2MgCyZConAzujtJZwKveV8yckPzTq7SCpQuKdCk58EAaLhE3rWvuu4VJt5PlpiH
 NkdeL6e6F8UpgW0FdQrDQja+1QMUl78qTTyhIUCJaLO6hlW6qU6MAl/r7jUCiBM1RYzT
 c7TRlKmCbZlO8x4vPJ/P1O5M9nGZPljHjKZ8h9JvjF/LZPnTxNUu/Tn6QbN/cGtlIIGx
 xqo1TzA+VmnV50mgLBTcvy2JljOeGq1D6CXH3W6DjOgNviBKCjIYEugK62csu1ZOJYIr
 pc9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CNyAh3C19OfyBhM8UYQrB5bR+7wKmGoyo3pyav8YnVo=;
 b=S5r0I+sKvT22VcVLGuS27mJLYNM1Bxb0c+nhigylPMJlNbiAAmZrxW0JMt+TET10Cj
 hBCPojFpfKE7PtNK+yx0x8tdg8nnndQo7EOGhEqiGpmqUcoWOxpIzm24IB0I8fIhvVaD
 XYHMSrJ4F20X7+p8V9IcGI4Pdob9CtVqHOBrm04ILTnghH46PSCHtkiy3Y5DPAJf4Q46
 gWVO6LvMG0KabnyAulcRiOmJGREs6nI4FJAHDmAy+lS8VjDoiA5IKi9QVSwdfJNNDvsC
 v1O1aKlIXwrwgVsMVEqG9mh5uHuJLXPjUFd96GNR8yI31bjsywFnI/5UprEUcCAjpuTz
 TlgA==
X-Gm-Message-State: AOAM532qLy1bKy9uPVWBupAJEfJGsM79QubotoIP/dZc7KArBLwJ5Zkd
 icfs80FJP9rDhSMoDz/qzx8=
X-Google-Smtp-Source: ABdhPJzqwUM4FYI2rhy+2ZBNtNxAHPmwoAipKaMxVpRm7Z/NIRE2PgJIIrTSk05knuGDBQfGA/9Www==
X-Received: by 2002:a17:90a:ce18:: with SMTP id
 f24mr3604918pju.198.1589777652680; 
 Sun, 17 May 2020 21:54:12 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id q3sm1549124pgp.69.2020.05.17.21.54.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 21:54:11 -0700 (PDT)
Date: Mon, 18 May 2020 13:54:07 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Xiangyang Zhang <xyz.sun.ok@gmail.com>
Subject: Re: [PATCH] staging: qlge: unmap dma when lock failed
Message-ID: <20200518045407.GA73179@f3>
References: <20200517054638.10764-1-xyz.sun.ok@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517054638.10764-1-xyz.sun.ok@gmail.com>
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
 manishc@marvell.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-05-17 13:46 +0800, Xiangyang Zhang wrote:
> DMA not unmapped when lock failed, this patch fixed it.
> 

Fixes: 4322c5bee85e ("qlge: Expand coverage of hw lock for config register.")

> Signed-off-by: Xiangyang Zhang <xyz.sun.ok@gmail.com>
> ---
>  drivers/staging/qlge/qlge_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
