Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E812C75ED1C
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jul 2023 10:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DB4C81E48;
	Mon, 24 Jul 2023 08:11:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DB4C81E48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AL4t86SGUHsj; Mon, 24 Jul 2023 08:11:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B33981E3C;
	Mon, 24 Jul 2023 08:11:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B33981E3C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 820B61BF3A9
 for <devel@linuxdriverproject.org>; Mon, 24 Jul 2023 08:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6560981E48
 for <devel@linuxdriverproject.org>; Mon, 24 Jul 2023 08:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6560981E48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GVbRt52onybu for <devel@linuxdriverproject.org>;
 Mon, 24 Jul 2023 08:11:15 +0000 (UTC)
X-Greylist: delayed 509 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 24 Jul 2023 08:11:15 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B58B81E3C
Received: from mail.cassleycruden.pl (mail.cassleycruden.pl [217.61.97.118])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B58B81E3C
 for <devel@driverdev.osuosl.org>; Mon, 24 Jul 2023 08:11:15 +0000 (UTC)
Received: by mail.cassleycruden.pl (Postfix, from userid 1001)
 id 05E8182A40; Mon, 24 Jul 2023 09:01:22 +0100 (BST)
Received: by mail.cassleycruden.pl for <devel@driverdev.osuosl.org>;
 Mon, 24 Jul 2023 08:01:19 GMT
Message-ID: <20230724074501-0.1.6d.d6q3.0.6n2j4md725@cassleycruden.pl>
Date: Mon, 24 Jul 2023 08:01:19 GMT
From: "Adrian Giermata" <adrian.giermata@cassleycruden.pl>
To: <devel@driverdev.osuosl.org>
Subject: Nieaktywna strona www
X-Mailer: mail.cassleycruden.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cassleycruden.pl; s=mail; t=1690185683;
 bh=Bm7kvP9mjtgWMDTk0x3n9fvdJasu+xrGpL0E8vcP3ks=;
 h=Date:From:To:Subject:From;
 b=aRtg6M+wAmYipgRF0adU7KVSqasB5jbPVMSm+fWhPeYAb6Hj+UEPPWFRPMn0s4lHr
 axigPVXLKO+Gt1JQf2h95bstjGHHAMNn6mQm62eI6VAzSYJQ1cWybaO2FzrH6H4dNt
 txJ3zwAMWlW+mzr9kHg9KTfnMfKoDG0iN0gBDB4FD4PWcrsrN30BlSOcqrfCU/8ZTM
 Q3jdt53qDLUpMUPgPz+tgukxJ5hCwvyQIMRHAzR51xdXzQFHSr1jUHHmli4zcAk1DS
 LQ2WtCKaBl/Mhq2/gnekyumryMOKKUOm6UlfaDZ6RudVY9/1TJnWXLVJ9ZgQ7i41k/
 LICdp7FWGG61A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=cassleycruden.pl header.i=@cassleycruden.pl
 header.a=rsa-sha256 header.s=mail header.b=aRtg6M+w
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

RHppZcWEIGRvYnJ5IQoKd8WCYcWbbmllIHpha2/FhGN6ecWCZW0gYnVkb3fEmSBub3dlaiBzdHJv
bnkgaW50ZXJuZXRvd2VqIGRsYSBmaXJteSBkemlhxYJhasSFY2VqIHcgUGHFhHN0d2EgYnJhbsW8
eS4KCkR6acSZa2kgbm93b2N6ZXNueW0gZnVua2Nqb25hbG5vxZtjaW9tIGkgbmllc3RhbmRhcmRv
d2VqIGtyZWFjamkgdW1vY25pxYJlbSBtYXJrxJkgdGVqIGZpcm15IGRvZGFqxIVjIGplaiB3YXJ0
b8WbY2kgaSB0b8W8c2Ftb8WbY2ksIGt0w7NyZWogc3p1a2FqxIUgS2xpZW5jaS4KClogcHJ6eWpl
bW5vxZtjacSFIG1vZ8SZIG9kd2llZHppxIcgc2llZHppYsSZIFBhxYRzdHdhIGZpcm15IGkgcHJ6
ZWRzdGF3acSHIHN3b2plIHBvcnRmb2xpbyBsdWIgbW9nxJkgemFkendvbmnEhyBpIHBvem5hxIcg
UGHFhHN0d2Egb2N6ZWtpd2FuaWEsIHd0ZWR5IHdzcMOzbG5pZSBwcnplYW5hbGl6dWplbXkgcG90
ZW5jamHFgiB3c3DDs8WCcHJhY3kuIAoKQ3p5IG1vamEgcHJvcG96eWNqYSB3eWRhamUgc2nEmSBh
dHJha2N5am5hPwoKClBvemRyYXdpYW0KQWRyaWFuIEdpZXJtYXRhCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
