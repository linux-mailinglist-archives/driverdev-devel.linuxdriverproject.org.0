Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 956FA633C02
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Nov 2022 13:04:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02FAF60F6F;
	Tue, 22 Nov 2022 12:04:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02FAF60F6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPlPlXtg3BDO; Tue, 22 Nov 2022 12:04:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D5D460B2F;
	Tue, 22 Nov 2022 12:04:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D5D460B2F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41A391BF28E
 for <devel@linuxdriverproject.org>; Tue, 22 Nov 2022 12:04:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 019A1408E8
 for <devel@linuxdriverproject.org>; Tue, 22 Nov 2022 12:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 019A1408E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jhb-7H0ZTD5M for <devel@linuxdriverproject.org>;
 Tue, 22 Nov 2022 12:04:38 +0000 (UTC)
X-Greylist: delayed 02:02:34 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 101D9408D8
Received: from host.mystershopuk.biz (unknown [62.173.139.184])
 by smtp2.osuosl.org (Postfix) with ESMTP id 101D9408D8
 for <devel@driverdev.osuosl.org>; Tue, 22 Nov 2022 12:04:37 +0000 (UTC)
Received: from mystershopuk.biz
 (ec2-3-129-6-113.us-east-2.compute.amazonaws.com [3.129.6.113])
 by host.mystershopuk.biz (Postfix) with ESMTPA id EFF1812B74EF
 for <devel@driverdev.osuosl.org>; Tue, 22 Nov 2022 11:49:38 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.mystershopuk.biz EFF1812B74EF
DKIM-Filter: OpenDKIM Filter v2.11.0 host.mystershopuk.biz EFF1812B74EF
From: Mystery Shoppers <contact@mystershopuk.biz>
To: devel@driverdev.osuosl.org
Subject: Mystery Shopper
Date: 22 Nov 2022 08:49:38 +0000
Message-ID: <20221122084938.D811DDCA340EDCED@mystershopuk.biz>
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mystershopuk.biz; 
 s=default; t=1669106980;
 bh=mrHJ7CtswN+CMn68o2+p/Ow4rHnZkimc6jIH+X2JuwU=;
 h=Reply-To:From:To:Subject:Date:From;
 b=gLCSuc1KjEwdOaFJ1CdTJ6K0A2OjJp5v9GimpSe0BWo2iI2frLhjX+5bEJDhZPqUf
 SzgQPWv2f/Tb3jQ7A+cHiw6bi+6mcr9fiM41AffFu7Tu39N06wrm5Wxn8nYB0tR+cZ
 Lela0CoBPfdrQrdyxin78kRI8Iu/tNvuMIrka4aw=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mystershopuk.biz; 
 s=default; t=1669106980;
 bh=mrHJ7CtswN+CMn68o2+p/Ow4rHnZkimc6jIH+X2JuwU=;
 h=Reply-To:From:To:Subject:Date:From;
 b=gLCSuc1KjEwdOaFJ1CdTJ6K0A2OjJp5v9GimpSe0BWo2iI2frLhjX+5bEJDhZPqUf
 SzgQPWv2f/Tb3jQ7A+cHiw6bi+6mcr9fiM41AffFu7Tu39N06wrm5Wxn8nYB0tR+cZ
 Lela0CoBPfdrQrdyxin78kRI8Iu/tNvuMIrka4aw=
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
Reply-To: contact@themysteryshoppersgroup.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SSB3b3VsZCBsaWtlIHRvIGludHJvZHVjZSBvdXIgY29tcGFueSBhcyBTaG9wcGVycyBCYXkgTHRk
IFdlIApjb25kdWN0IHJlc2VhcmNoIG9uIHZhcmlvdXMgYnVzaW5lc3NlcyB0byBpbXByb3ZlIGNv
bm5lY3Rpb25zIApiZXR3ZWVuIHByb2Zlc3Npb25hbCBzZXJ2aWNlIGZpcm1zIGFuZCB0aGVpciBj
bGllbnQgb3JnYW5pemF0aW9uLiAKT3VyIGNvbXBhbnkgaXMgY3VycmVudGx5IGluIHNlYXJjaCBv
ZiDigJxSRVRBSUwgRVZBTFVBVE9S4oCZUyAKU0VSVklDReKAnSBpbiB5b3VyIGFyZWEuIFRoZSBq
b2IgZW50YWlscyBzdG9yZSBldmFsdWF0aW9uIGFuZCAKY29tbWVudHMgb24gY3VzdG9tZXIgc2Vy
dmljZSBpbXBhY3QgaW4geW91ciBsb2NhbCBjb21tdW5pdGllcyBieSAKaGVscGluZyBzdG9yZXMs
IHJlc3RhdXJhbnRzLCBhbmQgYmFua3MgYmVjb21lIGJldHRlciBwbGFjZXMgZm9yIApjb25zdW1l
cnMgbGlrZSB5b3UgdG8gdmlzaXQuCgpBIG15c3Rlcnkgc2hvcHBpbmcgYXNzaWdubWVudCBpbnZv
bHZlcyBpbmRlcGVuZGVudCBjb250cmFjdG9ycyAKcG9zaW5nIGFzIOKAnHNob3BwZXJz4oCdLiBZ
b3Ugd2lsbCBiZSBwYWlkIHRvIHZpc2l0IHRoZWlyIGxvY2FsIApicmFuZHMgYXMgYSBjdXN0b21l
ciBhbmQgeW91IHdvdWxkIHJlcG9ydCBiYWNrIG9uIHZhcmlvdXMgYXNwZWN0cyAKb2YgeW91ciBl
eHBlcmllbmNlLiAgSWYgeW91ciBwZXJmb3JtYW5jZSBpcyBzYXRpc2ZpZWQgd2l0aCB0aGUgCm9y
Z2FuaXphdGlvbiwgaXQgbWVhbnMgeW91ciBwb2ludCB3aWxsIGJlIGdyYWRlZCBhbmQgc2FsYXJ5
IAppbmNyZWFzZXMgdG8gMTUgcGVyY2VudC4KClJFU1BPTlNJQklMSVRJRVM6CgoxLiBBc3NpZ25t
ZW50cyBhcmUgdG8gYmUgY29tcGxldGVkIHF1aWNrbHkgYXMgcG9zc2libGUsIGJ1dCAKZmxleGli
bGUuCjIuIFlvdSBuZWVkIHRvIGJlIGZyaWVuZGx5LCByZWxpYWJsZSwgaGF2ZSBhIGdvb2QgYXR0
aXR1ZGUsIApFZmZlY3RpdmUgdGltZSBtYW5hZ2VtZW50IHNraWxscywgYSBzZWxmLXN0YXJ0ZXIg
YW5kIHByby1hY3RpdmUuCjMuIFlvdSB3aWxsIGJlIGFibGUgdG8gbXVsdGl0YXNrIGFuZCBiZSBh
YmxlIHRvIHdvcmsgYXMgYSB0ZWFtLgoKQ09NUEVOU0FUSU9OL1NBTEFSWSBCQVNFOiBBcyBhIOKA
mFJFVEFJTCBFVkFMVUFUT1LigJlTIFNFUlZJQ0XigJksIApZb3XigJlsbCBnZXQgcGFpZCBmb3Ig
ZXZlcnkgYnVzaW5lc3MgeW91IHZpc2l0LiBFYWNoIHN1cnZleSB0YWtlcyBhIAptYXhpbXVtIG9m
IDMwLTQ1IE1pbnV0ZXMgdG8gY29tcGxldGUgYW5kIHlvdeKAmWxsIGJlIHBhaWQgwqM0MDAgR0JQ
IApmb3IgZXZlcnkgc3VydmV5IGNvbXBsZXRlZCwgTm8gU2FsZXMgSW52b2x2ZWQgYW5kIE5vIEV4
cGVyaWVuY2VkIApyZXF1aXJlZCwgSSBwcm9taXNlIHlvdSB0aGlzIHdpbGwgbm90IGluY29udmVu
aWVudCB5b3VyIHByZXNlbnQgCmpvYi4KCldlIHdpbGwgZnVybmlzaCB5b3Ugd2l0aCBhbGwgZXhw
ZW5zZXMgbmVlZGVkIHRvIGV4ZWN1dGUgeW91ciAKYXNzaWdubWVudCBhbmQgdGhlIHF1ZXN0aW9u
bmFpcmUgdG8gZmlsbCBmb3IgeW91ciByZXBvcnQuIFdlIAp1bmRlcnN0YW5kIGlmIHlvdSBhcmUg
bm90IHNlZWtpbmcgYWRkaXRpb25hbCBvcHBvcnR1bml0aWVzIGF0IAp0aGlzIHRpbWUuIFdlIGFy
ZSBhbHNvIG9wZW4gdG8gYW55IHJlZmVycmFscyB0aGF0IHlvdSBtYXkgaGF2ZS4KClRvIGVuc3Vy
ZSBwcm9wZXIgY29uc2lkZXJhdGlvbiwgcGxlYXNlIGZpbGwgaW4gdGhlIGluZm9ybWF0aW9uIApi
ZWxvdyBhcyBjb21wbGV0ZWx5IGFuZCBhY2N1cmF0ZWx5IGFzIHBvc3NpYmxlLiBDb21lIGpvaW4g
b3VyIAp0ZWFtLiBZb3XigJlyZSBnb2luZyB0byBsaWtlIGl0IGhlcmUhCgpGaXJzdCBOYW1lOgpM
YXN0IE5hbWU6CkZ1bGwgQWRkcmVzczoKTW9iaWxlIE5vOgpFbWFpbDoKQWdlOgpQcmVzZW50IE9j
Y3VwYXRpb246CgpUaGFuayB5b3UsCgpFaWxlZW4gTWNDb3kuCgpTZWNyZXQgU2hvcHBlcnMgbGxj
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
