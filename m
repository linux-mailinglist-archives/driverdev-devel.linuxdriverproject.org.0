Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EE219C111
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 14:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 44251204CB;
	Thu,  2 Apr 2020 12:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q7zfvUNQp2xh; Thu,  2 Apr 2020 12:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DDAC1204B7;
	Thu,  2 Apr 2020 12:31:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8096B1BF29C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 12:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7950188869
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 12:31:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id StqFg5u5XT45 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 12:31:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C774B88844
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 12:31:00 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id q3so1655323pff.13
 for <devel@linuxdriverproject.org>; Thu, 02 Apr 2020 05:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cyyNKGr84nAUGth9V6QOSpSd2bcLsQ6KwbQ3bniVMOc=;
 b=NxUBFLQOrCSONkys5dj18c0oWyT3PVRqtiUocT4J6sk408ZsJkiQFYiGisTZTnA7Pt
 4Yp+HiDe+RcbSStekYBHPtkRiXZjm7gyOkmcrTpacSdc9W0KROFJKfPve3OROuVEoa/k
 iNDI0/JfgHpzbx/GQs/cLgTbWI7+cix1YxoJ9Sb7bGhR663ajMgWVMVRp3Zt0BwsLe6V
 GJdC9Oe+hJFmGnedqJzGrG+kosXGrjgW48beN9mQhC++U/NWagz/euGifdd2iS/R9VQo
 eBr1K35kZJgGXA4c4MQU2/jUnOGcLIJWgrLn435LWBwOi5UQS/r/ryZZoNZKIZ8Yuie0
 3asA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cyyNKGr84nAUGth9V6QOSpSd2bcLsQ6KwbQ3bniVMOc=;
 b=kGgDcE8m51blH3fW1C7wEFf/bYjiR/AQoZYkO3dcACqrs/N4SsHCSx3BTe7p8kTS59
 vvVLuwGqa1nP2dLN/L1i4IUcnsm6PKq8IoEHDIhf8HCOZ9Bq1rowMuM0pvM5dLHdiiYJ
 Pw45GaB6HU3WIYmrGr4q34ZT8fGtwoTjVpRJMQk/9YOu++U44Qm+9Zu6y+6aMeFqWbvx
 N8gwAynny28TggC0c4sWSeuWJrAkFpQeYUxaIteXcgu4T7xn3GlTii/GfNEaqVUDTkvS
 J7D/wWRy8USVJHfTHC+uir4BQAa93TygqNCDArUl0tIlbOqNCN/lpp/IqufbVKtwS4+z
 x+7Q==
X-Gm-Message-State: AGi0PuZlKcd7Zxb+RrdN1ginDa7OYaEWFqGTceruzP55ZujfsZb8arSw
 9in7m2SEWotGHdfDoX1VmZs=
X-Google-Smtp-Source: APiQypIclPAW+TvtCRpdRlKa1QGKO7Wf1avFwXx+fvR7EnIBqlpHiZ8Lowr5mZmOzPPI+g/F8Fxyew==
X-Received: by 2002:a63:82c6:: with SMTP id w189mr3016568pgd.357.1585830660482; 
 Thu, 02 Apr 2020 05:31:00 -0700 (PDT)
Received: from ?IPv6:2404:f801:0:6:8000::a31c? ([2404:f801:9000:1a:efeb::a31c])
 by smtp.gmail.com with ESMTPSA id p1sm3703112pfq.114.2020.04.02.05.30.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 05:30:58 -0700 (PDT)
Subject: Re: [Update PATCH] x86/Hyper-V: Initialize Syn timer clock when it's
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200330141708.12822-1-Tianyu.Lan@microsoft.com>
 <20200402112137.GM2001@kadam>
From: Tianyu Lan <ltykernel@gmail.com>
Message-ID: <98c0deb9-1cb6-c73d-4fa1-cb587f30b9e5@gmail.com>
Date: Thu, 2 Apr 2020 20:30:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200402112137.GM2001@kadam>
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
Cc: wei.liu@kernel.org, sthemmin@microsoft.com,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, haiyangz@microsoft.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, michael.h.kelley@microsoft.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, devel@linuxdriverproject.org, tglx@linutronix.de,
 vkuznets@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgRGFu77yaCiAgICAgU29ycnkuIFBsZWFzZSBpZ25vcmUgdGhpcyBwYXRjaCBhbmQgaXQncyBi
YXNlZCBvbiB0aGUgb2xkIGNvZGUuCgpPbiA0LzIvMjAyMCA3OjIxIFBNLCBEYW4gQ2FycGVudGVy
IHdyb3RlOgo+IFRoaXMgZG9lc24ndCBhcHBseSB0byB0b2RheSdzIGxpbnV4LW5leHQuCj4gCj4g
cmVnYXJkcywKPiBkYW4gY2FycGVudGVyCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
