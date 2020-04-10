Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9631A47E8
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 17:38:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6467D86CF1;
	Fri, 10 Apr 2020 15:38:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KaVuoWz0VHHh; Fri, 10 Apr 2020 15:38:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1AD5B86CC1;
	Fri, 10 Apr 2020 15:38:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 306741BF2F6
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 15:38:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2C1592262F
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 15:38:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ndLkSsxnHLXa for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 15:38:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D65720353
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 15:38:03 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id g3so2713706wrx.2
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 08:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VBKczGYLsv2GTJSTGN6d+Mg13l565iovwK7tDtM0eCo=;
 b=QrxPr+6Zokq+E+HKmNBf8y79Ddlaewwn8GP1PRaMIzBz9Upg9gtVX0v8e5qSXAgslp
 HP5QTgLW81HquXtdESlyoaeThSFU0YEmpYBldvPfh0CB6q+oUI+eFyhsAjzCf1qwKLrE
 QAjRqMDNksMQfm85mfIu4ar0m8IvhAnj0oE1dcX3cfbYoOdk5Se3LK5zjXliq2JUYvA7
 HH1A2ziGB860hMbI5hU++6fDjkRXUKkodvIliFCej/nWPuoCIGx4fnzUIv7P0Nk+V9m5
 kCVV1vB3eC3JwhadPiqKt0cPjcjWTKZZcD/fTmlac66dSpBoR0rG+0tzsLoX59hPB0IM
 3r+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VBKczGYLsv2GTJSTGN6d+Mg13l565iovwK7tDtM0eCo=;
 b=OIFayn6WwyGAR3CvFiL+D8bNQp0HCdF0ZSxalfNRN4uxlrh1jdfjwyQNNKCdMqLeNY
 f8+1cOZ/DzEyOlQjay9oxHuMg0gHrPgnFyLVtXT8y2BN75GLRatFznpuF8JG12fr0bmA
 BxHr914Sz++It0T3sxEpjzZBDxT/ta7LxCy6NSf6+bXwd9PPvDTtQIM1lFok3TZ6jv75
 a3X89rFgjdpJ2pg0JN5+2pHJhv0vDidC7F87EhNBGCJCtuZucRdJpOO23hQaYDSdFG/1
 fpTtp2oJQe1w6dVGAkFrVRMN1nkxhSKgjLZBOAa8jXrjhIv7eJ7HgxhEGMtmqKvJBqXx
 2qyw==
X-Gm-Message-State: AGi0PuaSlzTpn/jIWp8SizJTf+5c4ElJjwQOSHH3x1eW2V7wgbwcAeT/
 EdjCDOnbZieRf3x7ERuw/6M=
X-Google-Smtp-Source: APiQypKRu6/ZfCk4+n3XAujm26yEhTNUYNWNybtmWmBhGqeG9bDSQnILKiY37xpy0jq4aInGx/BmNg==
X-Received: by 2002:a5d:5230:: with SMTP id i16mr5097555wra.15.1586533081703; 
 Fri, 10 Apr 2020 08:38:01 -0700 (PDT)
Received: from [192.168.43.227] (94.197.121.102.threembb.co.uk.
 [94.197.121.102])
 by smtp.gmail.com with ESMTPSA id c17sm3298882wrp.28.2020.04.10.08.38.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 08:38:01 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: vt6656: Refactor the assignment of the
 phy->signal variable
To: Oscar Carter <oscar.carter@gmx.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200410112834.17490-1-oscar.carter@gmx.com>
 <20200410112834.17490-2-oscar.carter@gmx.com>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <986e8e5e-245a-cc70-2c6f-8ac3a4a485c9@gmail.com>
Date: Fri, 10 Apr 2020 16:37:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200410112834.17490-2-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 10/04/2020 12:28, Oscar Carter wrote:
> Create a constant array with the values of the "phy->signal" for every
> rate. Remove all "phy->signal" assignments inside the switch statement
> and replace these with a single reading from the new vnt_phy_signal
> array.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>   drivers/staging/vt6656/baseband.c | 101 +++++++-----------------------
>   1 file changed, 21 insertions(+), 80 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> index a19a563d8bcc..47f93bf6e07b 100644
> --- a/drivers/staging/vt6656/baseband.c
> +++ b/drivers/staging/vt6656/baseband.c
> @@ -115,6 +115,21 @@ static const u16 vnt_frame_time[MAX_RATE] = {
>   	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
>   };

Actually you don't need the second values
> 
> +static const u8 vnt_phy_signal[][2] = {
> +	{0x00, 0x00},	/* RATE_1M  */
The driver would never attempt use preamble at this rate
so it's safe to include in with the next 3 rates

> +	{0x01, 0x09},	/* RATE_2M  */
> +	{0x02, 0x0a},	/* RATE_5M  */
> +	{0x03, 0x0b},	/* RATE_11M */
just |= BIT(3) for preamble.

> +	{0x8b, 0x9b},	/* RATE_6M  */
> +	{0x8f, 0x9f},	/* RATE_9M  */
> +	{0x8a, 0x9a},	/* RATE_12M */
> +	{0x8e, 0x9e},	/* RATE_18M */
> +	{0x89, 0x99},	/* RATE_24M */
> +	{0x8d, 0x9d},	/* RATE_36M */
> +	{0x88, 0x98},	/* RATE_48M */
> +	{0x8c, 0x9c}	/* RATE_54M */

Again just |= BIT(4) for PK_TYPE_11A

Regards

Malcolm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
