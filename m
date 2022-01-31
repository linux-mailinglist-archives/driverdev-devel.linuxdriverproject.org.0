Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CB14A40BE
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Jan 2022 12:00:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D4AE60E50;
	Mon, 31 Jan 2022 11:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ewaYlvAAsGe6; Mon, 31 Jan 2022 11:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43A0A60BD6;
	Mon, 31 Jan 2022 11:00:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DDAC1BF3D8
 for <devel@linuxdriverproject.org>; Mon, 31 Jan 2022 11:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6AAD582438
 for <devel@linuxdriverproject.org>; Mon, 31 Jan 2022 11:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UftFCmodJKSh for <devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 11:00:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EACFA8248F
 for <devel@driverdev.osuosl.org>; Mon, 31 Jan 2022 11:00:25 +0000 (UTC)
Received: by mail-il1-x141.google.com with SMTP id w5so11037377ilo.2
 for <devel@driverdev.osuosl.org>; Mon, 31 Jan 2022 03:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=FANIUiWvB3mdY3zLX2DODg2pUIL5eGT5wlydl6jYk40=;
 b=UiZkV1xu/1z5A/ztD5Jldn3XOzfxCb5dH+/DMk1AFwK/nat4JXJLhGvMZnA2+IcjXR
 YpW9r7ae6KAHd2sg0/6YFTRnkZ3XqJMzbhN9flAzZs0JoNMicLhQj4whv/k5nByjCpr2
 OPf/s6NNTy4WRB8M3asGC42AidvYisjk++OWaBieA6XGemBs4Y+JGAvZ5l41ammJrDB4
 p5lGBdvbZ5NrWMYLncN5GoY37UsWl4xjwHwFxwvY+3e/m9UxQRtNwA1vx+Ngxm2/RcIf
 HB+3yGJS8mnEVkIPxbImLKA3AmKSXwrPGXKRYLzTh8tWOJi5P+SVpgZzGLkgPt54T4WY
 uPBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=FANIUiWvB3mdY3zLX2DODg2pUIL5eGT5wlydl6jYk40=;
 b=1+2SuwxuXFiNYX1aEPuxp+lAdSPUyNTMvd6E1xByUO/r3tfyNAlzOJwVA7lz6AR8Sk
 RkD9H0n5Rbi58NyQEVO5E4qDokvoUZm5robPpopPXoM3tx/1Px4qwS/Xy4Pz707TjRrp
 UkdElWDfhs5IX/rvSgkEeTy+oTveqLmYsHOHbnOzKRO5BdLBWxjstAYqDgSpSQ+OUzEy
 9vhuRnt6lO4VtFV4MbC5n/FNtcHDRQCDsbrPlp5QSoNJN/LF1FweAFjDoT2+0l8wkAvN
 D6HNDsLVSvZwN+slnxm4vevdubnfGjPNWI3rvchKVznH8BuaoNcJ0Yw+OLTW87KGK5pe
 Lnkg==
X-Gm-Message-State: AOAM533ouhkEfVTCjjebj3vjKeDAGeO1UqVD8OxjLwK2KIbferet0dpX
 cS0cZRjA9Ys6UUcsBaV1OduXwxZdJ2g7NHmBL/0=
X-Google-Smtp-Source: ABdhPJzd4XpulgxPqo3GJyz/7qJgMmqyQWLIjLiq4E497a4l1ZK6xwd0ZMb9kbBqw+HfcfevS7FYQFhhZjxFTzbYWZE=
X-Received: by 2002:a92:bf01:: with SMTP id z1mr11261719ilh.18.1643626824914; 
 Mon, 31 Jan 2022 03:00:24 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6638:1248:0:0:0:0 with HTTP; Mon, 31 Jan 2022 03:00:24
 -0800 (PST)
From: Mrs daniell akyle <daniellakyle60@gmail.com>
Date: Mon, 31 Jan 2022 12:00:24 +0100
X-Google-Sender-Auth: In2hlqlpPwPr7MI-yh9_QFub_fE
Message-ID: <CAKFcj-MLAnZBo0A2RqXf-exs+KAG-o6Ln5XerrcTvaKWSBL9yQ@mail.gmail.com>
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
