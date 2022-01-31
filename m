Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F50D4A40BC
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Jan 2022 12:00:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBFAC40566;
	Mon, 31 Jan 2022 11:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3v-jF2OWEcMH; Mon, 31 Jan 2022 11:00:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50D8A40516;
	Mon, 31 Jan 2022 11:00:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 612571BF3D8
 for <devel@linuxdriverproject.org>; Mon, 31 Jan 2022 11:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DD0960C2D
 for <devel@linuxdriverproject.org>; Mon, 31 Jan 2022 11:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id chWczAFXD0zR for <devel@linuxdriverproject.org>;
 Mon, 31 Jan 2022 11:00:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE87460BD6
 for <devel@linuxdriverproject.org>; Mon, 31 Jan 2022 11:00:08 +0000 (UTC)
Received: by mail-il1-x141.google.com with SMTP id d3so11003030ilr.10
 for <devel@linuxdriverproject.org>; Mon, 31 Jan 2022 03:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=FANIUiWvB3mdY3zLX2DODg2pUIL5eGT5wlydl6jYk40=;
 b=Ozk//2swZ4n+9EW8l8AJE1MTLlpoaCXK3xzfpPFLIseBsOa2jBlUIXPufJKZWOZJb1
 LZYSIA+qJrwb7cNfMphudC5bBa0wGV8S3gL6kVVbqGkOdt0B4XP1yUbpKkdrSgOk4SCw
 v1C0S0LKRkjJnU7f896SEI1wlEalwFx9Rgq5irerJa96uqZolG/hVsfTboEhp5Wo262X
 Bw5DjIfp6f3BMZuUcN/21CQmX+e0cBVKV6O17yhSY33CkiO9iN1/rQChZ0P/9curfp6q
 4Ae69srjWBiOD2IQLksGh38ZmWapdFwCTJxNZE6Fdwc1T0xvGWym84r63rPu354BmJN+
 Mxew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=FANIUiWvB3mdY3zLX2DODg2pUIL5eGT5wlydl6jYk40=;
 b=v1YvasS6mfUiSeoMxrE1LJgZum4Nd63Ze879uoFC5wuxwj7HieecCpkiwXK3XyjrLc
 Z7QrwHzEgRn0Tnd2FiejAmnXMXpcy0yKG+QSOOT3ChtEl7fDu1PK3EvevZ5U/X0+vL44
 sbb7jokIAXjdwIopPk/szeQJUdv/Ytx/4dx5XttMgjWrR/0i3fUFn1NvIqLRHUGWpD4w
 Fgmd1iYtzVxbc0/1XvTDT0XZ5O5fFnOLNxdrTQ1QlwWMr+ZTK3Oa2wVWySxNdA/D8RA6
 LeFn5w2ylBOgpqLfJTCQrpbfhkVOd+QctYIEYsQVBVR0Ov2ukkyI7VuyrGqe4hNhixMl
 LKwg==
X-Gm-Message-State: AOAM530YsTQcNCQmEPCjFtWLpSoKO3PvZkcAe801GfAWXVcBn0aATJYP
 A2+pQ7qN8+adzEJNRH6dSm7/UfXotBCC8EvSC88=
X-Google-Smtp-Source: ABdhPJwTER/p0YcvOwwJid91RzPvkEw8DmHtUlVRny5nV0kksgWcR6ScIqwhpLtpjii0MFHZVgmhnLw6wJn43CXNw30=
X-Received: by 2002:a92:ca4f:: with SMTP id q15mr10723189ilo.181.1643626807913; 
 Mon, 31 Jan 2022 03:00:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6638:1248:0:0:0:0 with HTTP; Mon, 31 Jan 2022 03:00:07
 -0800 (PST)
From: Mrs daniell akyle <daniellakyle60@gmail.com>
Date: Mon, 31 Jan 2022 12:00:07 +0100
X-Google-Sender-Auth: juhwXopT4FowK4J6T8rApuMl0w4
Message-ID: <CAKFcj-OsHQc6b32Puiy4zbkpRh0TFP-Vu0BdoENoHiCXtxRwQQ@mail.gmail.com>
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
