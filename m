Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08171327FCB
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 14:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 466B883B9B;
	Mon,  1 Mar 2021 13:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FGDkf-fpZtjf; Mon,  1 Mar 2021 13:45:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B29F837C0;
	Mon,  1 Mar 2021 13:45:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B31F1BF372
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEA51600CC
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B16Qz2UKC_Vk for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 13:45:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 470586009C
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 13:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614606305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ESIPqMi7/FPRnvmvTCiR3uyTUiHJzem2WddO8DBPtvY=;
 b=grD0eCIqJQjf2ZnTEirON1W3FW0CUn0BLEUyOYIoi8BiduvV8JkFzkOyulzBmcFIftAxIS
 BAoUZQJKJHGlQ1J8RzUPc81QSWE0q84tjR6iXmNn7FCX9GylRhZ0CKxJM6aGM0nnYwdAcY
 cRKakwkHMVbhMNTdC/4Twyj86NI6Z+o=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-Dc6qVG9fOLCdsExrjFaBww-1; Mon, 01 Mar 2021 08:45:03 -0500
X-MC-Unique: Dc6qVG9fOLCdsExrjFaBww-1
Received: by mail-ej1-f71.google.com with SMTP id h14so2656116ejg.7
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 05:45:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ESIPqMi7/FPRnvmvTCiR3uyTUiHJzem2WddO8DBPtvY=;
 b=QuitobHFMLG1O0Gck7T7QKWqxcOiZg9uHqQ3jrkdxyB41SV/rxHeNm7igitD6400X5
 IJ+MHHZq5MUg2d4Impc6WRjvYrSzGImxhUXy7MPbHh87Cc6VHu3wuUSZm8Ab5u/YO0wb
 uIlM5dj5UA9CUUxgpZUyC7+tcR4OMbD6BP98XCiPfn4INJYy7+WKGNoyTyHQs1NpQ9E9
 pzw5OhFAX2Hs6XEBYqgOQH/IKbPUwRdtPQJqFTC+LGosXhPnwrjENvHPtU5SF6SKWPQE
 dS4WjEiX7XuxN1peMwT7FTwDaxsst+dJEgFe/rfGnq7GtCR8QNLV7+Rg+SVbFrWmYY8r
 Uo0g==
X-Gm-Message-State: AOAM530SDNjzEqhNfai6g8tXEY2qGcOuxQEb0FJRsraEwUqNfEv+28sB
 bIsFjohWM8aURYuz8NbBUVDAaem1N9SYT81fIyA7M7RE431+/4l2igHB9w59/+698UiPI02uCOZ
 dyf+iJfP09+xIoe05rNkr6TqEG9hAjhSQXpyKFU6qR8kKrmwBWABO3nB07u38WW4YhzapzsOxcw
 ==
X-Received: by 2002:a05:6402:3589:: with SMTP id
 y9mr16578130edc.344.1614606301839; 
 Mon, 01 Mar 2021 05:45:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzeUtwBTAA48q5c7T2OEHB44x+nPHDMcuFrK5TBITOcafuS48kGldO3mT52PmtdDShufHcWLw==
X-Received: by 2002:a05:6402:3589:: with SMTP id
 y9mr16578104edc.344.1614606301577; 
 Mon, 01 Mar 2021 05:45:01 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id s15sm13932621ejy.68.2021.03.01.05.45.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Mar 2021 05:45:01 -0800 (PST)
Subject: Re: [PATCH 0/3] staging: rtl8723bs: Replace sprintf with scnprintf
To: Candy Febriyanto <cfebriyanto@gmail.com>, gregkh@linuxfoundation.org,
 Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org
References: <cover.1614603705.git.cfebriyanto@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <6e6c21b1-ad40-4719-b9bb-989a36ea7b4e@redhat.com>
Date: Mon, 1 Mar 2021 14:45:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <cover.1614603705.git.cfebriyanto@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 3/1/21 2:12 PM, Candy Febriyanto wrote:
> This patchset replaces most calls to sprintf with scnprintf, thereby
> preventing potential buffer overflows. The rest I left alone because
> they write to a buffer passed by a caller that doesn't pass its size
> alongside it.
> 
> Candy Febriyanto (3):
>   staging: rtl8723bs: core: Replace sprintf with scnprintf
>   staging: rtl8723bs: hal: Replace sprintf with scnprintf
>   staging: rtl8723bs: os_dep: Replace sprintf with scnprintf
> 
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  3 +-
>  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  4 +-
>  drivers/staging/rtl8723bs/hal/hal_com.c       | 45 ++++++++++---------
>  .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 20 +++++----
>  drivers/staging/rtl8723bs/os_dep/mlme_linux.c |  6 +--
>  5 files changed, 41 insertions(+), 37 deletions(-)

Thanks, the entire series looks good to me, for the series:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
