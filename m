Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CB428C164
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 21:21:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AACE0874BB;
	Mon, 12 Oct 2020 19:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R6Kh5M1QsBoN; Mon, 12 Oct 2020 19:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D7D88724B;
	Mon, 12 Oct 2020 19:21:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71BB41BF5DF
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 19:21:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6936986A89
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 19:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0d+PhkS1uuHX for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 19:21:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E785786A74
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 19:21:16 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id m11so16790603otk.13
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 12:21:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bDPx3gJbG2CpVJ6aCSdfBbWW1HjsWj+9+ilZev1TlOQ=;
 b=RnlwTm0dKMHwLT3bFN/v8ZUMBOvDGcEtDlup3ClnHeV1THmTHD4t4TT0HvgRhaymJn
 VGVo7uoyRAvh9FcrKoS+e2xf+X7n8D5G+9wOG8QD2vIupjBBG5cIGUqQvtpVD99SC3Rx
 RyDbblB9crd3kcUNfeXrWULZw+F5hX9h4NTri/cn3pDSCexLEMk97754LYyhInDcoAIU
 mvuvKJSh51rMXZkE0uItUjYc9hcb0/iMeVG5F/LlJ235xKXPEnTN0qQDM/on9Tx/QniR
 xWzxnHchkFUN8VtS2FT1FnStSD+Y0Kfu0XTxlov9a8N0aunqeKLbqtKJUwH/O7Scg3af
 tttg==
X-Gm-Message-State: AOAM530K/SBq9KSKdXgUH5xkc+gDLPeuDXqpOG+nC8W7A4W1YaA8kE5P
 9wap6R398Cms2ibZZ9GW0Q==
X-Google-Smtp-Source: ABdhPJw/4sppoLAPM1GFsYwKrqpR8AaTvfdRnnsfE2ptYh6DHCLhGTrUTKut0LsveqNvpS/12rG/Eg==
X-Received: by 2002:a9d:6954:: with SMTP id p20mr18379195oto.189.1602530476200; 
 Mon, 12 Oct 2020 12:21:16 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m1sm9428947otq.30.2020.10.12.12.21.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 12:21:15 -0700 (PDT)
Received: (nullmailer pid 1940143 invoked by uid 1000);
 Mon, 12 Oct 2020 19:21:14 -0000
Date: Mon, 12 Oct 2020 14:21:14 -0500
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 1/2] MAINTAINERS: fix broken doc refs due to yaml
 conversion
Message-ID: <20201012192114.GA1938842@bogus>
References: <cover.1602245659.git.mchehab+huawei@kernel.org>
 <ba7319ab47bc7e80a57667f700ab677ceaa3ca8c.1602245659.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba7319ab47bc7e80a57667f700ab677ceaa3ca8c.1602245659.git.mchehab+huawei@kernel.org>
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

On Fri, Oct 09, 2020 at 02:15:30PM +0200, Mauro Carvalho Chehab wrote:
> Several *.txt files got converted to yaml. Update their
> references at MAINTAINERS file accordingly.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/devicetree/bindings/clock/hi6220-clock.txt | 2 +-
>  MAINTAINERS                                              | 9 ++++-----
>  .../devicetree/bindings/net/wireless/silabs,wfx.yaml     | 2 +-
>  3 files changed, 6 insertions(+), 7 deletions(-)

Doesn't apply for me.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
