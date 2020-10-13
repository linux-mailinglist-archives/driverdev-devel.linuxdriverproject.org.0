Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8F428CA89
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Oct 2020 10:53:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F155B2E0FF;
	Tue, 13 Oct 2020 08:52:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v63zj+bnyT2V; Tue, 13 Oct 2020 08:52:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 656352E102;
	Tue, 13 Oct 2020 08:52:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22BE21BF33E
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 08:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E01187ABF
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 08:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4CIcnNJI8Vjl for <devel@linuxdriverproject.org>;
 Tue, 13 Oct 2020 08:52:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9DCF587A65
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 08:52:45 +0000 (UTC)
Received: from coco.lan (ip5f5ad5b2.dynamic.kabel-deutschland.de
 [95.90.213.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B202208D5;
 Tue, 13 Oct 2020 08:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602579165;
 bh=aJgA6ExP0DSm6nBNCKO0momyiW8rATBh/N/tjVwFoX4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZywSp6g3fnrc+dDQMTMevQ8bcDbXccGRW63CJVA2KMFyTFl0jxAgzSVH8Aw8PNDz+
 j3v4uCB0LjBf6Jn4L/HdYC8dTD5oBNRwMhesK4lvxwmxta4Z03kHimqRZ47PVUBLjb
 Bthn3zxlJZejgxmGxKBjUTeAZMI9LPBgnxdP+pGQ=
Date: Tue, 13 Oct 2020 10:52:39 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] MAINTAINERS: fix broken doc refs due to yaml
 conversion
Message-ID: <20201013105239.348efc0c@coco.lan>
In-Reply-To: <20201012192114.GA1938842@bogus>
References: <cover.1602245659.git.mchehab+huawei@kernel.org>
 <ba7319ab47bc7e80a57667f700ab677ceaa3ca8c.1602245659.git.mchehab+huawei@kernel.org>
 <20201012192114.GA1938842@bogus>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 12 Oct 2020 14:21:14 -0500
Rob Herring <robh@kernel.org> escreveu:

> On Fri, Oct 09, 2020 at 02:15:30PM +0200, Mauro Carvalho Chehab wrote:
> > Several *.txt files got converted to yaml. Update their
> > references at MAINTAINERS file accordingly.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/clock/hi6220-clock.txt | 2 +-
> >  MAINTAINERS                                              | 9 ++++-----
> >  .../devicetree/bindings/net/wireless/silabs,wfx.yaml     | 2 +-
> >  3 files changed, 6 insertions(+), 7 deletions(-)  
> 
> Doesn't apply for me.

It is based on the top of -next, so perhaps it depends on some other
changes that aren't upstream yet and comes from other trees. 

I could try to split it, but I guess the easiest way is
to just push this one by the end of the merge window, together
with the remaining patches I have left, fixing the other doc
build issues.

Would that work for you?

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
