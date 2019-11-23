Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AE3107FB9
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Nov 2019 19:01:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A98787E76;
	Sat, 23 Nov 2019 18:01:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lmId40rOHHM9; Sat, 23 Nov 2019 18:01:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B63D187DCE;
	Sat, 23 Nov 2019 18:01:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4CCBF1BF425
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 18:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 449D5203A9
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 18:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xBGctCZ8R9bY for <devel@linuxdriverproject.org>;
 Sat, 23 Nov 2019 18:01:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 8BD0F20134
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 18:01:33 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id a69so2274642oib.2
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 10:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pY1pNPrl1tG+NPM43+xxPuU3zVU/KXwcJU4pMYDbF1s=;
 b=GDgGLjDx/B4eFVfhHnqDUh7639DBqdOxdS+t432Ke+hW48ABfvfqqk5zQDoWq7+96h
 vZSpq6UwRxbbMf8Zww0kSm29XMikUijeUIF1S/aigDcjCuKRdfug1XTLOlv6R8GWDWSv
 zETKqF+n3z/2ybx8lN7vadFKOP/8nh13yroAM325dqC99UklUTQMtXLtg8oDDLWu0ucS
 BhX3++26ieAJGr/pa7E+QwLarGrP9WEKpsFozSU/PQPPygqEoFJnHM3SzAQ9hVobDRlo
 J0PZJ0eOmYMj1PvWZIx82Hdob3qNqMCleqVqgE0/KTQdH2Bz6v+QcTw/1Hxl8U5fGYrI
 dUYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pY1pNPrl1tG+NPM43+xxPuU3zVU/KXwcJU4pMYDbF1s=;
 b=m9RL6AUyJZc4sN/iPshyre8I+bnlyNlivUBU5uFLf06vle8/I46w0cxCS2q7GUidEC
 9OgTNjU1HeqmQCnsvb3xQ9TbrVA0hKZrdHoRNjPuF1nwa1hfkMTg5pNuST4AY8kSHbyr
 plfTXZPLr5VIjkV9BI5wjTIThTj6SDPkrSXmB7QDKaWDGPUUfekQExOsuvaUzX0mslXV
 uKBCXoaJkrwJ8oq8pFJXgsIFWHSxiMBC9SLB+9KBpySMHM2iGC1gqOrUAXvl2qAUB8Ah
 E54WnzaDii+xWt1LPKA+DrIRStrTpsVxXWh68wEr7AFTE4JNSTzrAZ4tL4zJ/g/P7vFy
 Y4gA==
X-Gm-Message-State: APjAAAWnkrkX675wYmjQPDmQUKl7Bxe7dm2ItKaUNYpM016BcrJIRyL+
 mtotsGzBTpmt1g2Y0V1TeTBtPMyo
X-Google-Smtp-Source: APXvYqwE5t/YbYPtPqDl9R/KNDkv6EO1KpDV7j2x803g3C/CZ9d2tQm2QO1UKu30ptZKrdTKY9XCBw==
X-Received: by 2002:aca:ed85:: with SMTP id l127mr17566781oih.75.1574532092813; 
 Sat, 23 Nov 2019 10:01:32 -0800 (PST)
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id 18sm654600oip.57.2019.11.23.10.01.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Nov 2019 10:01:32 -0800 (PST)
Subject: Re: [PATCH 3/3] staging: rtl8188eu: remove return variable from
 rtw_pwr_unassociated_idle
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
References: <20191123151635.155138-1-straube.linux@gmail.com>
 <20191123151635.155138-3-straube.linux@gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <bd1b91e8-1f55-fe3b-a2f0-8ea62de919aa@lwfinger.net>
Date: Sat, 23 Nov 2019 12:01:31 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191123151635.155138-3-straube.linux@gmail.com>
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

On 11/23/19 9:16 AM, Michael Straube wrote:
> Function rtw_pwr_unassociated_idle returns boolean values.
> Remove the return variable ret and the exit label to simplify the
> function a little bit. Return true or false directly instead.
> 
> Signed-off-by: Michael Straube <straube.linux@gmail.com>
> ---
>   drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 10 +++-------
>   1 file changed, 3 insertions(+), 7 deletions(-)

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks,

Larry

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
