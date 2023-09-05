Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F29BA793284
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Sep 2023 01:26:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F2B44187E;
	Tue,  5 Sep 2023 23:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F2B44187E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yzb8OhYogR6h; Tue,  5 Sep 2023 23:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2C65408D5;
	Tue,  5 Sep 2023 23:25:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2C65408D5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7653C1BF25F
 for <devel@linuxdriverproject.org>; Tue,  5 Sep 2023 23:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 487E260BCB
 for <devel@linuxdriverproject.org>; Tue,  5 Sep 2023 23:25:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 487E260BCB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vnUscUC4mK-O for <devel@linuxdriverproject.org>;
 Tue,  5 Sep 2023 23:25:46 +0000 (UTC)
X-Greylist: delayed 452 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 05 Sep 2023 23:25:46 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 906906060A
Received: from mta.al.ce.gov.br (mail2.al.ce.gov.br [189.84.122.250])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 906906060A
 for <devel@linuxdriverproject.org>; Tue,  5 Sep 2023 23:25:46 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mta.al.ce.gov.br (Postfix) with ESMTP id BB5E140F64C;
 Tue,  5 Sep 2023 20:17:52 -0300 (-03)
Received: from mta.al.ce.gov.br ([127.0.0.1])
 by localhost (mta.al.ce.gov.br [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id o4UozfMOf7hb; Tue,  5 Sep 2023 20:17:51 -0300 (-03)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mta.al.ce.gov.br (Postfix) with ESMTP id CF35240F634;
 Tue,  5 Sep 2023 20:17:50 -0300 (-03)
DKIM-Filter: OpenDKIM Filter v2.10.3 mta.al.ce.gov.br CF35240F634
X-Virus-Scanned: amavisd-new at mta.al.ce.gov.br
Received: from mta.al.ce.gov.br ([127.0.0.1])
 by localhost (mta.al.ce.gov.br [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id BTZ-gtoQELJO; Tue,  5 Sep 2023 20:17:50 -0300 (-03)
Received: from mta.al.ce.gov.br (mail.al.ce.gov.br [10.85.100.5])
 by mta.al.ce.gov.br (Postfix) with ESMTP id 7F46E40F610;
 Tue,  5 Sep 2023 20:17:47 -0300 (-03)
Date: Tue, 5 Sep 2023 20:17:47 -0300 (BRT)
From: Rosa Emilia Rocha <emilia@al.ce.gov.br>
Message-ID: <540335490.1168071.1693955867429.JavaMail.zimbra@al.ce.gov.br>
Subject: =?utf-8?Q?Guten_Morgen=E2=80=8B?=
MIME-Version: 1.0
X-Originating-IP: [10.85.100.5]
X-Mailer: Zimbra 8.7.11_GA_3800 (ZimbraWebClient - GC116 (Win)/8.7.11_GA_3800)
Thread-Index: ZQWjIdApVSzkS1DrMrphcQbtwGiixA==
Thread-Topic: Guten =?utf-8?Q?Morgen=E2=80=8B?=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=al.ce.gov.br; 
 s=A503F186-1710-11E8-8789-D6C0AD931084; t=1693955871;
 bh=a/iNuvL8GReuQ7gXnCnkxj/ttcEETp5t5WDhRgG2yUg=;
 h=Date:From:Message-ID:MIME-Version;
 b=XHEIvvNyJkq8ph3KYqZiuR6jDV6o1JdqBH/Gvf1pBDHzV3ThMVtGHwJC9Rj6NWQr3
 vYoefQ/nhbGAWJwc5mhV3LGXDhxOb1TRNti5CuWgd7KDwpipIqyp3H5I/5tdGZuRkg
 vHw1KcWoiCL5uAwVjbZCFw+ZJYBDgQ6ov99fxP/x1wQz3kb+RQi/ahaZrE8phGScbv
 SSo0N2VGLIf7efe1r5H+LkZoEIoXF2aBvkD2Bv+ibzookSycXUIw+ihmKbnCdqYB42
 86P2IbogEjZt/jvt8fKQCa9gCh64fk14ac4MTs7uGP2EusQqa73CwmvFNXVDh0TAVU
 ylAXO/QvqQjtw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=al.ce.gov.br header.i=@al.ce.gov.br
 header.a=rsa-sha256 header.s=A503F186-1710-11E8-8789-D6C0AD931084
 header.b=XHEIvvNy
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
Reply-To: Von Fander <vfander@aol.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SWNoIGhhYmUgZWluZW4gRXhwYW5zaW9ucy0gdW5kIEludmVzdGl0aW9uc3BsYW4gZsO8ciBTaWUu
CldpciBiaWV0ZW4gYWxsZSBBcnRlbiB2b24gS3JlZGl0ZW4gYW4uCk1haWxlbiBTaWUgbWlyIGbD
vHIgd2VpdGVyZSBJbmZvcm1hdGlvbmVuLgoKVm9uIEZhbmRlcgpUZWxlZm9uOjA3NzQxNTA0MTMx
CkUtTWFpbDp2ZmFuZGVyQGFvbC5jb20KRS1NYWlsOnZmYW5kZXJAUHJpbWVjYXBpdGFsZmluLmNv
bQoKR3V0ZW4gTW9yZ2VuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
