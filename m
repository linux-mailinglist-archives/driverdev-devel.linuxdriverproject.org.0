Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF4D753367
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jul 2023 09:45:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CDAD612E4;
	Fri, 14 Jul 2023 07:45:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CDAD612E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tx_2OX2-BZMw; Fri, 14 Jul 2023 07:45:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22EB560AD6;
	Fri, 14 Jul 2023 07:45:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22EB560AD6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 178BB1BF36A
 for <devel@linuxdriverproject.org>; Fri, 14 Jul 2023 07:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F241241730
 for <devel@linuxdriverproject.org>; Fri, 14 Jul 2023 07:45:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F241241730
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PWXDCKBNt4uI for <devel@linuxdriverproject.org>;
 Fri, 14 Jul 2023 07:45:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58EB9416F9
Received: from mail.venturelinkbiz.com (mail.venturelinkbiz.com
 [51.195.119.142])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 58EB9416F9
 for <devel@driverdev.osuosl.org>; Fri, 14 Jul 2023 07:45:44 +0000 (UTC)
Received: by mail.venturelinkbiz.com (Postfix, from userid 1002)
 id 2670A45BB7; Fri, 14 Jul 2023 07:45:40 +0000 (UTC)
Received: by venturelinkbiz.com for <devel@driverdev.osuosl.org>;
 Fri, 14 Jul 2023 07:45:38 GMT
Message-ID: <20230714064520-0.1.17.2zsw.0.079e7fgp2p@venturelinkbiz.com>
Date: Fri, 14 Jul 2023 07:45:38 GMT
From: "Michal Rmoutil" <michal.rmoutil@venturelinkbiz.com>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Syst=C3=A9m_sledov=C3=A1n=C3=AD_a_optimalizace_v=C3=BDroby?=
X-Mailer: mail.venturelinkbiz.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=venturelinkbiz.com; s=mail; t=1689320742;
 bh=Mjfq+hZZ0+rPTC06HjjASvlnsTMgj1yAndWxi/OAu2M=;
 h=Date:From:To:Subject:From;
 b=CQZ6DBkAF+yyt4r/rNK7N+FYAvHBoDvv2t0xLNsKS4iNp5ADOXfpKJc6uCGLoXP0y
 GUXBAbtTWfOV3RN/P8DVQjrZ0iudZr60WztJEgZfwJzjaJQOHw1w+8gzO9WRXkKSsb
 GpeT1/F8JxDarnt/GxQ6oODXZFkG6AAGYwILh+ZGf1Jw5dOOocMW/Q/5a0/+QsfG2x
 vGdSFBIU9B5oWnHXHH6yVsVB8RXdAsPGYJoKXy0jCzx+hymd/onh5im4qob51R82WJ
 ZnhtWoH6Y0cKCMb2qFRo91mCQG/V8O4CVNMZIiNksK5lvPV1A2DstOcB+jKYTkXJAw
 45UsELfyK/Z4g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=venturelinkbiz.com
 header.i=@venturelinkbiz.com header.a=rsa-sha256 header.s=mail
 header.b=CQZ6DBkA
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
