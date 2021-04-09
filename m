Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CC535A58D
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Apr 2021 20:15:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8B5A83FC5;
	Fri,  9 Apr 2021 18:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 40XQjjMt3aZa; Fri,  9 Apr 2021 18:15:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46F0483F95;
	Fri,  9 Apr 2021 18:15:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFD051BF371
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 18:15:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC67E83F95
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 18:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FHhu5YnQ71o8 for <devel@linuxdriverproject.org>;
 Fri,  9 Apr 2021 18:15:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4737783F66
 for <devel@driverdev.osuosl.org>; Fri,  9 Apr 2021 18:15:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D80366115B;
 Fri,  9 Apr 2021 18:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617992120;
 bh=+ujI/MPJ6ZQ5E1B/DUb1I7zwyG59eiq8HKHFW2iT6ag=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=LZwVmvxRUJoPiLq0E0naPKbbH0plygrBLxnPh6uNLTje75q2/Pk5tEZrPNcrkMJFX
 2T7mmAQ5sAayVQEqUec/L+uHNEElOAj0CjJVWyG3dtpg6Vb/GsdmQjZrHLcKnWzFVD
 bnxn0ALWkTAg+/i/wP4bA2lsWTvFVkr3BvFpkQkhyPjLe+GLrCqIEahQKbOyGxG2UJ
 OYZvhSQ0s2XOtetIeWiZiBb8jsYAabHX+OiKlqEb1tD4R5KZRewLFpzLq3+eAJbnGR
 yE242O2bZq/KqvdtU0zDNK3l3ufr4cHRRi39duYvQ1SUQ6VAocYDVavi0jBYEqTUgu
 vf2weMvs8yfgA==
MIME-Version: 1.0
In-Reply-To: <20210309052226.29531-2-sergio.paracuellos@gmail.com>
References: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
 <20210309052226.29531-2-sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v11 1/6] dt-bindings: clock: add dt binding header for
 mt7621 clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 09 Apr 2021 11:15:19 -0700
Message-ID: <161799211963.3790633.17291129306926041019@swboyd.mtv.corp.google.com>
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
 tsbogend@alpha.franken.de, Rob Herring <robh@kernel.org>,
 gregkh@linuxfoundation.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
 neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Sergio Paracuellos (2021-03-08 21:22:21)
> Adds dt binding header for 'mediatek,mt7621-clk' clocks.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---

Applied to clk-next
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
