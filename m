Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 015DDD92C3
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 15:44:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D73086990;
	Wed, 16 Oct 2019 13:44:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lWnyzQy_wjlg; Wed, 16 Oct 2019 13:44:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C90C86975;
	Wed, 16 Oct 2019 13:44:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D313E1BF2AA
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 13:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CF3FF203C7
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 13:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yUhhID2fZEjR for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 13:44:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id F316320425
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 13:44:08 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id y135so4725600wmc.1
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 06:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Bafgp4jYGnLo/xet8UtFIBOpzKesPTarPqBx8mm1ghI=;
 b=PR02Gxdt3nLUj5CA3FhgPxpb2Pejo0uJv6oewhFi4gFnZfhfQLk1KDR6cRT5Bg1Y8G
 b0Z8H6bCwhLBqk5nevl2yYyz3hmUxRfSO0R3TlgGrw3CLY/hcpwBPOgP9lX9wfc3GgV2
 9oF7evBFpNZl8hoN5ENCFZ7nFmZNRJ2bSfKgR3P4NqbOKqz7XTgNkaa1w0fOZqroxfQy
 FRpBjAUAO4h3dChpTRrnH6DYycnW8hLiOjGTgK5sHDL5oRtptBl6QspTY1ITso1CmtmR
 58U2hXO6xsWqgSwp1aQt2TqWCNyDO2UX0pP6hPm7zLbV9oQp8M93Tq8VqCMREHy0toHv
 PRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Bafgp4jYGnLo/xet8UtFIBOpzKesPTarPqBx8mm1ghI=;
 b=JOc9p/Uo27Gjk8mR6Wvaj/q33hapDiyE1Li9wK54YC0ipS2Npt3mNML+Nz2et/zKCl
 F+llPmbZprzJAm7Ksb3ZQTi56VdhttMx5EtAFvyTGRHZBVdYvK8MxMzHQ75hVpYMI1fG
 qjjuNO9rdCGt/Cr1Dt+ESHXQ8Tp7UxTSPN8rA5RTQC+Oig32r2CbiNKGwlGNMKZSrQbl
 tb99l+CyRqoguEbHObbZTZBGaxQWaxFk1nOkAewBRMoLrC+beC2GYWjuWrFv7LVBTEJF
 W25gu8PSIpKF3h8+Gl0RcxqTWU7exBCMewnBlJY2/Gy4EHTS4aApCW+Wb8/iBi5L3dCd
 1iyw==
X-Gm-Message-State: APjAAAXCQyLsqq1kJaHSkOwKFTlZBU9RLHw387eDLwi8VqMMPSzOOjFy
 DCrWygGz15h7ieIajyN700I=
X-Google-Smtp-Source: APXvYqyB+z261XSi/xNHUTIkW7HCqAaCgNNk5jZlZTw9o+jzwNhtu889hivFUMlUicQi2ELvoiv9yA==
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr3723254wmb.127.1571233447045; 
 Wed, 16 Oct 2019 06:44:07 -0700 (PDT)
Received: from arch-late (87-196-73-205.net.novis.pt. [87.196.73.205])
 by smtp.gmail.com with ESMTPSA id r13sm37949311wrn.0.2019.10.16.06.44.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 06:44:06 -0700 (PDT)
References: <20191015135915.6530-1-hslester96@gmail.com>
 <20191016090628.7l5u4ytdqr2jlasg@pengutronix.de>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v2] media: imx7-mipi-csis: Add a check for
 devm_regulator_get
In-reply-to: <20191016090628.7l5u4ytdqr2jlasg@pengutronix.de>
Date: Wed, 16 Oct 2019 14:43:59 +0100
Message-ID: <m336fsst40.fsf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Marco,
On Wed 16 Oct 2019 at 10:06, Marco Felsch wrote:
> Hi Chuhong,
>
> On 19-10-15 21:59, Chuhong Yuan wrote:
>> devm_regulator_get may return an error but mipi_csis_phy_init misses
>> a check for it.
>> This may lead to problems when regulator_set_voltage uses the unchecked
>> pointer.
>> This patch adds a check for devm_regulator_get to avoid potential risk.
>>
>> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
>> ---
>> Changes in v2:
>>   - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.
>
> Did you miss the check for -EPROBE_DEFER?
>

I think nothing special is really needed to do in case of
EPROBE_DEFER, or am I missing something?
It just return to probe and probe returns also. I just talked
about it because it was not cover in the original code.

---
Cheers,
	Rui

>
> Regards,
>   Marco
>
>>
>>  drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
>> index 73d8354e618c..e8a6acaa969e 100644
>> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
>> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
>> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
>>  static int mipi_csis_phy_init(struct csi_state *state)
>>  {
>>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
>> +	if (IS_ERR(state->mipi_phy_regulator))
>> +		return PTR_ERR(state->mipi_phy_regulator);
>>
>>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
>>  				     1000000);
>> @@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
>>  		return ret;
>>  	}
>>
>> -	mipi_csis_phy_init(state);
>> +	ret = mipi_csis_phy_init(state);
>> +	if (ret < 0)
>> +		return ret;
>> +
>>  	mipi_csis_phy_reset(state);
>>
>>  	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> --
>> 2.20.1
>>
>>
>>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
