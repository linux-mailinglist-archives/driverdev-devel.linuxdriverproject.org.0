Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB9A4F05AD
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Apr 2022 21:04:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D8C14056C;
	Sat,  2 Apr 2022 19:04:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zUGjaH7OF17P; Sat,  2 Apr 2022 19:04:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 447AB40121;
	Sat,  2 Apr 2022 19:04:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7FB051BF400
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 19:04:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67730417B4
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 19:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W1nM_ERp01st for <devel@linuxdriverproject.org>;
 Sat,  2 Apr 2022 19:04:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from esa-virtual.bank.forshtadt.ru (unknown [194.99.116.244])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D0DF41761
 for <devel@driverdev.osuosl.org>; Sat,  2 Apr 2022 19:04:24 +0000 (UTC)
Authentication-Results: mail-esa-2.bank.forshtadt.ru;
 dkim=none (message not signed) header.i=none;
 spf=None smtp.pra=auditor@forshtadt.ru;
 spf=None smtp.mailfrom=auditor@forshtadt.ru;
 spf=None smtp.helo=postmaster@User
Received-SPF: None (mail-esa-2.bank.forshtadt.ru: no sender
 authenticity information available from domain of
 auditor@forshtadt.ru) identity=pra; client-ip=102.39.167.6;
 receiver=mail-esa-2.bank.forshtadt.ru;
 envelope-from="auditor@forshtadt.ru";
 x-sender="auditor@forshtadt.ru"; x-conformance=sidf_compatible
Received-SPF: None (mail-esa-2.bank.forshtadt.ru: no sender
 authenticity information available from domain of
 auditor@forshtadt.ru) identity=mailfrom; client-ip=102.39.167.6;
 receiver=mail-esa-2.bank.forshtadt.ru;
 envelope-from="auditor@forshtadt.ru";
 x-sender="auditor@forshtadt.ru"; x-conformance=sidf_compatible
Received-SPF: None (mail-esa-2.bank.forshtadt.ru: no sender
 authenticity information available from domain of
 postmaster@User) identity=helo; client-ip=102.39.167.6;
 receiver=mail-esa-2.bank.forshtadt.ru;
 envelope-from="auditor@forshtadt.ru";
 x-sender="postmaster@User"; x-conformance=sidf_compatible
Message-Id: <4ee218$dd0k@mail-esa-2.bank.forshtadt.ru>
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: KWetyNkPmpyYX9V5qD+UjY3/lAonQNlh2K8A1go0HZHeRj4qrXKHS2FwHfqGuMDxYUF8SujIwx
 NgmgGDfe3Hfw==
Received: from unknown (HELO User) ([102.39.167.6])
 by mail-esa-2.bank.forshtadt.ru with ESMTP; 03 Apr 2022 00:04:08 +0500
From: "ANDY&ASSOCIATES"<auditor@forshtadt.ru>
Subject: Good Day
Date: Sat, 2 Apr 2022 12:04:22 -0700
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
Reply-To: artune4@gmail.com
Content-Type: text/plain; charset="cp1251"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29vZCBEYXksCgoKCkkgYW0gQmFycmlzdGVyIFJvYmVydCBieSBuYW1lLiBJIHdvdWxkIGxpa2Ug
dG8gaW5mb3JtIHlvdSBvZiBhIGJ1c2luZXNzL2RlYWwgd29ydGggozE1MCwwMDAsMDAwLjAwKE9u
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
