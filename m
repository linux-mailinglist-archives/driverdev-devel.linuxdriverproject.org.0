Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4FDD0FA8
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 15:08:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 625098692F;
	Wed,  9 Oct 2019 13:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ZLiyZEMTMbD; Wed,  9 Oct 2019 13:08:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 432B286916;
	Wed,  9 Oct 2019 13:08:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A0281BF2B4
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:08:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9633422F22
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mSCnIhvwSKs4 for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 13:08:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by silver.osuosl.org (Postfix) with ESMTPS id CCB5222F05
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 13:08:21 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id D2C992214A;
 Wed,  9 Oct 2019 09:08:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Wed, 09 Oct 2019 09:08:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=mLKOTL/8x5gDgJFUJhb3gNI98kn
 LsTJTiu2myd2FUm8=; b=hNhbcpxLBrllawZD05Fou1XENFBUs9M6EKGJmP4Lia4
 2hV2LzodIvo7MnT4LRFkfJQ8g5gs7Ss0xDmYBBWeFVQ6tgjYZpUz/a00tB0ECRj9
 HkGgu2TAgCjblJ/ug9PHHWL0wdd4KJpKIHhuaC7ixOR6y0dMNIWeK8qyecwFpb1n
 oeebZ4/6ziYTpYERWG6XsTu3foxkZHH1IQBvewgNvSZZm71T0EI0pTMBEp1oYfSt
 9VkuAyrQ5oqw9x91KFSWOW+rdo9gbRncM2IgB9YC5l6Kf73+WfugJFhKni6PN59j
 GfIHXlGhzKMg0HrV7+7QlaLVFI1w1URjL6VD3McV8cg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=mLKOTL
 /8x5gDgJFUJhb3gNI98knLsTJTiu2myd2FUm8=; b=jNBGiYbuvNrXUM4MjX81uU
 GqFuP/jUuo+oP39GYep1haEv3KEBTJUppsZy+ldyhL9ievsDhTVMctzaiK8312wE
 wVae1trfvEv7z/dhmOsZaQx61FD/UG4cR+re8BhTJy2axrc0ylJZUtS6S+nsj8pB
 h32gG2eBsmbJCkJTdgo7yDL5w9w3Vnj6/GV7wiqs1FdcnIANr3gCRRV7Qn3Yvv6C
 6sUI4Yxxu+VfM3F8LUg78jkkTlKHN4oKxQ9yALbVQhgfhG0OMkriQ1k6gL7q3PY5
 fWn0aH3awOhySosC65uD9Ma/9w62AGIsq9bWT2PyOYXcbBneS7w0ilB3/g31lXBQ
 ==
X-ME-Sender: <xms:xNudXXcK6dMPpKj0_oxaG-bTWJHiqmRyhVsvG5kvUGntUJTAD3AOhQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedriedugdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
 ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
 lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:xNudXRcrfEORuG5dl9z9rmsHxSj7qQS_5iwoIpoRpJp4H1tGnwVjKA>
 <xmx:xNudXde6sP8rTqO2F8bQ7AC5iZXUI4sdMa9qL6dXp5o6MyHHm0-RsQ>
 <xmx:xNudXXo44Dl4h4BbC7pwG61Q1B-UfEyrgZkvuaxbR_M5PRCwyA53uA>
 <xmx:xNudXQFZNblyOfLkPG8IKhwn39aidh-ucqUngk2RVygeY0Ii-6868Q>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4253ED6005D;
 Wed,  9 Oct 2019 09:08:20 -0400 (EDT)
Date: Wed, 9 Oct 2019 15:08:18 +0200
From: Greg KH <greg@kroah.com>
To: Alexander Gordeev <a.gordeev.box@gmail.com>
Subject: Re: [PATCH RFC v2 2/2] dmaengine: avalon: Intel Avalon-MM DMA
 Interface for PCIe test
Message-ID: <20191009130818.GB4148375@kroah.com>
References: <cover.1570558807.git.a.gordeev.box@gmail.com>
 <6b540aeae71112154836003f2356703df2b36333.1570558807.git.a.gordeev.box@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b540aeae71112154836003f2356703df2b36333.1570558807.git.a.gordeev.box@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, Michael Chen <micchen@altera.com>,
 dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 09, 2019 at 12:12:31PM +0200, Alexander Gordeev wrote:
> +config AVALON_TEST_TARGET_BASE
> +	hex "Target device base address"
> +	default "0x70000000"
> +
> +config AVALON_TEST_TARGET_SIZE
> +	hex "Target device memory size"
> +	default "0x10000000"

Don't put stuff like this as a configuration option, requiring the
kernel to be rebuilt.  Make it dynamic, or from device tree, but not
like this.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
