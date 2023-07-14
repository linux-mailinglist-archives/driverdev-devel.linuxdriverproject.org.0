Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 850C8753333
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jul 2023 09:30:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE0AA83FA0;
	Fri, 14 Jul 2023 07:30:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE0AA83FA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hNmgwsRKBmvp; Fri, 14 Jul 2023 07:30:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADA5383F82;
	Fri, 14 Jul 2023 07:30:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADA5383F82
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 61C801BF36A
 for <devel@linuxdriverproject.org>; Fri, 14 Jul 2023 07:30:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A0C842107
 for <devel@linuxdriverproject.org>; Fri, 14 Jul 2023 07:30:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A0C842107
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HCi69ibe4gKZ for <devel@linuxdriverproject.org>;
 Fri, 14 Jul 2023 07:30:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F763420F5
Received: from mail.venturelinkbiz.com (mail.venturelinkbiz.com
 [51.195.119.142])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F763420F5
 for <devel@linuxdriverproject.org>; Fri, 14 Jul 2023 07:30:48 +0000 (UTC)
Received: by mail.venturelinkbiz.com (Postfix, from userid 1002)
 id 871C34589A; Fri, 14 Jul 2023 07:30:38 +0000 (UTC)
Received: by venturelinkbiz.com for <devel@linuxdriverproject.org>;
 Fri, 14 Jul 2023 07:30:34 GMT
Message-ID: <20230714064520-0.1.17.2yv5.0.4se16vmazm@venturelinkbiz.com>
Date: Fri, 14 Jul 2023 07:30:34 GMT
From: "Michal Rmoutil" <michal.rmoutil@venturelinkbiz.com>
To: <devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Syst=C3=A9m_sledov=C3=A1n=C3=AD_a_optimalizace_v=C3=BDroby?=
X-Mailer: mail.venturelinkbiz.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=venturelinkbiz.com; s=mail; t=1689319845;
 bh=Mjfq+hZZ0+rPTC06HjjASvlnsTMgj1yAndWxi/OAu2M=;
 h=Date:From:To:Subject:From;
 b=OouPsgvrh0T9xtxUjBX/ia4UQ9yPnFTf5wrVjZeVjfvz1/AHKfPBR4VT95qR6bGA4
 1Dp4eE/UiuTak8aslOKxN9DF2BCd3KG5F5LKU2vjN9sWx/0wJDt9gx5T0yzCh0QeoM
 5b891fgh+TgM2Fwpfkt8xEx1ckQRsgHT6ntoJhS9ZmkQxil/QeOXXr6DHVvuUINJyE
 Kf243Bi+etOoZXICXHJUfYFK0KEFm6menq7Cm//6XAHd5gkIivMwfrgPoQUNaM67Wv
 SnyqTw9HeLzBXVg27N+FTjPaXDty46OzzTFirnIHCx1zHhOSA9v7jnp/foaZZo2ZGb
 0ppboYL9g+kzw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=venturelinkbiz.com
 header.i=@venturelinkbiz.com header.a=rsa-sha256 header.s=mail
 header.b=OouPsgvr
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG9icsOpIHLDoW5vCgpabsOhdGUgc3lzdMOpbSwga3RlcsO9IG5lamVuIGhsw61kw6EsIGFsZSBp
IG9wdGltYWxpenVqZSB2w71yb2J1IGEgcMWZaW7DocWhw60gc3TDoWzDvSBwxZnDrWplbT8KCkTD
rWt5IG5lam5vdsSbasWhw61tIHRlY2hub2xvZ2nDrW0gYSBhbmFsw716ZSBkYXQgbmHFoWUgxZll
xaFlbsOtIGlkZW50aWZpa3VqZSBvYmxhc3RpIG9wdGltYWxpemFjZSwgenbDvcWhZW7DrSBlZmVr
dGl2aXR5IGEgc27DrcW+ZW7DrSBuw6FrbGFkxa8uIE5hxaFpIGtsaWVudGkgemF6bmFtZW5hbGkg
bsOhcsWvc3QgcMWZw61qbcWvIHYgcHLFr23Em3J1IG8gMjAgJSBhIGRuZXMgc2kgdG8gbcWvxb5l
dGUgdnl6a291xaFldCBuYSA2MCBkbsOtIHpkYXJtYS4KClBva3VkIGNoY2V0ZSBkYWzFocOtIHBv
ZHJvYm5vc3RpLCBvZHBvdsSbenRlIHByb3PDrW0gbmEga29udGFrdG7DrSDEjcOtc2xvLgoKClBv
emRyYXZ5Ck1pY2hhbCBSbW91dGlsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
