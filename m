Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 229E567AA47
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Jan 2023 07:26:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A1B760F64;
	Wed, 25 Jan 2023 06:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A1B760F64
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5VcBbN1AW-Mc; Wed, 25 Jan 2023 06:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60ED960C29;
	Wed, 25 Jan 2023 06:25:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60ED960C29
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE5B51BF842
 for <devel@linuxdriverproject.org>; Wed, 25 Jan 2023 06:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 85EE741805
 for <devel@linuxdriverproject.org>; Wed, 25 Jan 2023 06:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85EE741805
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BnmVq8dX7B_7 for <devel@linuxdriverproject.org>;
 Wed, 25 Jan 2023 06:25:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2371C41767
Received: from mx-gw-prx01.wika.co.id (pegasus.wika.zone [103.25.196.25])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2371C41767
 for <devel@driverdev.osuosl.org>; Wed, 25 Jan 2023 06:25:50 +0000 (UTC)
Received: from mx-gw-prx01.wika.co.id (localhost.localdomain [127.0.0.1])
 by mx-gw-prx01.wika.co.id (Proxmox) with ESMTP id C5B1444375;
 Wed, 25 Jan 2023 13:24:06 +0700 (WIB)
Received: from smtp-gw.wika.co.id (smtp-gw.wika.co.id [10.4.0.44])
 by mx-gw-prx01.wika.co.id (Proxmox) with ESMTP id EEA35442BB;
 Wed, 25 Jan 2023 13:24:05 +0700 (WIB)
Received: from smtp-gw-01.wika.co.id (localhost [127.0.0.1])
 by smtp-gw1.wika.co.id (Postfix) with ESMTP id 6A3471A8CB;
 Wed, 25 Jan 2023 13:23:52 +0700 (WIB)
X-Virus-Scanned: amavisd-new at wika.co.id
Received: from smtp-gw.wika.co.id ([127.0.0.1])
 by smtp-gw-01.wika.co.id (smtp-gw-01.wika.co.id [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id j9iEDh11qvnZ; Wed, 25 Jan 2023 13:23:51 +0700 (WIB)
Received: from mailbox.wika.co.id (unknown [10.4.0.84])
 by smtp-gw1.wika.co.id (Postfix) with ESMTP id 6952C1A8C0;
 Wed, 25 Jan 2023 13:23:07 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mailbox.wika.co.id (Postfix) with ESMTP id 683557FC0E912;
 Wed, 25 Jan 2023 11:08:08 +0700 (WIB)
Received: from mailbox.wika.co.id ([127.0.0.1])
 by localhost (mailbox.wika.co.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ryCp0Crxmf6r; Wed, 25 Jan 2023 11:08:07 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mailbox.wika.co.id (Postfix) with ESMTP id 7AB2C7FC0E90D;
 Wed, 25 Jan 2023 11:08:07 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mailbox.wika.co.id 7AB2C7FC0E90D
X-Virus-Scanned: amavisd-new at wika.co.id
Received: from mailbox.wika.co.id ([127.0.0.1])
 by localhost (mailbox.wika.co.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ZX3aCQCeg1Bo; Wed, 25 Jan 2023 11:08:07 +0700 (WIB)
Received: from mailbox.wika.co.id (mailbox.wika.co.id [10.5.0.1])
 by mailbox.wika.co.id (Postfix) with ESMTP id F332E7FC0E90C;
 Wed, 25 Jan 2023 11:07:32 +0700 (WIB)
Date: Wed, 25 Jan 2023 11:07:32 +0700 (WIB)
From: =?utf-8?B?0KHQuNGB0YLQtdC80L3Ri9C5INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA?=
 <wellbeing@wika.co.id>
Message-ID: <2091067635.2051797.1674619652427.JavaMail.zimbra@wika.co.id>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [10.5.0.1]
X-Mailer: Zimbra 8.8.12_GA_3866 (zclient/8.8.12_GA_3866)
Thread-Index: NkMLK5h8VVHfRulSP7F787ptBKFMMg==
Thread-Topic: 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wika.co.id; 
 s=3A269092-2A4A-11ED-99C4-3E27D2C9E2D5; t=1674619687;
 bh=k5EMoCwJBO4YZrQsAhSii8VqnTVdX9SqJS64neQlztQ=;
 h=Date:From:Message-ID:MIME-Version;
 b=S78C0T+uW/qpEFEwKrkqbwXK6Txn/XL2ZUR4M6vDFuJ70apKI7YhBWxLTXF+IRWYD
 7av99N8M4dtSkPLQnKSkQnq+o6miYLIIK9q/b4USJg/LTlg+9OhiVn7+FC7ZZPO7Ae
 K8cdjDFfX3y/FJuUM+EJFlUdv+QJd9lz09EKivz3fJFe2VPp9DB5FqaOI8zcG5BE9B
 B7AUsLCTsC1Q2x4TbcTy5T99hZOFfdGnl73dkpUFrlOUECrjFoeW2m91pYaf4kDplv
 IyKGazsCemhc3pN3T55aU1ZqkcOOXCBlS/c81kUKPhKqfL9eSUNncplYdWtXpmwcjj
 R1Jo8oWDDt/YA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=wika.co.id header.i=@wika.co.id
 header.a=rsa-sha256 header.s=3A269092-2A4A-11ED-99C4-3E27D2C9E2D5
 header.b=S78C0T+u
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
Reply-To: sistemassadmins@mail2engineer.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

0JLQndCY0JzQkNCd0JjQlTsKCtCS0LDRiCDQv9C+0YfRgtC+0LLRi9C5INGP0YnQuNC6INC/0YDQ
tdCy0YvRgdC40Lsg0L7Qs9GA0LDQvdC40YfQtdC90LjQtSDRhdGA0LDQvdC40LvQuNGJ0LAsINC6
0L7RgtC+0YDQvtC1INGB0L7RgdGC0LDQstC70Y/QtdGCIDUg0JPQkSwg0LrQsNC6INC+0L/RgNC1
0LTQtdC70LXQvdC+INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA0L7QvCwg0LrQvtGC0L7RgNGL
0Lkg0LIg0L3QsNGB0YLQvtGP0YnQtdC1INCy0YDQtdC80Y8g0YDQsNCx0L7RgtCw0LXRgiDQvdCw
IDEwLDkg0JPQkSwg0LLRiyDQvdC1INGB0LzQvtC20LXRgtC1INC+0YLQv9GA0LDQstC70Y/RgtGM
INC40LvQuCDQv9C+0LvRg9GH0LDRgtGMINC90L7QstGD0Y4g0L/QvtGH0YLRgyDQtNC+INGC0LXR
hSDQv9C+0YAsINC/0L7QutCwINC90LUg0L/RgNC+0LLQtdGA0LjRgtC1INC/0L7Rh9GC0YMg0L/Q
vtGH0YLQvtCy0L7Qs9C+INGP0YnQuNC60LAg0L/QvtCy0YLQvtGA0L3Qvi4g0KfRgtC+0LHRiyDQ
v9C+0LLRgtC+0YDQvdC+INC/0YDQvtCy0LXRgNC40YLRjCDRgdCy0L7QuSDQv9C+0YfRgtC+0LLR
i9C5INGP0YnQuNC6LCDQvtGC0L/RgNCw0LLRjNGC0LUg0YHQu9C10LTRg9GO0YnRg9GOINC40L3R
hNC+0YDQvNCw0YbQuNGOINC90LjQttC1OgoK0LjQvNGPOgrQmNC80Y8g0L/QvtC70YzQt9C+0LLQ
sNGC0LXQu9GPOgrQv9Cw0YDQvtC70Yw6Y2Z5R3NUMQrQn9C+0LTRgtCy0LXRgNC00LjRgtC1INC/
0LDRgNC+0LvRjDogCtCt0LvQtdC60YLRgNC+0L3QvdCw0Y8g0L/QvtGH0YLQsDoK0KLQtdC70LXR
hNC+0L06CgrQldGB0LvQuCDQstGLINC90LUg0LzQvtC20LXRgtC1INC/0L7QstGC0L7RgNC90L4g
0L/RgNC+0LLQtdGA0LjRgtGMINGB0LLQvtC5INC/0L7Rh9GC0L7QstGL0Lkg0Y/RidC40LosINCy
0LDRiCDQv9C+0YfRgtC+0LLRi9C5INGP0YnQuNC6INCx0YPQtNC10YIg0L7RgtC60LvRjtGH0LXQ
vSEKCtCf0YDQuNC90L7RgdC40Lwg0LjQt9Cy0LjQvdC10L3QuNGPINC30LAg0L3QtdGD0LTQvtCx
0YHRgtCy0LAuCtCf0YDQvtCy0LXRgNC+0YfQvdGL0Lkg0LrQvtC0OiBlbjogV0VCLiDQkNCU0JzQ
mNCd0JjQodCi0KDQkNCi0J7QoNCQLiBSVTAwNiw1MjQ3NjUgQDIwMjMK0J/QvtGH0YLQvtCy0LDR
jyDRgtC10YXQvdC40YfQtdGB0LrQsNGPINC/0L7QtNC00LXRgNC20LrQsCBAMjAyMwoK0KHQv9Cw
0YHQuNCx0L4K0KHQuNGB0YLQtdC80L3Ri9C5INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGALgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
