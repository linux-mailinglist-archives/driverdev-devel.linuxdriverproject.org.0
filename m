Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 255E891CEF
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 08:18:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A31C20444;
	Mon, 19 Aug 2019 06:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id llhiWOrf8Iji; Mon, 19 Aug 2019 06:18:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35CF02045B;
	Mon, 19 Aug 2019 06:18:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E86F1BF410
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 06:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4BCBF20444
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 06:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uRSoI7X+VTdC for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 06:17:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by silver.osuosl.org (Postfix) with ESMTPS id E4A3420437
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 06:17:55 +0000 (UTC)
Received: from zn.tnic (p200300EC2F04B700DD16340F367BA899.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f04:b700:dd16:340f:367b:a899])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 5CA9D1EC072D;
 Mon, 19 Aug 2019 08:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1566195471;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=Tij8cUPtjlXBKM4Vt2vKmoASpHF0u05wcnukynHg88Y=;
 b=cv2oEIevx6RQAjKhn9EqEh82mDGBtttH2QjyhXEwIatTUCGo3hIvmlf45xQt8YqYrW5qpI
 l8kk59VaETbHymgum6O2Y8VBEIfC3k8WhgBBqSS73s5abTCQ8O0AzbjNsXmNTlkt/RfyLr
 w2gMqpDhmjOYD3yRf07U/7csjjkRkGs=
Date: Mon, 19 Aug 2019 08:18:40 +0200
From: Borislav Petkov <bp@alien8.de>
To: "Zhao, Yakui" <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 00/15] acrn: add the ACRN driver module
Message-ID: <20190819061840.GB4841@zn.tnic>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <20190816063925.GB18980@zn.tnic>
 <78897bb2-e6eb-cac2-7166-eccb7cd5c959@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78897bb2-e6eb-cac2-7166-eccb7cd5c959@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 19, 2019 at 09:44:25AM +0800, Zhao, Yakui wrote:
> Not sure whether it can be sent in two patch sets?
> The first is to add the required APIs for ACRN driver.
> The second is to add the ACRN driver

One patchset adding the APIs and its user(s).

And make sure to refresh on

https://www.kernel.org/doc/html/latest/process/submitting-patches.html

before sending.

Thx.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
