Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E8A33089B
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 08:07:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28BDA6072A;
	Mon,  8 Mar 2021 07:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6rVVgxSqvz4; Mon,  8 Mar 2021 07:07:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8A45605DD;
	Mon,  8 Mar 2021 07:07:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF9241BF2A3
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 07:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9DA8F4EBA7
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 07:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RAHC0w6uiU9Y for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 07:07:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3CC74EB9F
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 07:07:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 83F2364F96;
 Mon,  8 Mar 2021 07:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615187243;
 bh=yRnC0M27VDXEb/P8FlGZ1DbXP6RghAiU5oL4zwk+HmE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GM9EjTEmA90TrS1y0HMy/FKvQSapah9JMcrVB6aQTHMM59jIfR+qWKS3gVR8egOEp
 d3VsSyKam1FJzpR3CgIB7LrPbqBfzrb25X0v/CxtH2qR/NhLHkiCBgwHPHyPQ+j2Ds
 HleW2E4BkqpB9qWh5FrPPB6LYgX3tYgvaZN31xXM=
Date: Mon, 8 Mar 2021 08:07:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: zhengxunli@mxic.com.tw
Subject: Re: [PATCH v10 5/9] staging: clocking-wizard: Add support for
 dynamic reconfiguration
Message-ID: <YEXNKFQ0/rxit/Re@kroah.com>
References: <OF146ABDBB.F4474CC3-ON48258692.000D1A0C-48258692.00266ED2@mxic.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF146ABDBB.F4474CC3-ON48258692.000D1A0C-48258692.00266ED2@mxic.com.tw>
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
 shubhrajyoti.datta@gmail.com, slwu@mxic.com.tw, sboyd@kernel.org,
 mturquette@baylibre.com, shubhrajyoti.datta@xilinx.com, juliensu@mxic.com.tw,
 robh+dt@kernel.org, git@xilinx.com, miquel.raynal@bootlin.com,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 08, 2021 at 02:59:47PM +0800, zhengxunli@mxic.com.tw wrote:
> CONFIDENTIALITY NOTE:
> 
> This e-mail and any attachments may contain confidential information 
> and/or personal data, which is protected by applicable laws. Please be 
> reminded that duplication, disclosure, distribution, or use of this e-mail 
> (and/or its attachments) or any part thereof is prohibited. If you receive 
> this e-mail in error, please notify us immediately and delete this mail as 
> well as its attachment(s) from your system. In addition, please be 
> informed that collection, processing, and/or use of personal data is 
> prohibited unless expressly permitted by personal data protection laws. 
> Thank you for your attention and cooperation.

This footer is not compatible with Linux kernel development, sorry.
Message is now deleted.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
