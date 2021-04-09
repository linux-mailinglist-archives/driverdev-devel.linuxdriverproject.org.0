Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AC435A591
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Apr 2021 20:15:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5915683FF6;
	Fri,  9 Apr 2021 18:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mzxCn5EGe9RA; Fri,  9 Apr 2021 18:15:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C015C83FA2;
	Fri,  9 Apr 2021 18:15:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C2A61BF371
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 18:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98827401C8
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 18:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PPh2k_OYBUqf for <devel@linuxdriverproject.org>;
 Fri,  9 Apr 2021 18:15:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3615A400E4
 for <devel@driverdev.osuosl.org>; Fri,  9 Apr 2021 18:15:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C30736100B;
 Fri,  9 Apr 2021 18:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617992126;
 bh=fQ2JN9dNxhKXdKovF2jMBNkmKRO7y4Cs/zqv1a8yX2I=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=hd3UIy8gNPv/EEgiIEnFhsQaQ2m3pwWZH9HvWfRdvJjeCYra6dhr1lmrYgHLzS/TZ
 LhhPS4ssNi2JY7c5N3f3gvqvuA3ZkHPD9VI4rAeMSZ47poj1+oGlKLo6D/wuwSSRt1
 GFFNvUtyk5zlsheEH1x48O3xACUxIpIOwwy57r8GgJmHBDMlNjsUEQKBQsqIyaaKnN
 O9PXD4rzR6+qb+guImpX8fWRHN5bDjGRvWtXWdMOCJTb1OeSIgrCHYkZCL7PTPHLem
 oepQwGLdNyBTtvln+lcObEAyync0Iu9iMPjg/n39+HRI11jNqSDMk4ns3WX1nqg3yA
 pawXa7N0Hkrxg==
MIME-Version: 1.0
In-Reply-To: <20210309052226.29531-3-sergio.paracuellos@gmail.com>
References: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
 <20210309052226.29531-3-sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v11 2/6] dt: bindings: add mt7621-sysc device tree binding
 documentation
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 09 Apr 2021 11:15:25 -0700
Message-ID: <161799212554.3790633.13295684894366579803@swboyd.mtv.corp.google.com>
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

Quoting Sergio Paracuellos (2021-03-08 21:22:22)
> Adds device tree binding documentation for clocks in the
> MT7621 SOC.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---

Applied to clk-next
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
