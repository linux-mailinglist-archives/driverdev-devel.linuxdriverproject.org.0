Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F14F775446
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Aug 2023 09:38:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21557404D1;
	Wed,  9 Aug 2023 07:38:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21557404D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KexhBsD5YfXI; Wed,  9 Aug 2023 07:38:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F083240151;
	Wed,  9 Aug 2023 07:38:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F083240151
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C1241BF281
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Aug 2023 07:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05FD482B3E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Aug 2023 07:38:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05FD482B3E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-SlqZ22LyiK
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Aug 2023 07:38:00 +0000 (UTC)
X-Greylist: delayed 411 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 09 Aug 2023 07:38:00 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5545B82B1B
Received: from mail.venturelinkbiz.com (mail.venturelinkbiz.com
 [51.195.119.142])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5545B82B1B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Aug 2023 07:38:00 +0000 (UTC)
Received: by mail.venturelinkbiz.com (Postfix, from userid 1002)
 id E2BF344843; Wed,  9 Aug 2023 07:30:55 +0000 (UTC)
Received: by mail.venturelinkbiz.com for
 <driverdev-devel@linuxdriverproject.org>; Wed,  9 Aug 2023 07:30:51 GMT
Message-ID: <20230809064500-0.1.1p.4czo.0.ah4a63y5oe@venturelinkbiz.com>
Date: Wed,  9 Aug 2023 07:30:51 GMT
From: "Michal Rmoutil" <michal.rmoutil@venturelinkbiz.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Syst=C3=A9m_sledov=C3=A1n=C3=AD_a_optimalizace_v=C3=BDroby?=
X-Mailer: mail.venturelinkbiz.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=venturelinkbiz.com; s=mail; t=1691566266;
 bh=Mjfq+hZZ0+rPTC06HjjASvlnsTMgj1yAndWxi/OAu2M=;
 h=Date:From:To:Subject:From;
 b=STbR3qV8cwNxiZIuvorktFoFlakTTt5YEKJ69SfP2/NQirU87FSw1wEVqePIs2A8W
 AMPEdOrfJTmfWCAy49W4R+2nLXnWhCmQNOzBiWVW4emMUv7XeV00ytOXX0O1Bq2wpY
 E7GT+/REJxtgHjZctv7GyJ42W+FYa5iJquGHYn/6qi4TjPShvjlgYzC3BSoCDgusrY
 YqW2Is5CA4Ls9vSI385857G4Qbt75b4ZILMcvWci8chiWP2ykvqfl+JV5m+/hbXreB
 DU9qtd/9DaVoYVR3cA/6nUK/VmqTX5cYTbxRkqW8QEtT9hos7MlbDiX+PVD9mPCnzS
 ZQV8FctNo0G+w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=venturelinkbiz.com
 header.i=@venturelinkbiz.com header.a=rsa-sha256 header.s=mail
 header.b=STbR3qV8
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
