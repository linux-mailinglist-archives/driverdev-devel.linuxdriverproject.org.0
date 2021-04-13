Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0302035E6D0
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Apr 2021 21:05:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD80B40604;
	Tue, 13 Apr 2021 19:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HSoXVc2GUkLp; Tue, 13 Apr 2021 19:05:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48C1B4012E;
	Tue, 13 Apr 2021 19:05:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 073471BF8A8
 for <devel@linuxdriverproject.org>; Tue, 13 Apr 2021 19:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9F2C606DD
 for <devel@linuxdriverproject.org>; Tue, 13 Apr 2021 19:05:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rnITRptGlYQt for <devel@linuxdriverproject.org>;
 Tue, 13 Apr 2021 19:05:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 609CD6068A
 for <devel@driverdev.osuosl.org>; Tue, 13 Apr 2021 19:05:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A7AFD613CA;
 Tue, 13 Apr 2021 19:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618340705;
 bh=adPubgfpOrI6A9TuJBDs8NDXHEvW3E+ZI2frnmYzgaM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=gUREuKWiLE9Bq+o/j58E6XCRWi5cFvHI0oGGS5LjGmUsAtF6mR6lFZXwkpJpVNdcC
 HRCsQVs8ovmUhm9rVONpaoBV9xk2UfMC6zAHhtrSC6ylO+yMQuFvLn+LVwArG314bk
 FYveLJw6UeDOthVe/Dy3NRNdtC9KfuNeQ5z+f+Uj+kaVT5m+zg36b/1ik5W2YixD5g
 oW0j32qRPtoCOVoYTFlno8VAVMFBCHjflBROwJWUBukPn7/BUHjMy1NALWSaVmEPiH
 ZYt5MEZ2EBzGV8Fyiub/ODlmZqrXKsMqoGBQt96bpGKUVwVddDGF8kt0vIuzQQLORV
 HRqsp9Sr1JNfQ==
MIME-Version: 1.0
In-Reply-To: <20210410055059.13518-2-sergio.paracuellos@gmail.com>
References: <20210410055059.13518-1-sergio.paracuellos@gmail.com>
 <20210410055059.13518-2-sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v13 1/4] clk: ralink: add clock driver for mt7621 SoC
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 13 Apr 2021 12:05:03 -0700
Message-ID: <161834070385.3764895.8150982536236653732@swboyd.mtv.corp.google.com>
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

Quoting Sergio Paracuellos (2021-04-09 22:50:56)
> The documentation for this SOC only talks about two
> registers regarding to the clocks:
> * SYSC_REG_CPLL_CLKCFG0 - provides some information about
> boostrapped refclock. PLL and dividers used for CPU and some
> sort of BUS.
> * SYSC_REG_CPLL_CLKCFG1 - a banch of gates to enable/disable
> clocks for all or some ip cores.
> 
> Looking into driver code, and some openWRT patched there are
> another frequencies which are used in some drivers (uart, sd...).
> According to all of this information the clock plan for this
> SoC is set as follows:
> - Main top clock "xtal" from where all the rest of the world is
> derived.
> - CPU clock "cpu" derived from "xtal" frequencies and a bunch of
> register reads and predividers.
> - BUS clock "bus" derived from "cpu" and with (cpu / 4) MHz.
> - Fixed clocks from "xtal":
>     * "50m": 50 MHz.
>     * "125m": 125 MHz.
>     * "150m": 150 MHz.
>     * "250m": 250 MHz.
>     * "270m": 270 MHz.
> 
> We also have a buch of gate clocks with their parents:
>   * "hsdma": "150m"
>   * "fe": "250m"
>   * "sp_divtx": "270m"
>   * "timer": "50m"
>   * "pcm": "270m"
>   * "pio": "50m"
>   * "gdma": "bus"
>   * "nand": "125m"
>   * "i2c": "50m"
>   * "i2s": "270m"
>   * "spi": "bus"
>   * "uart1": "50m"
>   * "uart2": "50m"
>   * "uart3": "50m"
>   * "eth": "50m"
>   * "pcie0": "125m"
>   * "pcie1": "125m"
>   * "pcie2": "125m"
>   * "crypto": "250m"
>   * "shxc": "50m"
> 
> With this information the clk driver will provide clock and gates
> functionality from a a set of hardcoded clocks allowing to define
> a nice device tree without fixed clocks.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---

Applied to clk-next
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
