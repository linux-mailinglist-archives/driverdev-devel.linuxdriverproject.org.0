Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC5F107FB7
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Nov 2019 19:00:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8484587622;
	Sat, 23 Nov 2019 18:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A588hDOAVIAI; Sat, 23 Nov 2019 18:00:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 669988731C;
	Sat, 23 Nov 2019 18:00:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5BD021BF425
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 18:00:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 58136203A9
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 18:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XaFys8AGAgGV for <devel@linuxdriverproject.org>;
 Sat, 23 Nov 2019 18:00:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id B12F020134
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 18:00:30 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id 23so7283708otf.2
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 10:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=G/yt7BM7SPeRzWvT43FwJp3d79dRs3zulFAVmB+daeM=;
 b=KH95SWZLrbowHQJFobDZXNAKSaEX5/CU2T4mM9LPMFrZXsZRgcVijf7Pc6fyxZDqOu
 6+qrgORQ1GIIKGa809LlTbhKOpq90ZrVwICUl2iit/CkIzEq7j0cAwOH24rJKTiDXws0
 SjWN1peXA9x/38RXYZD6+SlLB0LkLQnRSiBXA6Ksml8evlytzdNxg8yu7lSqqakuEHqQ
 49VyE6YFBv+PHUIwseK/g2ZSFyGIDqJ1ssYFOeoiOBymyYDstfhWWiL9lmaavlw1VLWB
 sdxDVtq01tfyzXekFVOMtWgBer5HGu5OwGFmNf+d5XYYUM9iCTbHZ8QUBFZF7ARVGd/K
 uohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=G/yt7BM7SPeRzWvT43FwJp3d79dRs3zulFAVmB+daeM=;
 b=JxLc5Sm6Y/pNdiGYG/mV+WJpIh6VDgqMew7qaqS71Na84ZKcR3642sxN99it5zovRp
 reLU4J+sKFihHZiWpg4QJSQOaOqwZ9QULI4ruKBnQmnjqSKw8F6FNHdjGOPd90gzRFlO
 Na9KyGgMw7VVTuj1dWx+OYJaFsH5BBNIonkrG4sudcAqlt0R/lz9T263nuF2liKqLJ4m
 /xAXplJH7EcrD8iYAZ2bODneLWrg1scegD5OU8HubPW5r5N/90puzWEX95nw+wf/Ikk2
 9SZUiHKykm2o2UzR2DnrJF8aDUI5Amwr2Gq/E1NhjpxFEF/kigzRmARsq3/7wyscDfXB
 zJfQ==
X-Gm-Message-State: APjAAAVV44C3Zrehc6vHsgIcA8odbzDNnnHK9JbHxO/l4YL4UFvheLZ9
 1BpVHVwDiriOIkgOecSm4kU=
X-Google-Smtp-Source: APXvYqzXQz1WuQ8o84lBXSlNBZV5pikgdP4pn6zYQi+7SMBgwRfUQo0Ew8aLdCLxY8ZIPRMxv+slWg==
X-Received: by 2002:a9d:5c84:: with SMTP id a4mr773862oti.319.1574532030042;
 Sat, 23 Nov 2019 10:00:30 -0800 (PST)
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id g18sm475965otg.50.2019.11.23.10.00.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Nov 2019 10:00:29 -0800 (PST)
Subject: Re: [PATCH 2/3] staging: rtl8188eu: cleanup declarations in
 rtw_pwrctrl.c
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
References: <20191123151635.155138-1-straube.linux@gmail.com>
 <20191123151635.155138-2-straube.linux@gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <13416470-46b0-5b53-5a23-f8177b611126@lwfinger.net>
Date: Sat, 23 Nov 2019 12:00:28 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191123151635.155138-2-straube.linux@gmail.com>
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
> Replace tabs with spaces in declarations to cleanup whitespace.
> 
> Signed-off-by: Michael Straube <straube.linux@gmail.com>
> ---
>   drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks,

Larry


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
