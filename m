Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEC1177998
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 15:52:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 614968733C;
	Tue,  3 Mar 2020 14:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id olKImW3JbH6f; Tue,  3 Mar 2020 14:52:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AEC6D850F1;
	Tue,  3 Mar 2020 14:52:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86F131BF3A8
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 14:52:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 798462044B
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 14:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KEc9qPVlc6gR for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 14:52:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 8645B203F7
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 14:52:11 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id c20so3030239lfb.0
 for <devel@driverdev.osuosl.org>; Tue, 03 Mar 2020 06:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YSesgEwKuIBfRjb3D6rghMgTaq2QLhVxxb+yvFprsHU=;
 b=N9/JqnZo39MgJ7UX+Yc1KAct18f+YcXWyJAE3ApycATyPTtF7RgVKrXa83f6+2Bq7d
 L8Z12akelacBMh0bc7uF8beWJUD19foqto6e+VJIIhKV72D3bnB+20Nna/TWtOKanzBl
 LCnWP4W6W7msmSTj5rh8pehEEmT4n5oPnPG8XxfxEWp/tpZ7059Ae6LLiCqdaVQJHaNI
 j+Z4U1uFeYtXqEPPDavjKhrn+otqHkncSq+tdobkNEKhlaeADZOnZthQbato8RLX4yB8
 FW6EPxoutKio9w3A5StQUgozmvyVjW6NAJit3tpxR3QZayUkKLEB13THJrZjbLPo7444
 nRog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YSesgEwKuIBfRjb3D6rghMgTaq2QLhVxxb+yvFprsHU=;
 b=ZOipZ+GdfZ2SUpV2SDGikMutnk5Gl1kI29AY+amelb4uwUYB6JKjbE/BNDipdc0m8d
 uZahLViJ3s914cuFPxrCbVF7Q0Az0wjZCEhnqKAkusIxmNGIg82VQWbMaMpfZv9LSArJ
 JnGnxlWFMGU+NshWhQjNIclQlEnfiu0uRVMCZpJp7V4q6BPt+cQC5Ue9lIlb0EwGgrDq
 LSWJ2YAZbHd36Ncj0pzfl7jKsM22smULyQgTRDc+aNoUtCB04Hywwg7a0Wi9VtLGp60A
 dKBFnNFcDC0/5ydNy759Cj3HPOjYZ/9OELKjiREQ5frtQ8cT/QLuNlOB0+IaEJqEQQQ0
 Utcg==
X-Gm-Message-State: ANhLgQ0cQncvAee85TSAFodbtjHidzZt6X38OS8V8a80pqJ5yXkygPG0
 1Y4az0S4Zaif8xVJtPydco0=
X-Google-Smtp-Source: ADFU+vt+Hda+OcEsW87pxEsFqBcqlkHXCcQzYKTyKxjdeDZNADrgVxUP8SzNLJpKFRCEfBtF4gBglQ==
X-Received: by 2002:ac2:4911:: with SMTP id n17mr3069057lfi.79.1583247129730; 
 Tue, 03 Mar 2020 06:52:09 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id i5sm13008574ljj.29.2020.03.03.06.52.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Mar 2020 06:52:08 -0800 (PST)
Subject: Re: [PATCH v2] media: staging: tegra-vde: Use
 devm_platform_ioremap_resource_byname()
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200302172904.460-1-digetx@gmail.com>
 <20200303073134.GF4118@kadam>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <0e4c875b-e859-2621-9252-dbd6a69d244c@gmail.com>
Date: Tue, 3 Mar 2020 17:52:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200303073134.GF4118@kadam>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDMuMDMuMjAyMCAxMDozMSwgRGFuIENhcnBlbnRlciDQv9C40YjQtdGCOgo+IFRoYW5rcyEKPiAK
PiBSZXZpZXdlZC1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgoK
QXdlc29tZSwgdGhhbmsgeW91IDopCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
