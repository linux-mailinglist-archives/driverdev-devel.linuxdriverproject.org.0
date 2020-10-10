Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C4228A090
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 15:41:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85F2C87855;
	Sat, 10 Oct 2020 13:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id frCcvrEXd2TG; Sat, 10 Oct 2020 13:41:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF5ED87847;
	Sat, 10 Oct 2020 13:41:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7470F1BF271
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 13:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6B858203E2
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 13:41:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jPRVVt2A-vFB for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 13:41:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 95A9120130
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 13:41:01 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id k8so9383291pfk.2
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 06:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eMeSz1jtaqvthR2BINpy8J1ocJKGMb+SrNFG1WDb8dk=;
 b=q/1yU0VH3X0Y37ZO2QklGCdDGCwRh7JVpmyubhEidIR1B8NkssuxhsC1J6HITSNXc8
 OHnqoBXNgi4fvwpTKGqUKABgIQbbCQuZdU5hWuHoq/QUWAHDUm3doLFE6w758l0/TlCD
 G+QAyvW5NlQTzcADF3fbuoa6qwL+o8BS4jeWat+as337v0x/o685tWrz5n3LZA886uzz
 RXNz9rkN8fit1UvkWgQHF61LTLaxgMe9AYdkm1ckAPYQ4t6wKKOHtzl94G7l4CLVatzj
 PTZ7l0oKyXJ4FO1Q9rc4Xt1fOu8m7mtSpLSMbcXx7as2APCbG/domrN1KMyv7Bs9NtxP
 Xilw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eMeSz1jtaqvthR2BINpy8J1ocJKGMb+SrNFG1WDb8dk=;
 b=k13JAdlU7KMEeJ9QlnrsMe0a0voinShB26yiwQn10SOxguSqTeaJzrCsuv9TNGIH8b
 NntO2DP9N9i/NjIRfC0P0DwFcUM7f3+jtj+7uQKS3cMnfGKytQdbu4VjXscxVxlI9P6J
 GdeRbX/tvcxd0tsgcZ0oT6GTLYnC3dQxi0qNBsn/5rSkRTUm9bs0ecQBzy7ajSjx/lRw
 6v0BnpIYyyBj+Ae5Y3TjbGIroF7sIOczT23GljvhQL8JnsODu0ujWuhZwGwxGaVlGfOv
 PP9AUfKflr5pbbJQtviCQZLBjTKaXxW4igTlHIRn3gOnDn9GBwqRPFlqpYlbVC3VGjfJ
 G1CQ==
X-Gm-Message-State: AOAM533x/ov9AZs/Y1OZgADawR+lfDy7dT9Okvawj7OWbcVk3/ExQi1f
 ees9KqWaqrZzb1ZNV7+S4VU=
X-Google-Smtp-Source: ABdhPJys+GG5qH6x9ZijI1Xw7Prlg7wTKnuAtRU/Isno51+Y1b+KF8Vyh0MtGSCjBvsUdCeF1F7oPA==
X-Received: by 2002:a17:90a:e553:: with SMTP id
 ei19mr10300571pjb.136.1602337261096; 
 Sat, 10 Oct 2020 06:41:01 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id f12sm7834498pju.18.2020.10.10.06.40.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Oct 2020 06:41:00 -0700 (PDT)
Date: Sat, 10 Oct 2020 22:40:55 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v1 5/6] staging: qlge: clean up debugging code in the
 QL_ALL_DUMP ifdef land
Message-ID: <20201010134055.GA18693@f3>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-6-coiby.xu@gmail.com>
 <20201010080126.GC14495@f3> <20201010100002.6v54yiojnscnuxqv@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010100002.6v54yiojnscnuxqv@Rk>
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

On 2020-10-10 18:00 +0800, Coiby Xu wrote:
[...]
> > 
> > Please also update drivers/staging/qlge/TODO accordingly. There is still
> > a lot of debugging code IMO (the netif_printk statements - kernel
> > tracing can be used instead of those) but this patch is a substantial
> > improvement.
> 
> Thank you for the reminding! To move qlge out of staging tree would be
> interesting exercise for me:)

If you would like to work more on the driver, I would highly suggest
getting one or two adapters to be able to test your changes. They can be
had for relatively cheap on ebay. Just search for "qle8142".
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
