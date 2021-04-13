Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 679BF35E6E3
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Apr 2021 21:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB19740E58;
	Tue, 13 Apr 2021 19:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D8wg0JsXUjul; Tue, 13 Apr 2021 19:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B045F40E5F;
	Tue, 13 Apr 2021 19:05:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D62501BF9BD
 for <devel@linuxdriverproject.org>; Tue, 13 Apr 2021 19:05:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D22A5606DD
 for <devel@linuxdriverproject.org>; Tue, 13 Apr 2021 19:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jdhtCipqA3sh for <devel@linuxdriverproject.org>;
 Tue, 13 Apr 2021 19:05:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D78F6068A
 for <devel@driverdev.osuosl.org>; Tue, 13 Apr 2021 19:05:41 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EFCAC613CB;
 Tue, 13 Apr 2021 19:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618340741;
 bh=X7WLKy9e8wfmoHzGrC2MOXVR2/sY8zX4FAt9ZkKJsnQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=jvZhSI5inFIwJG/ctop1+Qq1bAVu1THj4ALBTd+NL1CsVO4gtocGLpUtspwVFWK0H
 COGjJYEdZC17keVMauKk13UtYqQm4UArcGOvrg9G5ZIYoVkCpf/8HvmTxyBIHXP9F7
 jOnyIP09ym3nn2YuvjfQ9YM68bR15qcUwNuyNTrVlrBp+gOfC+FpMMnboTpagCQlcc
 KH2faT1+kK86LRziMe+LDM8m0yKfJvTxOItOWNNgnzZogPFe3eJQ7jhyX0G79vC8A5
 qGwzu1LZtzQBGgQcAckKL15Aa8gDpcsRpxsxZWXZCZYSPfiQ8wtp//CcV5kQaf3ZK8
 5undbdMh+mAxg==
MIME-Version: 1.0
In-Reply-To: <20210410055059.13518-5-sergio.paracuellos@gmail.com>
References: <20210410055059.13518-1-sergio.paracuellos@gmail.com>
 <20210410055059.13518-5-sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v13 4/4] MAINTAINERS: add MT7621 CLOCK maintainer
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 13 Apr 2021 12:05:39 -0700
Message-ID: <161834073962.3764895.16827477929314261830@swboyd.mtv.corp.google.com>
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

Quoting Sergio Paracuellos (2021-04-09 22:50:59)
> Adding myself as maintainer for mt7621 clock driver.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---

Applied to clk-next
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
