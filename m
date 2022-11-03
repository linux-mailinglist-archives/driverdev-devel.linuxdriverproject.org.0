Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4A461882F
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Nov 2022 20:06:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56B1540240;
	Thu,  3 Nov 2022 19:06:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56B1540240
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hK8TK6lWGRkv; Thu,  3 Nov 2022 19:06:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FF1740231;
	Thu,  3 Nov 2022 19:06:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FF1740231
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D51D91BF3C0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  3 Nov 2022 19:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0DB960FFD
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  3 Nov 2022 19:06:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0DB960FFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZEjUeSfqRaNU
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  3 Nov 2022 19:06:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD19460671
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD19460671
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  3 Nov 2022 19:06:33 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id d6so4398732lfs.10
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 03 Nov 2022 12:06:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XyD1mfWiSlDwEde6GPNfMmCbNFFyjnPNBOmoyULHgYM=;
 b=fUS3f274m22SptpgcHFRxPny2y7844ZyMHnekh4wj/vBVkPjWPWr5ajXAIik0aOQh/
 8dVsRWh6VEQymNh/DYtMgHPO9q3r9k2dUPBXWSvTi/bTmyT20ieW0sAMdgDVUXIQalgR
 4tKnDRY9Jo6MonENX1gYMajnS0cAN5CFd8rd0udaj0CxR6iPL9gBeaWH9GPQ8xe6qLLs
 q29ROnSKTzaOJQ2r+NqV597eMFiXklnx7IbPos3QxzutdAJQULiWS1D3tkcTC2a7M/si
 PrIM8wDZ9tDEQ47nziWiNMregWNbQrro2nENm/reUbKtj+6JJSUdQJPbFVOc/pYD3/NQ
 e4gw==
X-Gm-Message-State: ACrzQf0AAHIlSotWXdtEAjsFNGi9KzwKWk4vVktmigefan+kmwQA5S5q
 feaVJU1bg3jaubm0juhGDJV6+DGyn3qODWftpxc=
X-Google-Smtp-Source: AMsMyM4aW0GddtzKWFEWVSzIz1vIbmsWDErcohH+SMfoM+7U7KNOEGRw7wSDbmxVbRkHX6zBUuPjj+5FG2fXFGilmiU=
X-Received: by 2002:a05:6512:2210:b0:4af:f590:32d8 with SMTP id
 h16-20020a056512221000b004aff59032d8mr13266237lfu.325.1667502391792; Thu, 03
 Nov 2022 12:06:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:a547:0:0:0:0:0 with HTTP;
 Thu, 3 Nov 2022 12:06:30 -0700 (PDT)
From: Office <fs98379@gmail.com>
Date: Thu, 3 Nov 2022 20:06:30 +0100
Message-ID: <CAJA6vqwyNr4tLOHU1j1Yxf7Vebp45V6bYJUjWrCNFvqYue+LQQ@mail.gmail.com>
Subject: Dhl office delivery company lome Togo//ATM MASTER CARD
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=XyD1mfWiSlDwEde6GPNfMmCbNFFyjnPNBOmoyULHgYM=;
 b=ctyce4UXKhqqGjGCZo7b6vo27oB7h4/+7D39c79XtibVJ4H1EiausAzFiueklEcwMy
 U8+1e/11lSL3bOzrYY9ItDW+c5ZnP1qJOsO5y/znwASeos19Iab3SZ4wK4n/2lqfxrkd
 XInUe/M+nnz7gMG906VlnBUP72CwVZHbWVY+PFeY5uiGpUlkVeGAAOsCvQM52xETna0i
 pCAttsw7V4dD6MXIGayOgt82HT50BC/5yYKNe8Rfxt6nAsRc7zlB8Dxf3OdiAuxJ60bx
 jUMqKCdymhd+oPR63f9ffm9GyFubNjDeguDx0wAodIAMtWNP+ETlTfbnh2WwylZtAapo
 +dVQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ctyce4UX
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
Reply-To: dhlofficedelivery1933@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gClRoaXMgaXMgREhMIGNvdXJpZXIgRGVsaXZlcnkgQ29tcGFueSBvZiBMb21lIFRvZ28sIHRo
ZSBtYW5hZ2VtZW50IG9mCnRoaXMgIGNvbXBhbnksIHdpc2hlcyB0byBpbmZvcm0geW91IHRoYXQs
IHdlIHJlY2VpdmVkIGEgcGFyY2VsCmNvbnRhaW5pbmcgYW4gQVRNICBNYXN0ZXIgQ2FyZCB2YWx1
ZWQgJDcuNSBNaWxsaW9uIFVTRCB3aXRoIHRoZSB2aXRhbApQSU4gb24gaXQsIGZyb20gaW50ZXJu
YXRpb25hbCBtb25pdG9yaW5nIGZ1bmRzIChJTUYpIEZvciBzYWZldHkKZGVsaXZlcnkgdG8geW91
ciByZXNpZGVudGlhbCBhZGRyZXNzIGluIHlvdXIKY291bnRyeS4KVGhpcyBwYXJjZWwgd2FzIGJy
b3VnaHQgdG8gdXMgdGhpcyBtb3JuaW5nIGJ5IHRoZSBBVE0gQ2FyZCBwYXltZW50Cm9mZmljZSAg
TG9tZSBUb2dvLCBwbGVhc2UgcmVjb25maXJtIHRoZSBiZWxvdyBpbmZvcm1hdGlvbiwgdG8gYXZv
aWQKZGVsaXZlcnkgb2YgIHlvdXIgQVRNIE1hc3RlciBDYXJkIHRvIHdyb25nIGhhbmQsClBsZWFz
ZSBzZW5kIGFsbCB0aGUgbmVjZXNzYXJ5IGluZm9ybWF0aW9uIHZpYSBvdXIgRS1tYWlsCmFkZHJl
c3MoZGhsb2ZmaWNlZGVsaXZlcnkxOTMzQGdtYWlsLmNvbSkKCjEpIFlvdXIgRnVsbCBOYW1lOgoy
KSBBZGRyZXNzLCBDaXR5LCBTdGF0ZSBBbmQgQ291bnRyeToKMykgUGVyc29uYWwgQ2VsbCBQaG9u
ZSwgRmF4IEFuZCBNb2JpbGU6CjQpIENvbXBhbnkgTmFtZSAoSWYgQW55KSBQb3NpdGlvbiBBbmQg
QWRkcmVzczoKNSkgT2NjdXBhdGlvbiwgQWdlIEFuZCBNYXJpdGFsIFN0YXR1czoKNikgQ29weSBP
ZiBZb3VyIEludCdsIFBhc3Nwb3J0L0RyaXZlcnMgTGljZW5jZToKCldlIHdpbGwgcmVnaXN0ZXIg
eW91ciBwYWNrYWdlIGFuZCBzZW5kIHlvdSB0aGUgdHJhY2tpbmcgbnVtYmVycyBiZWZvcmUKd2Ug
IHByb2NlZWQgZm9yIHNhZmV0eSBkZWxpdmVyeSBvZiB5b3VyIHBhY2thZ2UgYXMgc29vbiBhcyB5
b3UKcmVjb25maXJtIHRoZSByZXF1aXJlZCBpbmZvcm1hdGlvbiBmb3Igc2FmZXR5IGRlbGl2ZXJ5
LlNlbmQgeW91cgpyZXF1aXJlIGluZm9ybWF0aW9uIHZpYSAgb3VyIG9mZmljZSBlbWFpbAphZGRy
ZXNzKGRobG9mZmljZWRlbGl2ZXJ5MTkzM0BnbWFpbC5jb20pCkRITCBpcyBvbmUgb2YgdGhlIHdv
cmxkJ3MgZ3JlYXQgc3VjY2VzcyBzdG9yaWVzLCB0aGUgc3RhcnQtdXAgdGhhdApyZXZvbHV0aW9u
aXplZCB0aGUgZGVsaXZlcnkgb2YgcGFja2FnZXMgYW5kIGluZm9ybWF0aW9uLiBJbiB0aGUgcGFz
dAozM3llYXJzLCB3ZSd2ZSBncm93biB1cCBhbmQgZ3Jvd24gaW50byBhIGRpdmVyc2UgZmFtaWx5
IG9mIGNvbXBhbmllcwphcyBESEwgIHRoYXQncyBiaWdnZXIsIHN0cm9uZ2VyLCBiZXR0ZXIgdGhh
biBldmVyLgoKWW91cnMgYWZmZWN0aW9uYXRlbHkuClBhc3RvciBEYXZpZC4KQmQuIE9uIEphbnVh
cnkgMTMsIEltbS4gTiDCsCAxNTc4Ck55w6lrb25ha3Bvw6kgLSBCUCA0MjAyCkxvbcOpIC0gVG9n
bwpUZWw6ICgrIDIyOCkgOTc1OTQ4OTEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
