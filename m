Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C17D3260FB4
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 12:27:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F3B8A2746F;
	Tue,  8 Sep 2020 10:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0i0VH7QLNN2n; Tue,  8 Sep 2020 10:27:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4A71D273CF;
	Tue,  8 Sep 2020 10:27:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 87BF31BF286
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 10:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 819E286977
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 10:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lx47I67RcfZP for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 10:27:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D3FC7868D2
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 10:27:22 +0000 (UTC)
Received: from coco.lan (ip5f5ad5ce.dynamic.kabel-deutschland.de
 [95.90.213.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8BC9D2177B;
 Tue,  8 Sep 2020 10:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599560841;
 bh=98uqJvpNFRRmztCSHPipazrlYRl/HX3TWgGmXTvF4iU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=U66DiOtCOmRyrxx1i/2Sq9Q3zt+MIZQEckcbSH3hXI68XJipOrOJd8BnhSlrxYz0W
 NMyVQUztG2J9rNZeC/b7EVRUxy8RaDB5xy+My8XQhYHoYcFCeoeT9DoW1h6L3267vw
 VOPjzaQQ8AAGsu9QXF6HkRk+5+ZYEKkWti7pCZgA=
Date: Tue, 8 Sep 2020 12:27:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 0/5] address W=1 warnings at staging/media/atomisp
Message-ID: <20200908122716.09562b43@coco.lan>
In-Reply-To: <cover.1599141140.git.mchehab+huawei@kernel.org>
References: <cover.1599141140.git.mchehab+huawei@kernel.org>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Anant Thazhemadam <anant.thazhemadam@gmail.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, mauro.chehab@huawei.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

Em Tue,  8 Sep 2020 12:12:21 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> The linux-media policy is to have zero warnings with W=1. However, when
> I started using a Jenkins instance at https://builder.linuxtv.org to automate
> such tests, I didn't notice that a bug at the scripts were just ignoring
> warnings.

Please ignore this patch series. It was sent by mistake instead
of a completely unrelated one.

This was already merged via the media tree.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
