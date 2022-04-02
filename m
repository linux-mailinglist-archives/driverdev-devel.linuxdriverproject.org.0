Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2098D4F02CB
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Apr 2022 15:44:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FE294154D;
	Sat,  2 Apr 2022 13:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O5dlPM7wCqQ6; Sat,  2 Apr 2022 13:43:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D90DF41511;
	Sat,  2 Apr 2022 13:43:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B1CE1BF409
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 13:43:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43E286060A
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 13:43:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2MshbdKfzGIy for <devel@linuxdriverproject.org>;
 Sat,  2 Apr 2022 13:43:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from esa-virtual.bank.forshtadt.ru (unknown [194.99.116.244])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AA49605E0
 for <devel@driverdev.osuosl.org>; Sat,  2 Apr 2022 13:43:53 +0000 (UTC)
Authentication-Results: mail-esa-2.bank.forshtadt.ru;
 dkim=none (message not signed) header.i=none;
 spf=None smtp.pra=auditor@forshtadt.ru;
 spf=None smtp.mailfrom=auditor@forshtadt.ru;
 spf=None smtp.helo=postmaster@User
Received-SPF: None (mail-esa-2.bank.forshtadt.ru: no sender
 authenticity information available from domain of
 auditor@forshtadt.ru) identity=pra; client-ip=102.182.232.26;
 receiver=mail-esa-2.bank.forshtadt.ru;
 envelope-from="auditor@forshtadt.ru";
 x-sender="auditor@forshtadt.ru"; x-conformance=sidf_compatible
Received-SPF: None (mail-esa-2.bank.forshtadt.ru: no sender
 authenticity information available from domain of
 auditor@forshtadt.ru) identity=mailfrom;
 client-ip=102.182.232.26; receiver=mail-esa-2.bank.forshtadt.ru;
 envelope-from="auditor@forshtadt.ru";
 x-sender="auditor@forshtadt.ru"; x-conformance=sidf_compatible
Received-SPF: None (mail-esa-2.bank.forshtadt.ru: no sender
 authenticity information available from domain of
 postmaster@User) identity=helo; client-ip=102.182.232.26;
 receiver=mail-esa-2.bank.forshtadt.ru;
 envelope-from="auditor@forshtadt.ru";
 x-sender="postmaster@User"; x-conformance=sidf_compatible
Message-Id: <4ee218$dc97@mail-esa-2.bank.forshtadt.ru>
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: rB6N/CX1LmPT1zStLPGBu2Xrl1mUzQ4tXtE0yFiLNUmPTvJWKXM7QWEmt6wAoX1hQczjm9qbt8
 gkXFMtbbiAqg==
Received: from 102-182-232-26.ip.afrihost.joburg (HELO User) ([102.182.232.26])
 by mail-esa-2.bank.forshtadt.ru with ESMTP; 02 Apr 2022 18:43:38 +0500
From: "Barrister Andrew"<auditor@forshtadt.ru>
Subject: Good Day,
Date: Sat, 2 Apr 2022 06:43:50 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
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
Reply-To: jc495240@gmail.com
Content-Type: text/plain; charset="cp1251"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29vZCBEYXksCgoKCkkgYW0gQmFycmlzdGVyIFJvYmVydCBieSBuYW1lLiBJIHdvdWxkIGxpa2Ug
dG8gaW5mb3JtIHlvdSBvZiBhIGJ1c2luZXNzL2RlYWwgd29ydGggPzE1MCwwMDAsMDAwLjAwKE9u
ZSBIdW5kcmVkIGFuZCBGaWZ0eSBNaWxsaW9uIFBvdW5kcyBTdGVybGluZykgLCB3aGljaCBpcyBl
cXVpdmFsZW50cyB0byBhYm91dCAkMjAyLDAwMCwwMDAgKFR3byBodW5kcmVkIGFuZCB0d28gbWls
bGlvbiB1bml0ZWQgc3RhdGVzIGRvbGxhcnMpIHdoaWNoIHdhcyBsZWZ0IGluIGFuIGFjY291bnQg
YnkgbXkgbGF0ZSBjbGllbnQuIEkgd291bGQgd2FudCB5b3UgdG8gYmUgdGhlIGJlbmVmaWNpYXJ5
IG9mIHRoZSBmdW5kcyBzbyB0aGF0IHdlIGNhbiBib3RoIHNoYXJlIHRoZSBmdW5kcyBFcXVhbGx5
LCBpdJJzIHVuZm9ydHVuYXRlIHRoYXQgSSBjYW5ub3QgY2xhaW0gdGhlc2UgZnVuZHMgbXlzZWxm
IHdpdGhvdXQgYSBuZXV0cmFsIHBlcnNvbiwgYmVjYXVzZSBpdCB3aWxsIGxvb2sgc3VzcGljaW91
cyBmb3IgbWUgdG8gY2xhaW0gdGhlIGZ1bmRzIGFzIHRoZSBsYXd5ZXIgb2YgdGhlIGRlY2Vhc2Vk
LCBzbyBmb3IgdGhpcyByZWFzb24gSSBuZWVkIGEgc2luY2VyZSBwZXJzb24gdGhhdCBJIGNhbiBw
cmVzZW50IHRvIHRoZSBiYW5rIGFzIHRoZSBiZW5lZmljaWFyeSBvZiB0aGUgZnVuZHMsIGJlY2F1
c2Ugd2hhdGV2ZXIgSSB0ZWxsIHRoZSBiYW5rIGlzIHdoYXQgdGhleSB3aWxsIGJlbGlldmUuIFRy
dXN0IG1lLCBhcyBJIHdpbGwgbWFrZSB0aGlzIGxlZ2FsLCBzbyB5b3UgZG8gbm90IG5lZWQgdG8g
ZW50ZXJ0YWluIGFueSBmZWFyIG9yIHBhbmljIGZvciBhbnkgcmVhc29uLgoKCgoKClRoaXMgaXMg
YW4gb3Bwb3J0dW5pdHkgZm9yIHVzIHRvIGJlY29tZSByaWNoOyBJIGhhdmUgYWxsIHByb29mIHRv
IHNob3cgeW91IGV2ZXJ5dGhpbmcgYmVmb3JlIHdlIHByb2NlZWQgYWZ0ZXIgeW91IGNvbmZpcm0g
eW91ciByZWFkaW5lc3MuCgoKCgoKSSB3aWxsIHRlbGwgeW91IG1vcmUgb25jZSB5b3UgZ2V0IGJh
Y2sgdG8gbWUgYnkgY29uZmlybWluZyB5b3VyIHJlYWRpbmVzcyB0byBwcm9jZWVkIHdpdGggbWUg
b24gdGhpcyBkZWFsIGJ1dCBJIHdpbGwgcHJvdGVjdCBteSBwZXJzb25hbGl0eSBmb3Igbm93LgoK
LgoKCgpSb2JlcnQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
