Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E403D35E6E1
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Apr 2021 21:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 059BE40E7A;
	Tue, 13 Apr 2021 19:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MtfIH_E5wFjT; Tue, 13 Apr 2021 19:05:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3FB940E58;
	Tue, 13 Apr 2021 19:05:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B2101BF8A8
 for <devel@linuxdriverproject.org>; Tue, 13 Apr 2021 19:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE3014035B
 for <devel@linuxdriverproject.org>; Tue, 13 Apr 2021 19:05:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HLtDGZQJdTh2 for <devel@linuxdriverproject.org>;
 Tue, 13 Apr 2021 19:05:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58FA14032F
 for <devel@driverdev.osuosl.org>; Tue, 13 Apr 2021 19:05:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C6DBF613CA;
 Tue, 13 Apr 2021 19:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618340719;
 bh=5Hi5Yc4/YAdXsswaYvFvmDelGHP+k/EQ+wxEZY8f19A=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=fkbVRaPnQjmQ8nJn7l9etFTOCdRTCttnSqd3PbxSmM0QEEmHh46JJSAQlBBckHy4e
 /qHYKlnQsZ5SyHV6V0pRW5R7YjHRJcqgpWKCnaSW6I6hL7dvaqJC7DcltTZhFKOOYO
 P/0qw4nkzqX0ZEOk7T+ZRxzJllQWD6u8gmToSuK6W+gfo9WffRg/gSRrj/4cde0Vcz
 5bTlu3qTqSgAqxKq41SeGxgnOROkDKbKT0Tv6RJZYkS2NR7+zX2UGgClfTPx7uuU8F
 hZIfomSeIyzjah+rKTgPwQ0HHnUmMI9Yq9XF7AOVZVex7wSp2YeP00eGOb7P1Ha3Iu
 22Cdf9P6SXvAw==
MIME-Version: 1.0
In-Reply-To: <20210410055059.13518-3-sergio.paracuellos@gmail.com>
References: <20210410055059.13518-1-sergio.paracuellos@gmail.com>
 <20210410055059.13518-3-sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v13 2/4] staging: mt7621-dts: make use of new 'mt7621-clk'
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 13 Apr 2021 12:05:18 -0700
Message-ID: <161834071831.3764895.1341697791144170137@swboyd.mtv.corp.google.com>
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

Quoting Sergio Paracuellos (2021-04-09 22:50:57)
> Clocks for SoC mt7621 have been properly integrated so there is
> no need to declare fixed clocks at all in the device tree. Remove
> all of them, add new device tree nodes for mt7621-clk and update
> the rest of the nodes to use them.
> 
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---

Applied to clk-next
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
