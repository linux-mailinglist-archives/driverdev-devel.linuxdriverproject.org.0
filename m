Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F76C69FC8
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 02:25:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 158F6849FA;
	Tue, 16 Jul 2019 00:25:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TVj2SiRDL6M0; Tue, 16 Jul 2019 00:25:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4479F84A0B;
	Tue, 16 Jul 2019 00:25:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F5C91BF97A
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 00:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B5F486B30
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 00:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wHO7lj5abBTf for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 00:25:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from anchovy2.45ru.net.au (anchovy2.45ru.net.au [203.30.46.146])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 62E8686B2B
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 00:25:07 +0000 (UTC)
Received: (qmail 25524 invoked by uid 5089); 16 Jul 2019 00:25:04 -0000
Received: by simscan 1.2.0 ppid: 25479, pid: 25480, t: 0.0496s
 scanners: regex: 1.2.0 attach: 1.2.0 clamav: 0.88.3/m:40/d:1950
X-RBL: $rbltext
Received: from unknown (HELO preid-c7.electromag.com.au)
 (preid@electromag.com.au@203.59.235.95)
 by anchovy3.45ru.net.au with ESMTPA; 16 Jul 2019 00:25:04 -0000
Received: by preid-c7.electromag.com.au (Postfix, from userid 1000)
 id ED7D7200A3961; Tue, 16 Jul 2019 08:24:59 +0800 (AWST)
From: Phil Reid <preid@electromag.com.au>
To: gregkh@linuxfoundation.org, bhanusreemahesh@gmail.com,
 leobras.c@gmail.com, nsaenzjulienne@suse.de, nishadkamdar@gmail.com,
 preid@electromag.com.au, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH v2 2/2] Staging: fbtft: Fix reset assertion when using gpio
 descriptor
Date: Tue, 16 Jul 2019 08:24:37 +0800
Message-Id: <1563236677-5045-3-git-send-email-preid@electromag.com.au>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1563236677-5045-1-git-send-email-preid@electromag.com.au>
References: <1563236677-5045-1-git-send-email-preid@electromag.com.au>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VHlwaWNhbGx5IGdwaW9kX3NldF92YWx1ZSBjYWxscyB3b3VsZCBhc3NlcnQgdGhlIHJlc2V0IGxp
bmUgYW5kCnRoZW4gcmVsZWFzZSBpdCB1c2luZyB0aGUgc3ltYW50aWNzIG9mOgoJZ3Bpb2Rfc2V0
X3ZhbHVlKHBhci0+Z3Bpby5yZXNldCwgMCk7CgkuLi4gZGVsYXkKCWdwaW9kX3NldF92YWx1ZShw
YXItPmdwaW8ucmVzZXQsIDEpOwpBbmQgdGhlIGdwaW8gYmluZGluZyB3b3VsZCBzcGVjaWZ5IHRo
ZSBwb2xhcml0eS4KClByaW9yIHRvIGNvbnZlcnNpb24gdG8gZ3Bpb2QgY2FsbHMgdGhlIHBvbGFy
aXR5IGluIHRoZSBEVAp3YXMgaWdub3JlZCBhbmQgYXNzdW1lZCB0byBiZSBhY3RpdmUgbG93LiBG
aXggaXQgc28gdGhhdApEVCBwb2xhcml0eSBpcyByZXNwZWN0ZWQuCgpGaXhlczogYzQ0MGVlZTFh
N2ExICgiU3RhZ2luZzogZmJ0ZnQ6IFN3aXRjaCB0byB0aGUgZ3BpbyBkZXNjcmlwdG9yIGludGVy
ZmFjZSIpClJldmlld2VkLWJ5OiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxpZW5u
ZUBzdXNlLmRlPgpUZXN0ZWQtYnk6IE5pY29sYXMgU2FlbnogSnVsaWVubmUgPG5zYWVuemp1bGll
bm5lQHN1c2UuZGU+ClRlc3RlZC1ieTogSmFuIFNlYmFzdGlhbiBHw7Z0dGUgPGxpbnV4QGphc2Vn
Lm5ldD4KU2lnbmVkLW9mZi1ieTogUGhpbCBSZWlkIDxwcmVpZEBlbGVjdHJvbWFnLmNvbS5hdT4K
LS0tCiBkcml2ZXJzL3N0YWdpbmcvZmJ0ZnQvZmJ0ZnQtY29yZS5jIHwgNCArKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9mYnRmdC9mYnRmdC1jb3JlLmMgYi9kcml2ZXJzL3N0YWdpbmcvZmJ0ZnQv
ZmJ0ZnQtY29yZS5jCmluZGV4IDQ0YjgwNzQuLmJjNzUwMjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
c3RhZ2luZy9mYnRmdC9mYnRmdC1jb3JlLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2ZidGZ0L2Zi
dGZ0LWNvcmUuYwpAQCAtMjMxLDkgKzIzMSw5IEBAIHN0YXRpYyB2b2lkIGZidGZ0X3Jlc2V0KHN0
cnVjdCBmYnRmdF9wYXIgKnBhcikKIAlpZiAoIXBhci0+Z3Bpby5yZXNldCkKIAkJcmV0dXJuOwog
CWZidGZ0X3Bhcl9kYmcoREVCVUdfUkVTRVQsIHBhciwgIiVzKClcbiIsIF9fZnVuY19fKTsKLQln
cGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGFyLT5ncGlvLnJlc2V0LCAwKTsKLQl1c2xlZXBfcmFu
Z2UoMjAsIDQwKTsKIAlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGFyLT5ncGlvLnJlc2V0LCAx
KTsKKwl1c2xlZXBfcmFuZ2UoMjAsIDQwKTsKKwlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGFy
LT5ncGlvLnJlc2V0LCAwKTsKIAltc2xlZXAoMTIwKTsKIH0KIAotLSAKMS44LjMuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
