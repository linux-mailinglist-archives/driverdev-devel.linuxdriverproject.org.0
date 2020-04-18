Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F32A1AF2E9
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 19:42:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0817720489;
	Sat, 18 Apr 2020 17:42:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XZqeK-zDMBSq; Sat, 18 Apr 2020 17:42:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A8D8C203A0;
	Sat, 18 Apr 2020 17:42:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 126BE1BF417
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 17:41:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0CA808753D
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 17:41:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yFJmqGjupmE7 for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 17:41:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6342487535
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 17:41:57 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id e26so6157881wmk.5
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 10:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vL+RplNY3ZIE1o7nDQNiVeonG9MjYVrxPyRVaheiPPQ=;
 b=J5VDP3LmaTyk51ObVB2bhg+Qs7x655ICKFzuSnHTwwqcFUe3NqRxV8lj0FjtGGWiRV
 mH3kLMXHkyZXt2/Kkesh9E1YpSX3rGLmuPBFmZ3QmCQJalCQAp4totzauuXD3QuplMK5
 nej0TGu7qBGpKsilBeeWWRbaoNAcUdxy5xLb4Wm0w6HXbFTixy1gQMQBjULTO7sWBC1B
 1V3S+WC97bY6QueaCExOqGZXDtowo9XoDATyVpiYr9kn2W65FxZ518wW1ApLKBpqVZ6J
 iju/XZJPazIV6oRD5hxlHvntd3RPUqPJHCSmRVa6JS0Cf9IAykAagxYQX3yXKyjo9Tpf
 Fnng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vL+RplNY3ZIE1o7nDQNiVeonG9MjYVrxPyRVaheiPPQ=;
 b=HViHs8ZLre7a97EbKhWCEGx875vZz6gAv9lCAbFKmdv40m61K0WQag4fMONgQXBpux
 x62kVu8SNkngutMK4i/9yeY4tpPve/3AMjQtQnF3AZpvUocwuYjowyiWxM+Uk8Hxh7cj
 YAnbnQUcmslTh1tzFBO2nQ5yIaf+cijpZofGII3HmUnC9v1Dl2UvckH97SsgqSEE8sjq
 fA70zmCXkV3lPCQtAZ8k/0oedVUQkdfETE8OpX2qNycCAaRfGlgVllQRYvo7oMInsbSZ
 HXPkJDWILP1Ub0OFB75kXD7Q4EEMXZL5Bzi3fLVgeFxXtHn43EoB89NnGeh/bvv7Vf86
 ksxw==
X-Gm-Message-State: AGi0PuZx/QJidUoQuKijsQW5Yb7/KrF0xmNyobuEGg+bhk5wMdG9qFZq
 3Juw2tW9Sp0tpBESE/Tayvw=
X-Google-Smtp-Source: APiQypIIip+Rk8mfKtIcb512j/wd+M3pvf0/bkXJoBgXafCK8aumejBzvzhaMVb7W00+z5sR9GZclQ==
X-Received: by 2002:a1c:e444:: with SMTP id b65mr9460710wmh.6.1587231715932;
 Sat, 18 Apr 2020 10:41:55 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id
 p190sm12370313wmp.38.2020.04.18.10.41.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 10:41:55 -0700 (PDT)
Subject: Re: [PATCH ] staging: vt6656: Fix calling conditions of
 vnt_set_bss_mode
From: Malcolm Priestley <tvboxspy@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <c64e7134-c1a1-ecd1-1e0c-e0bfe002740b@gmail.com>
Message-ID: <8b304334-d2f0-8b59-287a-fb4c011a6072@gmail.com>
Date: Sat, 18 Apr 2020 18:41:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <c64e7134-c1a1-ecd1-1e0c-e0bfe002740b@gmail.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sorry this was sent twice gmail reported the first one failed.

Regards

Maloclm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
