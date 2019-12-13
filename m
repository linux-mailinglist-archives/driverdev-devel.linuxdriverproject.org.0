Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4089611DBFA
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 03:06:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD16B88A51;
	Fri, 13 Dec 2019 02:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VepRagGhQ1Is; Fri, 13 Dec 2019 02:06:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8103889D1;
	Fri, 13 Dec 2019 02:06:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBB6A1BF298
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 02:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D374B204AA
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 02:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZLu9ymesqiQv for <devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 02:06:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id BA5E5203BD
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 02:06:06 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id q6so4864450wro.9
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 18:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Mw8EW83cosmiQE+UaosVXBv03NWKkPkaFOtzv1VzjCQ=;
 b=cjNnXVtnvtQia0K2KbhpLNAeEdFH/d2hkcA3VosxGkyt0uAqWt5HknuHvpO2ogvMrh
 mUr4MPckkTku/7nAY6yNBsTDkXq1avIVBqnS+A1Y2vJJqXDlpMnDZn5u5WvFBF+hHSV/
 3z3MrjSDKThP07L5GVZW0PoETKrdpgABSKtpotwmdhOBSpmuVhxqj529df18n0uT4jug
 Pt+6jqA6MMq9G7wHMT6d+DWsNNYqqsAzpVdBOW53p8F6c/qd24cEVAv4K9AiSTkI4ewb
 sbx8NBEuCf4fxnVH2iWPZ2o0IlhrX74IanwEZbf8E2UYAOdHnIzqFBzNAzaj5hJHHTQs
 GQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Mw8EW83cosmiQE+UaosVXBv03NWKkPkaFOtzv1VzjCQ=;
 b=moamvrWMtBhsN0Rt3T8KzNc79zneQILtXsj+F9c42tJQnHD5KtEHQO2yxUmLT++BU1
 Ir458/qe3TNG5GYgzFXPAw7X6QQSkQ00g9cd2ziptWzwoUBv3Ytyi5RG1Z+37OMUka6F
 /ZVHcmljtLOT/eNbYOw7G1ytbP5KqrNSrE6JAfZt6Uj45zFNdkrsVi6WCPUu8FVk/BH7
 lU4/4HwAlRfTqnm7bj/AYoZrVWtcNfyR5pptl89ggLdDdULkTcxwe1TmWc91cOwaqVWs
 za0w7OTTBpgl2uCndkhb25XmxzZc6ekmNUrGkJCzMv1HhICgdnfiZOVB1GdFCsI11Xs5
 WaAQ==
X-Gm-Message-State: APjAAAUrDF1uxlLv8ipVIWAjGhMeWoJHcqmQ3+846ky1mHhGNYpgBxPB
 6rYVWR/Z20fevpETVKHrsMA=
X-Google-Smtp-Source: APXvYqwkL9mwmuap/aBeos1lalFh1j9+Rp5XcBDUgY5eMnCzHtDZyckNfu5KNghiABEB2x1ki7xfLw==
X-Received: by 2002:adf:fd84:: with SMTP id d4mr9574903wrr.211.1576202764985; 
 Thu, 12 Dec 2019 18:06:04 -0800 (PST)
Received: from [172.30.89.135] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id l22sm8087934wmj.42.2019.12.12.18.06.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Dec 2019 18:06:04 -0800 (PST)
Subject: Re: [PATCH] media: imx7-mipi-csis: remove subdev_notifier
To: Rui Miguel Silva <rui.silva@linaro.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Dan Carpenter <dan.carpenter@oracle.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20191212191714.812249-1-rmfrfs@gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <90fd1ef5-7807-2de1-c4c8-73fc29688b0d@gmail.com>
Date: Thu, 12 Dec 2019 18:06:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191212191714.812249-1-rmfrfs@gmail.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 12/12/19 11:17 AM, Rui Miguel Silva wrote:
> It was defined a notifier in the csi_state structure that is never
> allocated. And besides that it's unregister in the remove, even though
> it is a no-op, just remove both.
>
> Fixes: 7807063b862b ("media: staging/imx7: add MIPI CSI-2 receiver subdev for i.MX7")
> Reported-by: Hans Verkuil <hverkuil@xs4all.nl>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Suggested-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Rui Miguel Silva <rmfrfs@gmail.com>

Reviewed-by: Steve Longerbeam <slongerbeam@gmail.com>

> ---
>   drivers/staging/media/imx/imx7-mipi-csis.c | 3 ---
>   1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 99166afca071..383abecb3bec 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -251,8 +251,6 @@ struct csi_state {
>   
>   	struct mipi_csis_event events[MIPI_CSIS_NUM_EVENTS];
>   
> -	struct v4l2_async_notifier subdev_notifier;
> -
>   	struct csis_hw_reset hw_reset;
>   	struct regulator *mipi_phy_regulator;
>   	bool sink_linked;
> @@ -1104,7 +1102,6 @@ static int mipi_csis_remove(struct platform_device *pdev)
>   
>   	mipi_csis_debugfs_exit(state);
>   	v4l2_async_unregister_subdev(&state->mipi_sd);
> -	v4l2_async_notifier_unregister(&state->subdev_notifier);
>   
>   	pm_runtime_disable(&pdev->dev);
>   	mipi_csis_pm_suspend(&pdev->dev, true);

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
