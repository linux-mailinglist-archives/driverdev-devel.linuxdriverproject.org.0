Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BBA23511E
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Aug 2020 10:13:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9992B8450D;
	Sat,  1 Aug 2020 08:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AN2Vo2FUIyOg; Sat,  1 Aug 2020 08:13:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 060FC80EB3;
	Sat,  1 Aug 2020 08:13:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D051E1BF41D
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 08:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AA1FB2026D
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 08:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eI1OJuePSK+S for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 08:13:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 73B4820243
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 08:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=rA6LIWaj6NSoXDFoGEeq69LV6z47VtwE27PbIzDh8u4=; b=ZKmhv7//ua/x37fqCEw1Hs7Uxv
 tH46EcTer8hBWN4g76z9anhwAQtJ4nYqMmgc8iOGub6cSJsGkzlf3Zeky0hdUASN67VsnReixM8kS
 czFF4I0nPDYM/EkO9Houn/aOqUHHq7IFImMXuJauEKvztuVYKG7xzYYhcZoGDEHeLY7B5MIHnT1T4
 Hyv8/L5ZDXqNq4CuJXBQEhJqP12EjFzPmVs77iHRgG5KHm7ABb4JZVWwUQ19Ai5KOICl8BnS1ka0U
 hFc4gDatZwzDeg24ZjWqsyLVqOiJKEqnahinfsRRRDmb0e1Nw81Vxa1G1vbi6aTFRQyfRUgzzSoxo
 xoAFjY3g==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1k1mda-0008Ik-OJ; Sat, 01 Aug 2020 08:13:02 +0000
Date: Sat, 1 Aug 2020 09:13:02 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v2] Provide USF for the portable equipment.
Message-ID: <20200801081302.GA31778@infradead.org>
References: <cover.1596196060.git.yangdongdong@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1596196060.git.yangdongdong@xiaomi.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: juri.lelli@redhat.com, peterz@infradead.org, viresh.kumar@linaro.org,
 bsegall@google.com, gulinghua@xiaomi.com, duhui@xiaomi.com,
 rocking@linux.alibaba.com, devel@driverdev.osuosl.org,
 vincent.guittot@linaro.org, tanggeliang@xiaomi.com, mingo@redhat.com,
 yangdongdong@xiaomi.com, mgorman@suse.de, linux-pm@vger.kernel.org,
 rostedt@goodmis.org, fengwei@xiaomi.com, taojun@xiaomi.com,
 dietmar.eggemann@arm.com, huangqiwu@xiaomi.com, gregkh@linuxfoundation.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, zhangguoquan@xiaomi.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

You can't modify non-staging core code just for staging code.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
