Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D67C2E0CDB
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 16:44:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6F43869E4;
	Tue, 22 Dec 2020 15:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7kmT7nJun-Ep; Tue, 22 Dec 2020 15:44:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6F5A8664B;
	Tue, 22 Dec 2020 15:44:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 458251BF370
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3CCD787281
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BesTjqN4OaR3 for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 15:44:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m43-15.mailgun.net (m43-15.mailgun.net [69.72.43.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D2CC38727E
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 15:44:17 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1608651858; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=V3is/KP9X3iODvQMYSfeCfbe4PwUmMc4FyAr6uEgGbc=;
 b=OdNyVsKrlKHsSqlxw0SYgXQ8htBBtALhPpkck4zRhumVEfxT4Qqy4xhBF5H9XCOKiv5pEFgj
 Q8BpM7bLEuOhsPR8c310AiBMkcS7hbCN1uKBFnfo9uTHLbXwlZyxRIQZ3+lsu77f7OGImAkq
 61AJn3x0u6VCTw76kCxfr8HVYwc=
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-west-2.postgun.com with SMTP id
 5fe2144b1d5c1fa4270628d6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 22 Dec 2020 15:44:11
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2E092C43462; Tue, 22 Dec 2020 15:44:11 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DEE1FC433C6;
 Tue, 22 Dec 2020 15:44:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DEE1FC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v3 05/24] wfx: add main.c/main.h
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-6-Jerome.Pouiller@silabs.com>
Date: Tue, 22 Dec 2020 17:44:05 +0200
In-Reply-To: <20201104155207.128076-6-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Wed, 4 Nov 2020 16:51:48 +0100")
Message-ID: <87a6u57smy.fsf@codeaurora.org>
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

> +/* NOTE: wfx_send_pds() destroy buf */
> +int wfx_send_pds(struct wfx_dev *wdev, u8 *buf, size_t len)
> +{
> +	int ret;
> +	int start, brace_level, i;
> +
> +	start = 0;
> +	brace_level = 0;
> +	if (buf[0] != '{') {
> + dev_err(wdev->dev, "valid PDS start with '{'. Did you forget to
> compress it?\n");
> +		return -EINVAL;
> +	}
> +	for (i = 1; i < len - 1; i++) {
> +		if (buf[i] == '{')
> +			brace_level++;
> +		if (buf[i] == '}')
> +			brace_level--;
> +		if (buf[i] == '}' && !brace_level) {
> +			i++;
> +			if (i - start + 1 > WFX_PDS_MAX_SIZE)
> +				return -EFBIG;
> +			buf[start] = '{';
> +			buf[i] = 0;
> +			dev_dbg(wdev->dev, "send PDS '%s}'\n", buf + start);
> +			buf[i] = '}';
> +			ret = hif_configuration(wdev, buf + start,
> +						i - start + 1);
> +			if (ret > 0) {
> + dev_err(wdev->dev, "PDS bytes %d to %d: invalid data (unsupported
> options?)\n",
> +					start, i);
> +				return -EINVAL;
> +			}
> +			if (ret == -ETIMEDOUT) {
> + dev_err(wdev->dev, "PDS bytes %d to %d: chip didn't reply (corrupted
> file?)\n",
> +					start, i);
> +				return ret;
> +			}
> +			if (ret) {
> + dev_err(wdev->dev, "PDS bytes %d to %d: chip returned an unknown
> error\n",
> +					start, i);
> +				return -EIO;
> +			}
> +			buf[i] = ',';
> +			start = i;
> +		}
> +	}
> +	return 0;
> +}

What does this function do? Looks very strange.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
