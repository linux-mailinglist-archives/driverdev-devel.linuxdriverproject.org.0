Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0401766DA
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 15:05:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9E5962649E;
	Fri, 26 Jul 2019 13:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TqqkL-tNKaCa; Fri, 26 Jul 2019 13:05:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BEBF620347;
	Fri, 26 Jul 2019 13:05:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFA7B1BF2A0
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 13:05:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BA18389BFE
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 13:05:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K10c6nXvC-GB for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 13:05:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1818F89BF1
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 13:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v25fSyTOpn+HLVJ1/RYUYjo/p2HKkKXuypllJV6JuFU=; b=FGTl2rF5Ekw99U5eWA0qO4ViY
 ezxgPoNckrfd02rKeR5DfhI5n58vJTcEz7aQ3diHZkRmGndI5Rrlekc33Ay4TibbLOwpG1XKCSloG
 82pJRxtCcnQvPslNG7xO/8DHeER9qlTWSUhlaF/iNE0YUnkdxnIGvBgg9Brpdp4iVK9JkJjbm0TvY
 TcCvfrG3NaxcqzRwVsiX1+l5U3fjf1yQEEnGnZRs2iZazrP26MkKBj4gTVChmnzy3Hz3krFh/Kx2g
 S6dj3Qi5GKN2Rfpl0jR+wq9OXeL8jT6dpW75i/Mr7cpWYS51GnMWuFS7A6xMmFALsHG7f3ly85U0p
 sDY3Ty9HA==;
Received: from [179.95.31.157] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzun-0004Yn-F9; Fri, 26 Jul 2019 13:05:42 +0000
Date: Fri, 26 Jul 2019 10:05:33 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v2 00/26] ReST conversion of text files without .txt
 extension
Message-ID: <20190726100521.5d379300@coco.lan>
In-Reply-To: <cover.1564145354.git.mchehab+samsung@kernel.org>
References: <cover.1564145354.git.mchehab+samsung@kernel.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: linux-wireless@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-doc@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-i2c@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, devel@lists.orangefs.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, rcu@vger.kernel.org,
 openrisc@lists.librecores.org, linux-arm-kernel@lists.infradead.org,
 linux-hwmon@vger.kernel.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 dmaengine@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 26 Jul 2019 09:51:10 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> escreveu:

> This series converts the text files under Documentation with doesn't end
> neither .txt or .rst and are not part of ABI or features.
> 
> This series is at:
> 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=rst_for_5_4_v3
> 
> And it is based on yesterday's upstream tree.
> 
> After this series, we have ~320 files left to be converted to ReST.
> 
> v2:
>   - Added 3 files submitted for v5.3 that weren't merged yet;
>   - markdown patch broken into two, per Rob's request;
>   - rebased on the top of upstream master branch
> 
> Mauro Carvalho Chehab (26):

>   docs: ABI: remove extension from sysfs-class-mic.txt

    ^ In time: this one was already merged.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
