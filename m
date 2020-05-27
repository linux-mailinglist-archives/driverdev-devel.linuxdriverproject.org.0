Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2860E1E428D
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 14:39:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D96624BDF;
	Wed, 27 May 2020 12:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 70ezOiHWOI2h; Wed, 27 May 2020 12:39:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 63ED9204DD;
	Wed, 27 May 2020 12:39:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C5FC1BF2FC
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 38D9386DF8
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 12:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LCvFISZ89dSw for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 12:39:49 +0000 (UTC)
X-Greylist: delayed 00:05:03 by SQLgrey-1.7.6
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0DD8286DF1
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 12:39:48 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590583189; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=+mQNVzce+4+RLoIQRxILi9XM/m92f1kvOextGxb68/E=;
 b=FE285JeDHnpUrUjDl8GwVRFer4Wpg1Sq4vLesUf34niNNQBAHMMw0znggxUzztbIIrHkcQsK
 NKkvp5yKsTqi8SmteL5DrGwq/x2HLcsIh4Sfwu2xL5AbEJy8uwBrqDXxA+xktmoUce7dtzsB
 QoCMDAG7Vnrxy+smgAGH44IZjOc=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 5ece5e6250867324817ccc6d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 27 May 2020 12:34:42
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 194AEC433CA; Wed, 27 May 2020 12:34:42 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D435FC433C9;
 Wed, 27 May 2020 12:34:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D435FC433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 00/10] staging: wfx: introduce nl80211 vendor extensions
References: <20200526171821.934581-1-Jerome.Pouiller@silabs.com>
Date: Wed, 27 May 2020 15:34:37 +0300
In-Reply-To: <20200526171821.934581-1-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Tue, 26 May 2020 19:18:11 +0200")
Message-ID: <87imghv9nm.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:

> This series introduces some nl80211 vendor extensions to the wfx driver.
>
> This series may lead to some discussions:
>
>   1. Patch 7 allows to change the dynamic PS timeout. I have found
>      an API in wext (cfg80211_wext_siwpower()) that do more or less the
>      same thing. However, I have not found any equivalent in nl80211. Is it
>      expected or this API should be ported to nl80211?

struct wireless_dev::ps_timeout doesn't work for you?

>
>   2. The device The device allows to do Packet Traffic Arbitration (PTA or
>      also Coex). This feature allows the device to communicate with another
>      RF device in order to share the access to the RF. The patch 9 provides
>      a way to configure that. However, I think that this chip is not the
>      only one to provide this feature. Maybe a standard way to change
>      these parameters should be provided?
>
>   3. For these vendor extensions, I have used the new policy introduced by
>      the commit 901bb989185516 ("nl80211: require and validate vendor
>      command policy"). However, it seems that my version of 'iw' is not
>      able to follow this new policy (it does not pack the netlink
>      attributes into a NLA_NESTED). I could develop a tool specifically for
>      that API, but it is not very handy. So, in patch 10, I have also
>      introduced an API for compatibility with iw. Any comments about this?

If you want the driver out of staging I recommend not adding any vendor
commands until the driver is moved to drivers/net/wireless. Also do note
that we have special rules for nl80211 vendor commands:

https://wireless.wiki.kernel.org/en/developers/documentation/nl80211#vendor-specific_api

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
