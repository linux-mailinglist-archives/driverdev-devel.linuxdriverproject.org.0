Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 809102E0CB3
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 16:27:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCCFA872A6;
	Tue, 22 Dec 2020 15:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cHok26qeSOUk; Tue, 22 Dec 2020 15:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B1468717C;
	Tue, 22 Dec 2020 15:27:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C3E91BF370
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 539068717C
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:27:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F8ENyWS26MwL for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 15:27:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from so254-31.mailgun.net (so254-31.mailgun.net [198.61.254.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A97B28717A
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 15:27:52 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1608650874; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=KjG32h0+KU2F0eVEY2T3bvV7gIoTyyNcz13V1oU+nSA=;
 b=F5S6CWm73kku343A2rTk6pcVc6/Ck1rk+PG/wNQo/g/zKDsYh0UDKwLGpQUIX82PPz2PG05m
 W9UbjjIr4IWPLFP7mB0lbSi1Kv0d5LBKkChbUfP782eYUpqAcugpXHjvHcjQ8DO5/CwSIfs7
 +JA36qFN2Xf+pcN6rC2vPNb16Ms=
X-Mailgun-Sending-Ip: 198.61.254.31
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n09.prod.us-east-1.postgun.com with SMTP id
 5fe21074e61d77c971bdd200 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 22 Dec 2020 15:27:48
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 513F1C433ED; Tue, 22 Dec 2020 15:27:47 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 135ACC433C6;
 Tue, 22 Dec 2020 15:27:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 135ACC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v3 18/24] wfx: add data_tx.c/data_tx.h
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-19-Jerome.Pouiller@silabs.com>
Date: Tue, 22 Dec 2020 17:27:42 +0200
In-Reply-To: <20201104155207.128076-19-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Wed, 4 Nov 2020 16:52:01 +0100")
Message-ID: <878s9p97yp.fsf@codeaurora.org>
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

> +static bool ieee80211_is_action_back(struct ieee80211_hdr *hdr)
> +{
> +	struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)hdr;
> +
> +	if (!ieee80211_is_action(mgmt->frame_control))
> +		return false;
> +	if (mgmt->u.action.category != WLAN_CATEGORY_BACK)
> +		return false;
> +	return true;
> +}

Don't use ieee80211_ prefix within a driver, it's reserved for mac80211.
Use wfx_ instead.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
