Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DCD245584
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 04:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E05988379;
	Sun, 16 Aug 2020 02:57:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HYvQ2sVDm33e; Sun, 16 Aug 2020 02:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEBC08832D;
	Sun, 16 Aug 2020 02:57:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0C071BF398
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 02:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CD492882F6
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 02:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iudD3Zz3OiFx for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 02:57:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5523087E5E
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 02:57:22 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 17so6446901pfw.9
 for <devel@driverdev.osuosl.org>; Sat, 15 Aug 2020 19:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JIK358VUoo1CD174mKzy+Qk9J6wTA6d4kRpN62If/zg=;
 b=RZREbcnXErKUQleWvwvYCoWzsPsm9cnxIX1aghrSxuphK7/2JqT8r6KyxBFZU9gRUg
 Wz149j8KIArOMwfTCTDe0/Ncc6rTabEZkhq9QIz+qXZ10UfAuuvHR5pvNAkpflYIoCoy
 bHodDeXuzktpMm0P0mxJtT9YbU5hNs000rYifo/479k/qCRTU1Ltq7JX1pfBhQl9/ACq
 KFgfWPn6mvIYFQF0ARBiRnStCaNm5Bp6pQuXRxejEjXvTpSvuTOJUgqF4/4jP/yi+UQL
 nG+r/6AFOyfHKxFrYTUaZeS7xU+JMZZ09iDdQjBH76qutOMJLEp/OJJHIZaRqb0c+Frr
 Kw9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JIK358VUoo1CD174mKzy+Qk9J6wTA6d4kRpN62If/zg=;
 b=YPJLI5Sw7hKC2DCGnZLk0OoiXQ1nVB2ZPEY0sfO8bRD64HrF+g5Df24HfRFb2vwcY2
 jdx6bv+DXR+LdWyDfB1gFQyhU6AkmWMGbLLRvwOIMFqYxR2eg3MpV8zHhOJF8jmW4uuC
 Ii47tSWwklNDZWVQHHt8pWpmpV06/z2XnXgtiKMos9Txi1eBdWCGoT2KCP+5MiO4YRR7
 1U3QGqm0IZE17nEf43bUqQE2/pRYxtu+ABpyFhvEd0VuHAKO9zqXb0YDFVwuSpycdg+F
 4fyhIbpNMX7XC45w/vqxWKGkwlpz6ZPQJXomCDsnInMP8MwvBHDoFpZUmsW/7+UziWim
 /srA==
X-Gm-Message-State: AOAM530ULo/nWLGg/U46wujEu2CtGaTNdGproV+PHIVAAVgG/cKWWzrd
 GILTMnwRlwIVVxjfhHrxvbg=
X-Google-Smtp-Source: ABdhPJxqxC64YNpIV4UVBdpa3RDRiVyqOYxgw5o33bHO2Vs+UCh8QRRk6SiXqTNqGgB7TPxjCTvCiQ==
X-Received: by 2002:a63:d812:: with SMTP id b18mr5844818pgh.353.1597546641805; 
 Sat, 15 Aug 2020 19:57:21 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id z9sm12935865pfn.59.2020.08.15.19.57.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Aug 2020 19:57:21 -0700 (PDT)
Date: Sun, 16 Aug 2020 11:57:17 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [RFC 3/3] staging: qlge: clean up code that dump info to dmesg
Message-ID: <20200816025717.GA28176@f3>
References: <20200814160601.901682-1-coiby.xu@gmail.com>
 <20200814160601.901682-4-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200814160601.901682-4-coiby.xu@gmail.com>
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
Cc: Michal Kubecek <mkubecek@suse.cz>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-08-15 00:06 +0800, Coiby Xu wrote:
> The related code are not necessary because,
> - Device status and general registers can be obtained by ethtool.
> - Coredump can be done via devlink health reporter.
> - Structure related to the hardware (struct ql_adapter) can be obtained
>   by crash or drgn.

I would suggest to add the drgn script from the cover letter to
Documentation/networking/device_drivers/qlogic/

I would also suggest to submit a separate patch now which fixes the
build breakage reported in <20200629053004.GA6165@f3> while you work on
removing that code.

> 
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/qlge/qlge.h         |  82 ----
>  drivers/staging/qlge/qlge_dbg.c     | 672 ----------------------------
>  drivers/staging/qlge/qlge_ethtool.c |   1 -
>  drivers/staging/qlge/qlge_main.c    |   6 -
>  4 files changed, 761 deletions(-)
> 
[...]
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 058889687907..368394123d16 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -1326,675 +1326,3 @@ void ql_mpi_core_to_log(struct work_struct *work)
>  		       sizeof(*qdev->mpi_coredump), false);
>  }
> 
> -#ifdef QL_REG_DUMP
> -static void ql_dump_intr_states(struct ql_adapter *qdev)
> -{
[...]
> -	}
> -}
> -#endif

This leaves a stray newline at the end of the file and also does not
apply over latest staging.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
