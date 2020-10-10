Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25781289F13
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 10:01:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71FA787716;
	Sat, 10 Oct 2020 08:01:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tzowNmcMc3Ph; Sat, 10 Oct 2020 08:01:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 079BD8776C;
	Sat, 10 Oct 2020 08:01:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2AFA81BF328
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 08:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 27D0B87596
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 08:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ycdqa917e0lY for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 08:01:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B443B87576
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 08:01:32 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u24so9224630pgi.1
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 01:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KSgS/yaA0WF+r8iYDZJ1qn48JHFSJ548EMw3n9b8mbU=;
 b=LssJWxpoRbxx7KVR2+T5gSPxakRpYk6ThunpIt+Ve3cPrj5sgsz/qaoCTHtsNkj3HT
 4xfTln987yLxtBF9PIfnNjeaQcHir7T4LoSGNVAL1UYj+1WcPU3gdvS5mZTYlE072oph
 ipJ6quiW3LuChTwlIlHeHy4rOFT7kO6tS4T9+Q972sLdjyxHTG+yIkAVO6G4tEiQw+9B
 PzgafSNPQsXLYKU0ngebl7SaUu44t3KYiA9P/KjygNRwcGGIAqcxdEca4GrJN0e1L3y+
 no5gO6j8h9Dp/yHYFf6/RKnF8ySQjiT+a36TkMzJOLegLjxACtDcIFWTnijcyaLzQOOA
 6DBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KSgS/yaA0WF+r8iYDZJ1qn48JHFSJ548EMw3n9b8mbU=;
 b=X94UdwHWl3SdgUfeP1d5buP9SoRANeeX2egAq1GsGYMM8/rWsY0YvwDrJUwNuknN6p
 PokUhffUi3X72W89xraxMNAjlm0yzhTUkDpBUuEolZhNvz6qAGaQepFztBwfohiTjVkF
 B8h267GA4yIgZXoaAN8c1iCLWkI14m9J9yJ/V6Ixxrf93LuaAJnYVpKZQlj57Mo5uN1c
 Teb+ZLDnzQBDX/CwGro4LFxz2sP3n1E1I4bJoHTKdWvOmQDnGud8lEvOnzDQJoXnHM67
 EOrCL6y6tUK3jnoWb6EsnSLe9uhe1YtIC1pncC9QVBAa/fNm6+FfnX1fkYfYJ6rsKdIO
 7AqA==
X-Gm-Message-State: AOAM532cZGfyJTfbhFSBVcqmJWTxuyix0p3YDJ9aPbAJaf7XO44ygawr
 umLxuuqZ2MRXOrTlA8l+yF8=
X-Google-Smtp-Source: ABdhPJzG0ttUOIjGPCl8WvqSp8YIkg1fTjAgioAxSxWF5XuiRy+45rzLYEYO6JrWt5Dl9mBgeP7rfQ==
X-Received: by 2002:a65:60d0:: with SMTP id r16mr6494572pgv.348.1602316892230; 
 Sat, 10 Oct 2020 01:01:32 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id 84sm12866551pfx.120.2020.10.10.01.01.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Oct 2020 01:01:31 -0700 (PDT)
Date: Sat, 10 Oct 2020 17:01:26 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v1 5/6] staging: qlge: clean up debugging code in the
 QL_ALL_DUMP ifdef land
Message-ID: <20201010080126.GC14495@f3>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-6-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008115808.91850-6-coiby.xu@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-10-08 19:58 +0800, Coiby Xu wrote:
> The debugging code in the following ifdef land
>  - QL_ALL_DUMP
>  - QL_REG_DUMP
>  - QL_DEV_DUMP
>  - QL_CB_DUMP
>  - QL_IB_DUMP
>  - QL_OB_DUMP
> 
> becomes unnecessary because,
>  - Device status and general registers can be obtained by ethtool.
>  - Coredump can be done via devlink health reporter.
>  - Structure related to the hardware (struct ql_adapter) can be obtained
>    by crash or drgn.
> 
> Suggested-by: Benjamin Poirier <benjamin.poirier@gmail.com>
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/qlge/qlge.h         |  82 ----
>  drivers/staging/qlge/qlge_dbg.c     | 688 ----------------------------
>  drivers/staging/qlge/qlge_ethtool.c |   2 -
>  drivers/staging/qlge/qlge_main.c    |   7 +-

Please also update drivers/staging/qlge/TODO accordingly. There is still
a lot of debugging code IMO (the netif_printk statements - kernel
tracing can be used instead of those) but this patch is a substantial
improvement.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
