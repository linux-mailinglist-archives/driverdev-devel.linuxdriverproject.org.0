Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0909B28C16F
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 21:26:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C1FF86B15;
	Mon, 12 Oct 2020 19:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hW1PzuItMwi0; Mon, 12 Oct 2020 19:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E60386930;
	Mon, 12 Oct 2020 19:26:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D3781BF5DF
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 19:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0970187299
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 19:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eEL7Kth8ejUa for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 19:26:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9F1F387258
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 19:26:17 +0000 (UTC)
Received: from kernel.org (unknown [104.132.1.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 522602074A;
 Mon, 12 Oct 2020 19:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602530776;
 bh=Z2F7hT/rtiFpKHrOdbWSil4FwSFmNrhQsk/IQB1RaAo=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=lgced3+Zq1zK+bGA+HzuCC8nqbByms2HTt6BvjcsUEyPmQTMZov/m7G0uWD95MPpq
 ABrfmQGy2MG35o8TFaYHl587ST1XUpOgjCKjllIHdpdpHR0tr6ivSnYGAjla672Ay9
 uft2uj8S8m2ZIwalJ0BygYEvs0A6yT2Ms3tx295s=
MIME-Version: 1.0
In-Reply-To: <ba7319ab47bc7e80a57667f700ab677ceaa3ca8c.1602245659.git.mchehab+huawei@kernel.org>
References: <cover.1602245659.git.mchehab+huawei@kernel.org>
 <ba7319ab47bc7e80a57667f700ab677ceaa3ca8c.1602245659.git.mchehab+huawei@kernel.org>
Subject: Re: [PATCH 1/2] MAINTAINERS: fix broken doc refs due to yaml
 conversion
From: Stephen Boyd <sboyd@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Mon, 12 Oct 2020 12:26:15 -0700
Message-ID: <160253077510.310579.8020430999414158134@swboyd.mtv.corp.google.com>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Mauro Carvalho Chehab (2020-10-09 05:15:30)
> Several *.txt files got converted to yaml. Update their
> references at MAINTAINERS file accordingly.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
