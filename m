Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3892BBD1A
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Sep 2019 22:38:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39ABF820F7;
	Mon, 23 Sep 2019 20:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ku0gUK0AUT4i; Mon, 23 Sep 2019 20:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5FD8810F7;
	Mon, 23 Sep 2019 20:38:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D41931BF2A3
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 20:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CCBB72044A
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 20:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DfjNS6ykyOsv for <devel@linuxdriverproject.org>;
 Mon, 23 Sep 2019 20:38:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id C750B203F6
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 20:38:42 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id e11so13381495otl.5
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 13:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sweUxZxJQosgkHBCYd8BKEHHN75LnY+P6m8uRQ6mgPE=;
 b=LJv03hsqxE7HeQxEDwFpfAn/DjAJR3E9WORr/bIi5FIQGwRrHSRpvlNmA1OyrIT0/5
 m7p7Rj+VSyMoqAmoXxt6PZtc4ffTgJDZUyw5z+i401rzSy9ZWvQ/FsQnaH5IzUSFZhH9
 p/qEosXDAiQWmcyJFhNAZ+Cyd+VY+A8DsLr4bv6BoNv27QdFlV/DK+xqjwvvzrVEjrhc
 e32nisHV2HUkkZ90zh40XBB96WGpkKtuvPPPM8TcZllI9BuhgS40JE0jD+BPxDXQGOjd
 audrENWHDcGzQei1boeFz6THkaawWLHeQp79muBhkMlYe9eahigwz9diIcH3n8hHFCSb
 MU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sweUxZxJQosgkHBCYd8BKEHHN75LnY+P6m8uRQ6mgPE=;
 b=n+HofhF1C1EGoS+YCLZ6NdLn62bdlgILDQTT7BhXY7joMQ2z8XwGIYTEpU7+a6ClP8
 hhbDVhb3cBcR8RAFbO7JPBVifXB7waaugw78bTKBJoqo2F0IbfwtjSLtdDu3Tqh5RZog
 D1aM1hC8lZq+XAIGi36w0j5HEmzqzB/CQxYaWuNjEn8CGEmjfftFrvFTmK/yjQaacSXs
 awUoJ9rDs5OwdMpN8Z/zIkPUF4TS8NfRbCkMFE5J3hD6POqhG8kKKerrg7YGV58A/XgF
 vIOkSAas0enw/FRoGug7QB/CQtcA1Rm4zvZ2FENohNrJ9MqmDHawUfQevtOrFxX72Tv8
 MudQ==
X-Gm-Message-State: APjAAAVrKkhjvJ7+y0y8MwiL7lZ9BEyE1H24NaD7AuPVvKx4IUSt7S1D
 LsoRU6UXI7KXsT0287KPYrs=
X-Google-Smtp-Source: APXvYqxVGuW3Yqgnxvh8w8QHADv1Q7TKMCTm0SavQ/Xl+LXxhXcGKhfZQ7iNGJHU34SMXI9bp2Lhtg==
X-Received: by 2002:a9d:744d:: with SMTP id p13mr143941otk.76.1569271122026;
 Mon, 23 Sep 2019 13:38:42 -0700 (PDT)
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id d9sm3881232ote.11.2019.09.23.13.38.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 13:38:40 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8188eu: remove dead code in do-while
 conditional step
To: Connor Kuehl <connor.kuehl@canonical.com>, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org
References: <20190923194806.25347-1-connor.kuehl@canonical.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <c2ce3fb0-6407-982a-a3f2-172cef17f2a6@lwfinger.net>
Date: Mon, 23 Sep 2019 15:38:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190923194806.25347-1-connor.kuehl@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/23/19 2:48 PM, Connor Kuehl wrote:
> The local variable 'bcmd_down' is always set to true almost immediately
> before the do-while's condition is checked. As a result, !bcmd_down
> evaluates to false which short circuits the logical AND operator meaning
> that the second operand is never reached and is therefore dead code.
> 
> Addresses-Coverity: ("Logically dead code")
> 
> Signed-off-by: Connor Kuehl <connor.kuehl@canonical.com>
> ---
>   drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
> index 47352f210c0b..a4b317937b23 100644
> --- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
> +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
> @@ -48,7 +48,6 @@ static u8 _is_fw_read_cmd_down(struct adapter *adapt, u8 msgbox_num)
>   static s32 FillH2CCmd_88E(struct adapter *adapt, u8 ElementID, u32 CmdLen, u8 *pCmdBuffer)
>   {
>   	u8 bcmd_down = false;
> -	s32 retry_cnts = 100;
>   	u8 h2c_box_num;
>   	u32 msgbox_addr;
>   	u32 msgbox_ex_addr;
> @@ -103,7 +102,7 @@ static s32 FillH2CCmd_88E(struct adapter *adapt, u8 ElementID, u32 CmdLen, u8 *p
>   		adapt->HalData->LastHMEBoxNum =
>   			(h2c_box_num+1) % RTL88E_MAX_H2C_BOX_NUMS;
>   
> -	} while ((!bcmd_down) && (retry_cnts--));
> +	} while (!bcmd_down);
>   
>   	ret = _SUCCESS;

This patch is correct; however, the do..while loop will always be executed once, 
thus you could remove the loop and the loop variable bcmd_down.

@greg: If you would prefer a two-step process, then this one is OK.

Larry

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
