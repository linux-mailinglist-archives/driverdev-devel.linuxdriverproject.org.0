Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F0C929858
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Jul 2024 16:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D60C60719;
	Sun,  7 Jul 2024 14:22:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fuPv6ZA7KGWf; Sun,  7 Jul 2024 14:22:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C680860856
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C680860856;
	Sun,  7 Jul 2024 14:22:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 70B2F1BF488
 for <devel@linuxdriverproject.org>; Sun,  7 Jul 2024 14:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C142409C4
 for <devel@linuxdriverproject.org>; Sun,  7 Jul 2024 14:22:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id whYlXr9UO_e1 for <devel@linuxdriverproject.org>;
 Sun,  7 Jul 2024 14:22:26 +0000 (UTC)
X-Greylist: delayed 8297 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 07 Jul 2024 14:22:25 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D1E45400F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1E45400F5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.31.57.19;
 helo=dieta2-vm1.cust.ignum.cz; envelope-from=hranice12@naturhouse-cz.cz;
 receiver=<UNKNOWN> 
Received: from dieta2-vm1.cust.ignum.cz (dieta2-vm1-19.cust.ignum.cz
 [217.31.57.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1E45400F5
 for <devel@driverdev.osuosl.org>; Sun,  7 Jul 2024 14:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by dieta2-vm1.cust.ignum.cz (Postfix) with ESMTP id 859297A5DC;
 Sun,  7 Jul 2024 13:17:30 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at dieta2-vm1.cust.ignum.cz
Received: from dieta2-vm1.cust.ignum.cz ([127.0.0.1])
 by localhost (dieta2-vm1.cust.ignum.cz [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id j5GyNiAvddiA; Sun,  7 Jul 2024 13:17:30 +0200 (CEST)
Received: from [192.168.201.75] (unknown [105.112.218.98])
 (Authenticated sender: hranice@naturhouse-cz.cz)
 by dieta2-vm1.cust.ignum.cz (Postfix) with ESMTPSA id D04064E35E6;
 Sun,  7 Jul 2024 13:17:22 +0200 (CEST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: DONATION
To: Recipients <hranice12@naturhouse-cz.cz>
From: hranice12@naturhouse-cz.cz
Date: Sun, 07 Jul 2024 04:17:07 -0700
X-Antivirus: Avast (VPS 240707-2, 7/7/2024), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20240707111730.859297A5DC@dieta2-vm1.cust.ignum.cz>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=naturhouse-cz.cz; 
 h=reply-to:date:date:from:from:subject:subject
 :content-description:content-transfer-encoding:mime-version
 :content-type:content-type; s=default; t=1720351050; x=
 1722165451; bh=BoEe7lzwL9g6a68+J3ZY9YmPy2pu5D7Mnuj+W7tYJho=; b=n
 HfsLQN37FXZo2OaQO9XMhMweht7M67coypIq0RVAyrQ+5tP+o8wMcYzX+wa0VGHG
 aJjxdD+IneDr7QeniN+QwR/9ECLlq/kUinNNDs/M/RPwXHmuclaDnFeJwkTx5IJ0
 477NMBj6l1eUvErnJ0aF84OMocIUEEJOXWdNn2uB0Y=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=naturhouse-cz.cz
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=naturhouse-cz.cz header.i=@naturhouse-cz.cz
 header.a=rsa-sha256 header.s=default header.b=nHfsLQN3
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
Reply-To: MARCBROUSSARD23@GMAIL.COM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U2llIGhhYmVuIGdlcmFkZSBlaW5lIFphaGx1bmcgdm9uIDUyMC4wMDAg4oKsIHZvbSBNb25leWdy
YW0tRGllbnN0IGVyaGFsdGVuLgpBbnR3b3J0ZW4gU2llLCBkYW1pdCBJaHIgTmFtZSBzb2ZvcnQg
YWJnZXJ1ZmVuIHdlcmRlbiBrYW5uLgpBbnR3b3J0ZW4gU2llIGFuIG1hcmNicm91c3NhcmQyM0Bn
bWFpbC5jb20KRFIsCk1hcmMKCi0tIApUaGlzIGVtYWlsIGhhcyBiZWVuIGNoZWNrZWQgZm9yIHZp
cnVzZXMgYnkgQXZhc3QgYW50aXZpcnVzIHNvZnR3YXJlLgp3d3cuYXZhc3QuY29tCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
