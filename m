Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E564A40BA
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Jan 2022 11:59:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF4C860C2D;
	Mon, 31 Jan 2022 10:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6iLyCWHIbASG; Mon, 31 Jan 2022 10:59:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9FFA60BD6;
	Mon, 31 Jan 2022 10:59:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57BB71BF20B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 10:59:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44AAD60C2D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 10:59:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8UFCAw01noE6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 10:59:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAEAA60BD6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 10:59:47 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id c188so16333422iof.6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 02:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=FANIUiWvB3mdY3zLX2DODg2pUIL5eGT5wlydl6jYk40=;
 b=OjUeAkMVzEddLMMo5PnTCjKyhCs1ageGmC5+cFdXpsSEtg6JbUDTvXCRmwfTUCSofJ
 slj36zZmhn3J4uwPw0DJBjnv3hUS5m+nEauuYDUNcCWjc1f+d0I+yOjKIUc0Pgz+j5Ue
 rRdRGfWkjcSXGfwT+M+UDneKFOQe0c6aLr+5TauC2FupNgb1qyGc5yiIkJ8k0NAmHZhf
 anrjd59/OgrastnWs4ZkrvFaIDjw5pd3eh107tNZ/TuMjnW3micCxNZKM2MDkg13GKwm
 O5Q6tfm8j18o2CLpoCl1kG865M+uxrSOQqgPJI+OJu79ECke4sTf94bEwDsB5fZLVwuG
 tdrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=FANIUiWvB3mdY3zLX2DODg2pUIL5eGT5wlydl6jYk40=;
 b=feVQvV0r7UrGMqkEleV8tRRV4XsCapUVFwWrPQSW8KBzo7IDojLQnN6JP8G0rxVBxo
 VAQvzvafC96MFxU1++1wrdIbmZP2XyRJRCzqqGl1lFxxBeQisEHinWzhBZ30/K49bcIT
 io/c6nQohCMVkscXANXIdGFc2BK2jo7ZIeLccZrFYRpurxSrwZdtbGT+1FvsQ3vcQXpo
 YO7rRgDNJ+eg3mtOHNQxsnDV5qxjyDQu1mqWkaYkj660NrXKokeHBM+Bj/z/29l7WdMt
 WGHhQUr2ijnmPu3xc7uDIDs9UhMj7iiF3XSf8XGpL+ng0Bqh9CGeCQTnPP61A00aitpj
 lWew==
X-Gm-Message-State: AOAM533ZZzJAtUwKht6EUJvXYubPWvenXQREp3I6m4G2UeKwBs6kDnRK
 C7IA7/hJNEXEbqJgZ6WA+SAv1tPnYXcIG0gvFq4=
X-Google-Smtp-Source: ABdhPJx07OLMUPeEc0ImjaiJBKF2Mcc3ZmsWTIoSvX2FNfz03c1HE0RFqesREnjvPqYHKyL/ALkhu5ugV57XI3T5t/k=
X-Received: by 2002:a6b:441a:: with SMTP id r26mr10856124ioa.211.1643626786286; 
 Mon, 31 Jan 2022 02:59:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6638:1248:0:0:0:0 with HTTP; Mon, 31 Jan 2022 02:59:45
 -0800 (PST)
From: Mrs daniell akyle <daniellakyle60@gmail.com>
Date: Mon, 31 Jan 2022 11:59:45 +0100
X-Google-Sender-Auth: xE_x512-NJSetLeK1z_d90RC9Q0
Message-ID: <CAKFcj-P8h0HeDMtZZnog7Sh8cFMKV7095BN2fQnUMpCGPgmhFg@mail.gmail.com>
Subject: Ahoj
To: undisclosed-recipients:;
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
Reply-To: daniellakyle60@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UG96ZHJhdnkKSm1lbnVqaSBzZSBwYW7DrSBEYW5pZWxsYSBLeWxlb3bDoSwgamUgbWkgNTggbGV0
CkZpbGlww61ueS4gViBzb3XEjWFzbsOpIGRvYsSbIGpzZW0gaG9zcGl0YWxpem92w6FuIG5hIEZp
bGlww61uw6FjaCwga2RlIGpzZW0KcG9kc3R1cHVqZSBsw6nEjWJ1IGFrdXRuw61obyBrYXJjaW5v
bXUgasOtY251LiBqc2VtIHVtw61yYWrDrWPDrSwKdmRvdmEsIGt0ZXLDoSBzZSByb3pob2RsYSBk
YXJvdmF0IMSNw6FzdCBzdsOpaG8gbWFqZXRrdSBzcG9sZWhsaXbDqSBvc29ixJsKa3RlcsOhIHR5
dG8gcGVuw616ZSBwb3XFvmlqZSBuYSBwb21vYyBjaHVkw71tIGEgbcOpbsSbIHByaXZpbGVnb3Zh
bsO9bS4gQ2hjaQpwb3NreXRub3V0IGRhciB2ZSB2w73FoWkgMyA3MDAgMDAwIMKjIG5hIHNpcm90
a3kgbmVibyBjaGFyaXRhdGl2bsOtIG9yZ2FuaXphY2UKdmUgdmHFocOtIG9ibGFzdGkuIFp2bMOh
ZG5lxaEgdG8/IFBva3VkIGpzdGUgb2Nob3RuaSB0dXRvIG5hYsOtZGt1IHDFmWlqbW91dAphIHVk
xJtsZWp0ZSBwxZllc27EmyB0YWssIGphayB2w6FtIMWZw61rw6FtLCBwYWsgc2UgbWkgdnJhxaV0
ZSBwcm8gZGFsxaHDrSB2eXN2xJt0bGVuw60uCnBvemRyYXZ5ClBhbsOtIERhbmllbGxhIEt5bGVv
dsOhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
