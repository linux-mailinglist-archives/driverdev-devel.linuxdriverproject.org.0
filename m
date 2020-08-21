Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCCE24D092
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 10:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2595886CF;
	Fri, 21 Aug 2020 08:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jTd5HUyFVrVi; Fri, 21 Aug 2020 08:32:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC24D8868A;
	Fri, 21 Aug 2020 08:32:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A1D11BF330
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 08:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 96AB388356
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 08:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3cT5ta7Ud+ff for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 08:32:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E22838832F
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 08:32:05 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id v16so578180plo.1
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 01:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KMEAgxnLavJYQ3i7i0cZ9PJqwCosdeDVQ11vARt76rw=;
 b=rCloECpYonB62tNgFfIMULBA2l11JvstqurZvSoGX36qItHs8DIN1qsnEfoVaTaES+
 IGdSc4WgHoKYgJbeYmtL6DxV3M7Ifjnbt23iDuSa3BA7Szy2838CCveQQs/XElpWznN8
 alcOACr6VrPT9+DmM8ROYMm5EqY+Lno+QZ6omVbihWH1N0SwX+qjrNAPiHoNOly44DkK
 Hub0pOmgLfn+T62btisPy5NXMhDEqtt9ATNtdjQsfZ6fpnLyLnPZTenRV9yWkHRoATjJ
 Uewm1JxRSh83BjAYUUJVCrs396P6orRjfC0nh/pkBFgMKUplbZFsnmJw1vRLI2KXNHCf
 SFPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KMEAgxnLavJYQ3i7i0cZ9PJqwCosdeDVQ11vARt76rw=;
 b=mJQEtpu/wVGcF31ZlhVhestx+YX7HLIGInH13TU1JrwKxcDgAJwAZyDJ2S5z3c5+E5
 QysyrBmJ6iT5yoPSGXb/1FjbZVZP/6WUxtiu+1yxVxfPBa4wKBfybzifBCsqx8CcDDYL
 Dc3ozR4HCagYv1PDJpbSvJTYLAOazec+rgLMEhhmcNbhquJZXD+jM6VNAo82w9BW3vKw
 nwJGYv2UlwmvFVLhL2vJOU16219y0LRIlANL1QE6R3nk4GsZhs1Ta+ytZ0apqPg0ySVY
 azOHsEGP6BYvthagTJjeZSEXYqnF+OYNf/vJvSJCFlLrdOsOns4PD50Xkei3uqnZiu9E
 2oUA==
X-Gm-Message-State: AOAM532WHOhnqqxRQNvAJ1S9x3NA2uMS2CveB4OFXxGafxEUYC23D7Io
 cuifEQzoHx0e+Wsqe2MTBKg=
X-Google-Smtp-Source: ABdhPJx3Io9I5JNxZKonQPoNMYC4/SzjvqW41agp76wDFbPJkY6smg0PkhIQ/Qjnk3DdOkmyGNYFGw==
X-Received: by 2002:a17:90a:1a42:: with SMTP id 2mr1569913pjl.16.1597998725448; 
 Fri, 21 Aug 2020 01:32:05 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id x23sm1617741pfi.60.2020.08.21.01.32.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Aug 2020 01:32:04 -0700 (PDT)
Date: Fri, 21 Aug 2020 17:31:59 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH] staging: qlge: fix build breakage with dumping enabled
Message-ID: <20200821083159.GA16579@f3>
References: <20200821070334.738358-1-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200821070334.738358-1-coiby.xu@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-08-21 15:03 +0800, Coiby Xu wrote:
> This fixes commit 0107635e15ac
> ("staging: qlge: replace pr_err with netdev_err") which introduced an
> build breakage with dumping enabled, i.e.,
> 
>     $ QL_ALL_DUMP=1 QL_OB_DUMP=1 QL_CB_DUMP=1 QL_REG_DUMP=1 \
>       QL_IB_DUMP=1 QL_DEV_DUMP=1 make M=drivers/staging/qlge
> 
> Fixes: 0107635e15ac ("taging: qlge: replace pr_err with netdev_err")
			^ staging
> Reported-by: Benjamin Poirier <benjamin.poirier@gmail.com>
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/qlge/qlge.h      | 42 ++++++++++++++++----------------
>  drivers/staging/qlge/qlge_dbg.c  | 36 +++++++++++++--------------
>  drivers/staging/qlge/qlge_main.c |  4 +--
>  3 files changed, 41 insertions(+), 41 deletions(-)
> 
[...]
> @@ -1615,7 +1615,7 @@ void ql_dump_qdev(struct ql_adapter *qdev)
>  #endif
>  
>  #ifdef QL_CB_DUMP
> -void ql_dump_wqicb(struct wqicb *wqicb)
> +void ql_dump_wqicb(struct ql_adapter *qdev, struct wqicb *wqicb)
>  {

This can be fixed without adding another argument:

	struct tx_ring *tx_ring = container_of(wqicb, struct tx_ring, wqicb);
	struct ql_adapter *qdev = tx_ring->qdev;

>  	netdev_err(qdev->ndev, "Dumping wqicb stuff...\n");
>  	netdev_err(qdev->ndev, "wqicb->len = 0x%x\n", le16_to_cpu(wqicb->len));
> @@ -1630,7 +1630,7 @@ void ql_dump_wqicb(struct wqicb *wqicb)
>  		   (unsigned long long)le64_to_cpu(wqicb->cnsmr_idx_addr));
>  }
>  
> -void ql_dump_tx_ring(struct tx_ring *tx_ring)
> +void ql_dump_tx_ring(struct ql_adapter *qdev, struct tx_ring *tx_ring)
>  {

This can be fixed without adding another argument:
	struct ql_adapter *qdev;

	if (!tx_ring)
		return;

	qdev = tx_ring->qdev;

... similar comment for the other instances.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
