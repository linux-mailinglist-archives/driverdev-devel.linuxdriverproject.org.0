Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A37D770BA0
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 23:40:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DB6085BD3;
	Mon, 22 Jul 2019 21:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x4hpw+6T4Gh2; Mon, 22 Jul 2019 21:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7501484F27;
	Mon, 22 Jul 2019 21:40:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B361C1BF852
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 21:40:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B019384F27
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 21:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6XVa6DOGIF0E for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 21:40:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 334B084EAD
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 21:40:40 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9D9F21951;
 Mon, 22 Jul 2019 21:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563831640;
 bh=y0mcCIsdo0FcATXDcOqG1yEJ21Gs2qykOfjRdssCnxw=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=LlEINdah35joUMLAd7h7JkAX4r+iajAkvWTpl0RJK1BI/wTmyCqxiaVOpZR6MmL5C
 tShW8EN8CPJ5jy8e+ctwKH1V6MC+kxBVXl/FZNH8197I1dU170tYoYePP+4OsklIyt
 GVBnYiV2pgosObI4Xw/E4i54QatiK2/6phwyLAlY=
MIME-Version: 1.0
In-Reply-To: <20190709182018.23193-2-gch981213@gmail.com>
References: <20190709182018.23193-1-gch981213@gmail.com>
 <20190709182018.23193-2-gch981213@gmail.com>
Subject: Re: [PATCH 1/5] MIPS: ralink: add dt binding header for mt7621-pll
To: "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Chuanhong Guo <gch981213@gmail.com>, open list <linux-kernel@vger.kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:40:39 -0700
Message-Id: <20190722214039.E9D9F21951@mail.kernel.org>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Hogan <jhogan@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The subject of this patch is confusing. Not sure what it has to do with
"MIPS:" so maybe remove that and prefix it "dt-bindings: clock:"
instead.

Quoting Chuanhong Guo (2019-07-09 11:20:14)
> This patch adds dt binding header for mediatek,mt7621-pll
> 
> Signed-off-by: Weijie Gao <hackpascal@gmail.com>
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Otherwise looks ok to me. Should I apply it to clk tree?

>  include/dt-bindings/clock/mt7621-clk.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/clock/mt7621-clk.h
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
