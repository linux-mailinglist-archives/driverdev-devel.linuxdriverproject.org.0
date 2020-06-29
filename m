Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBB420CE7E
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 14:19:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B01B25DFC;
	Mon, 29 Jun 2020 12:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e+HuEDNeyPxT; Mon, 29 Jun 2020 12:19:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F53C204A8;
	Mon, 29 Jun 2020 12:19:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A82E81BF2F1
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 12:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B2EBA893C1
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 12:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yendb1eu75-w for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 12:19:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8D23C892A3
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 12:19:32 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 17so15892609wmo.1
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 05:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=BWB95FXlnWSWC7pmv6iNCOZmz4YpgGsIhyG2MjJbpo4=;
 b=N58gW58idePYUeGL1drtPtk1W+iqzF24SWCw2HBLAV0vp3qEuHkZW2dI/4ssxsgyre
 XhAlPO1jp2eEvhOD9QYPTKxs9mPdUcxOMQq/W5Ooy2mc3XBGsAC41oGpQq8+T6CnCxbA
 vkGQ3CRVkU6lJSFGwBdggPw0a1ag6LWmNwh/umdnv/G0LSbWWTCohGmlBcNHDS01jF1I
 Msp3cIpwCA27zcn/0Z9nPbZQsy5wiSzmGJSGK7hBDgl/iNP1on9n3h5LT3USl4Y6YZcO
 fzmt+JXbP+CgWRe+LEpEbT26gEEaBXVexzbh4EWcF3YLe7pOd9S52sP3K3bS4CjME0et
 PoLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BWB95FXlnWSWC7pmv6iNCOZmz4YpgGsIhyG2MjJbpo4=;
 b=WuWL8Gg7lx+8D2ahRKdG+M4oOhr//GhNKrro8TR0uEvgfcueh49f1SW52a3MOdPRRZ
 +Srm45L4J51jjY19dbiuFG4UtS9D7lyXUeSs/5HX/eCa2smkYXyWUJhQyV83XoOaTj78
 1XIfALn9Ek7iSPLgVCNpEjve6Ino699n5h/c+NyLxt2y8gpsydjlMK+H5b0yuIuW7Eg2
 jJmgY3S9RF/0aXFQ6CFodIQLblzGI76f+5YPEuJFha/gj+4WmvKqDjr27nRFPK2bY37x
 IIc7HoAJo2n4IENZMhz4wZZpLy1+yO4hlJccfUfX4ErRCo3Cc7OqKja9zqr3mdwh74yT
 81mw==
X-Gm-Message-State: AOAM531kJNd9R2rxvzkr995IEWrFL71U9MasDuHGCZ9/F0BoqGMw6Y1T
 9a96RxySVMPNIsVc9SS/n4o=
X-Google-Smtp-Source: ABdhPJxsJ/a8uRcZMmS5qF2+741IxPP19IPww3Tkszrt9a6qnKY1QTB+KhKgqwkCkqeaasFsid3Mnw==
X-Received: by 2002:a1c:5f45:: with SMTP id t66mr17358596wmb.144.1593433170908; 
 Mon, 29 Jun 2020 05:19:30 -0700 (PDT)
Received: from [192.168.178.22]
 (dslb-178-011-230-168.178.011.pools.vodafone-ip.de. [178.11.230.168])
 by smtp.gmail.com with ESMTPSA id p8sm12250146wrq.29.2020.06.29.05.19.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Jun 2020 05:19:30 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8188eu: include: ieee80211.h: fixed multiple
 blank line coding style issues.
To: B K Karthik <bkkarthik@pesu.pes.edu>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20200629080927.ivzvczusduxtrc2g@pesu-pes-edu>
From: Michael Straube <straube.linux@gmail.com>
Message-ID: <e3b9a1f7-b0ad-1815-df0f-733203d09602@gmail.com>
Date: Mon, 29 Jun 2020 14:17:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200629080927.ivzvczusduxtrc2g@pesu-pes-edu>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 2020-06-29 10:09, B K Karthik wrote:
> removed multiple blank lines to improve code readability.
> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>   drivers/staging/rtl8188eu/include/ieee80211.h | 9 ---------
>   1 file changed, 9 deletions(-)

Hi, those lines are already removed in

commit 5bfb7eadc5874a3a08dd173d66a16a1ed0548444 ("staging: rtl8188eu: remove blank lines in header files")

regards,
Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
