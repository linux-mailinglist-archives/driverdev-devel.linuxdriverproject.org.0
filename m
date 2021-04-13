Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A1B35E6E2
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Apr 2021 21:05:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A68D040606;
	Tue, 13 Apr 2021 19:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H7iuSQ1w5Ha9; Tue, 13 Apr 2021 19:05:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7AB7402C0;
	Tue, 13 Apr 2021 19:05:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 051871BF8A8
 for <devel@linuxdriverproject.org>; Tue, 13 Apr 2021 19:05:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F29F840E80
 for <devel@linuxdriverproject.org>; Tue, 13 Apr 2021 19:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UonzDvVKgoUP for <devel@linuxdriverproject.org>;
 Tue, 13 Apr 2021 19:05:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2DF0440E7A
 for <devel@driverdev.osuosl.org>; Tue, 13 Apr 2021 19:05:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 12CE4613CB;
 Tue, 13 Apr 2021 19:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618340731;
 bh=B6O7GNSXnJENfuzG+opf+qDAj5k4Mcr2r2Eijr/z5a4=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=tnQLhD8nNgWL2I7np/c3kJX3JsVBjqSNXwgJsMN5M0MKPBpl5H6qz0FKzvmg17x/F
 5QKCRarmcEZyXtLn46TWQbsqXCaD4JT3+3wkbKkQf/KiLN3xnotbPQAvTMmfqWIizf
 UV3iRDH0O4sHdOuyDu3ha8RykGHjIbHeqiEHrc9i0j+opjHVY3Wzz88LGZ5fqE+myz
 pxLkf+weILU4Hd1iHUlLsSfxqzlIXrNPOB2mLeb3yNLsls+haix1fAbV9LYphxX6Yj
 KSV4FQ3Sb1De4qifN7mraDr1UlsCbfvu9zg92Prxf+9l4mLNxe/Vb6WIjh42N2IBkp
 lpS9FvuSGgePg==
MIME-Version: 1.0
In-Reply-To: <20210410055059.13518-4-sergio.paracuellos@gmail.com>
References: <20210410055059.13518-1-sergio.paracuellos@gmail.com>
 <20210410055059.13518-4-sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v13 3/4] staging: mt7621-dts: use valid vendor 'mediatek'
 instead of invalid 'mtk'
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 13 Apr 2021 12:05:29 -0700
Message-ID: <161834072975.3764895.14421546837704264769@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 tsbogend@alpha.franken.de, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Sergio Paracuellos (2021-04-09 22:50:58)
> Vendor listed for mediatek in kernel vendor file 'vendor-prefixes.yaml'
> contains 'mediatek' as a valid vendor string. Some nodes in the device
> tree are using an invalid vendor string vfor 'mtk' instead. Fix all of
> them in dts file. Update also ralink mt7621 related code to properly
> match new strings. Even there are used in the device tree there are
> some strings that are not referred anywhere but have been also updated
> with new vendor name. These are 'mtk,mt7621-wdt', 'mtk,mt7621-nand',
> 'mtk,mt7621-mc', and 'mtk,mt7621-cpc'.
> 
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---

Applied to clk-next
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
