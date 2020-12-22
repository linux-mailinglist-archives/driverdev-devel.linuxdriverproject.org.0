Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AF62E0CC4
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 16:32:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C0A0869A5;
	Tue, 22 Dec 2020 15:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcBLaOOxdiIN; Tue, 22 Dec 2020 15:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08F7D869D3;
	Tue, 22 Dec 2020 15:32:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C2C21BF370
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:32:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 88F0B860FE
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:32:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id isFcrA5Y62TS for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 15:32:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from so254-31.mailgun.net (so254-31.mailgun.net [198.61.254.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2D5E685E08
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 15:32:00 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1608651124; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=fEWw24nI30LjEVmqX2PihyrbqlViK7eac/PwbPUEdAc=;
 b=X09JO6EM+C6IaIUV6eAdpvW3J7IOWkf3ljHegswBZ0+0vxz0cH6M36CqFXSYUxSNhfm1F+vw
 6zStVFYXYyrAFJMgkn6IFaWoHuGdbD/2SglIx5l8ef2oYYmkwUipY5wFAtmlG3SLdfC2bQaz
 MopZz5aEMT2l4V+2ER8zAnA2y5o=
X-Mailgun-Sending-Ip: 198.61.254.31
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-west-2.postgun.com with SMTP id
 5fe211501d5c1fa427f69224 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 22 Dec 2020 15:31:28
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D154DC433CA; Tue, 22 Dec 2020 15:31:27 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 910B7C433C6;
 Tue, 22 Dec 2020 15:31:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 910B7C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v3 18/24] wfx: add data_tx.c/data_tx.h
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-19-Jerome.Pouiller@silabs.com>
Date: Tue, 22 Dec 2020 17:31:22 +0200
In-Reply-To: <20201104155207.128076-19-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Wed, 4 Nov 2020 16:52:01 +0100")
Message-ID: <874kkd97sl.fsf@codeaurora.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:

> +void wfx_tx(struct ieee80211_hw *hw, struct ieee80211_tx_control *control,
> +	    struct sk_buff *skb)
> +{
> +	struct wfx_dev *wdev = hw->priv;
> +	struct wfx_vif *wvif;
> +	struct ieee80211_sta *sta = control ? control->sta : NULL;
> +	struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
> +	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
> +	size_t driver_data_room = sizeof_field(struct ieee80211_tx_info,
> +					       rate_driver_data);
> +
> +	compiletime_assert(sizeof(struct wfx_tx_priv) <= driver_data_room,
> +			   "struct tx_priv is too large");

Interesting, never seen compiletime_assert() before. But I suspect
BUILD_BUG_ON_MSG() is preferred, at least there are more users.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
