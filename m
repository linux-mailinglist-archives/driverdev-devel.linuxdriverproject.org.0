Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0D3155A93
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 16:21:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09E1F86D9A;
	Fri,  7 Feb 2020 15:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t2j2CBSFbKG0; Fri,  7 Feb 2020 15:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCBB786A3C;
	Fri,  7 Feb 2020 15:21:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C42441BF35C
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 15:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE1C686C53
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 15:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 93iHubE1II3r for <devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 15:21:18 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.7.6
Received: from smtp83.iad3b.emailsrvr.com (smtp83.iad3b.emailsrvr.com
 [146.20.161.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9741F86A3C
 for <devel@driverdev.osuosl.org>; Fri,  7 Feb 2020 15:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1581088457;
 bh=A1AEgYw7yupH4As3fao1xUuQYWaJHtzKk2hwTe354QM=;
 h=From:To:Subject:Date:From;
 b=erpPuZ7a6Q1NaaEXk26mzIhbqOnO5gO892be5Hd6nxiwWZ0z1RztwkxiY5QEclC3h
 w1oAGTpEydLKsRUAcKTVOaw42YskjHhQonhtVmtaRlSUhfbO2ZfaVgPyJsyZdCN3uy
 eElWn2AMK5N7TGq7EhFAuxD0qPdfVhtUsMsjfB7k=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp3.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id BC6E340073; 
 Fri,  7 Feb 2020 10:14:16 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from ian-deb.inside.mev.co.uk (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Fri, 07 Feb 2020 10:14:17 -0500
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 4/4] staging: comedi: ni_pcimio: add routes for NI PCIe-6251
 and PCIe-6259
Date: Fri,  7 Feb 2020 15:14:00 +0000
Message-Id: <20200207151400.272678-5-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200207151400.272678-1-abbotti@mev.co.uk>
References: <20200207151400.272678-1-abbotti@mev.co.uk>
MIME-Version: 1.0
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>, =?UTF-8?q?=C3=89ric=20Piel?= <piel@delmic.com>,
 "Spencer E . Olson" <olsonse@umich.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

V2UgZG8gbm90IGN1cnJlbnRseSBwcm92aWRlIHJvdXRpbmcgaW5mb3JtYXRpb24gZm9yIE5JIFBD
SWUtNjI1MSBhbmQKUENJLTYyNTkgYm9hcmRzLCBidXQgdGhleSBhcmUgZnVuY3Rpb25hbGx5IGlk
ZW50aWNhbCB0byB0aGUgUENJLTYyNTEgYW5kClBDSS02MjU5IGJvYXJkcyBhbmQgY2FuIHNoYXJl
IHRoZWlyIHJvdXRpbmcgaW5mb3JtYXRpb24uICAoVGhpcyBoYXMgYmVlbgpjb25maXJtZWQgZm9y
IHRoZSBQQ0llLTYyNTEgYnkgw4lyaWMgUGllbCwgdXNpbmcgdGhlICJOSSBNQVgiIHNvZnR3YXJl
CmZvciBXaW5kb3dzLiAgSXQgaXMgaG9wZWQgdGhhdCBpdCBhcHBsaWVzIHRvIFBDSWUtNjI1OSwg
YnV0IGhhcyBub3QgeWV0CmJlZW4gY2hlY2tlZCBkdWUgdG8gbGFjayBvZiBoYXJkd2FyZS4pICBJ
bml0aWFsaXplIHRoZSBgYWx0X3JvdXRlX25hbWVgCm1lbWJlciBvZiB0aGUgYm9hcmQgaW5mb3Jt
YXRpb24gZm9yIFBDSWUtNjI1MSBhbmQgUENJZS02MjU5IHRvIGFsbG93CnRoZW0gdG8gbWFrZSB1
c2Ugb2YgdGhlIHJvdXRpbmcgaW5mb3JtYXRpb24gcHJvdmlkZWQgZm9yIFBDSS02MjUxIGFuZApQ
Q0ktNjI1OSByZXNwZWN0aXZlbHkuCgpDYzogw4lyaWMgUGllbCA8cGllbEBkZWxtaWMuY29tPgpD
YzogU3BlbmNlciBFLiBPbHNvbiA8b2xzb25zZUB1bWljaC5lZHU+ClNpZ25lZC1vZmYtYnk6IElh
biBBYmJvdHQgPGFiYm90dGlAbWV2LmNvLnVrPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9jb21lZGkv
ZHJpdmVycy9uaV9wY2ltaW8uYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvbmlfcGNpbWlv
LmMgYi9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvbmlfcGNpbWlvLmMKaW5kZXggMTRi
MjZmZmZlMDQ5Li43YzgyZDVmOTc3OGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9jb21l
ZGkvZHJpdmVycy9uaV9wY2ltaW8uYworKysgYi9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZl
cnMvbmlfcGNpbWlvLmMKQEAgLTg4OCw2ICs4ODgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG5p
X2JvYXJkX3N0cnVjdCBuaV9ib2FyZHNbXSA9IHsKIAl9LAogCVtCT0FSRF9QQ0lFNjI1MV0gPSB7
CiAJCS5uYW1lCQk9ICJwY2llLTYyNTEiLAorCQkuYWx0X3JvdXRlX25hbWUJPSAicGNpLTYyNTEi
LAogCQkubl9hZGNoYW4JPSAxNiwKIAkJLmFpX21heGRhdGEJPSAweGZmZmYsCiAJCS5haV9maWZv
X2RlcHRoCT0gNDA5NSwKQEAgLTk3Niw2ICs5NzcsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG5p
X2JvYXJkX3N0cnVjdCBuaV9ib2FyZHNbXSA9IHsKIAl9LAogCVtCT0FSRF9QQ0lFNjI1OV0gPSB7
CiAJCS5uYW1lCQk9ICJwY2llLTYyNTkiLAorCQkuYWx0X3JvdXRlX25hbWUJPSAicGNpLTYyNTki
LAogCQkubl9hZGNoYW4JPSAzMiwKIAkJLmFpX21heGRhdGEJPSAweGZmZmYsCiAJCS5haV9maWZv
X2RlcHRoCT0gNDA5NSwKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
