Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0162D289D
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 11:16:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B5E48715C;
	Tue,  8 Dec 2020 10:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qPmkl2IR0KbE; Tue,  8 Dec 2020 10:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28568870FE;
	Tue,  8 Dec 2020 10:16:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DA571BF83A
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 10:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3399F203AB
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 10:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yS9YN+GbRcFn for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 10:16:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from antares.kleine-koenig.org (antares.kleine-koenig.org
 [94.130.110.236])
 by silver.osuosl.org (Postfix) with ESMTPS id A6A2C2001A
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 10:16:11 +0000 (UTC)
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 5A484A9E91B; Tue,  8 Dec 2020 11:16:09 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: greybus: Add TODO item about modernizing the pwm
 code
Date: Tue,  8 Dec 2020 11:16:07 +0100
Message-Id: <20201208101607.42785-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ZHJpdmVycy9zdGFnaW5nL2dyZXlidXMvcHdtLmMgdXNlcyB0aGUgb2xkIHN0eWxlIFBXTSBjYWxs
YmFja3MsIG5ldyBkcml2ZXJzCnNob3VsZCBzdGljayB0byB0aGUgYXRvbWljIEFQSSBpbnN0ZWFk
LgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9y
Zz4KLS0tCk9uIDEyLzgvMjAgMTA6MzkgQU0sIEpvaGFuIEhvdm9sZCB3cm90ZToKPiBObyBzaWdu
IG9mZj8KPiAKPiBQbGVhc2UgYWxzbyBhZGQgYSBzdGFnaW5nIHByZWZpeCBzaW5jZSB0aGlzIHBh
cnQgb2YgZ3JleWJ1cyBzdGlsbCBsaXZlcwo+IHRoZXJlLgoKVGhhdCBhZnRlciBhbGwgdGhlc2Ug
eWVhcnMgSSBzdGlsbCBmYWlsIG9jY2FzaW9uYWxseSB0byBhZGQgYSBzaWduLW9mZgouLi4gL21l
IHNoYWtlcyBoaXMgaGVhZCBhYm91dCBoaW1zZWxmLgoKQW55aG93LCBoZXJlIGNvbWVzIGEgdjIs
IGFsc28gd2l0aCB0aGUgcmVxdWVzdGVkIHByZWZpeC4KCgogZHJpdmVycy9zdGFnaW5nL2dyZXli
dXMvVE9ETyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvZ3JleWJ1cy9UT0RPIGIvZHJpdmVycy9zdGFnaW5nL2dyZXli
dXMvVE9ETwppbmRleCAzMWYxZjJjYjQwMWMuLjY0NjFlMDEzMmZlMyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9zdGFnaW5nL2dyZXlidXMvVE9ETworKysgYi9kcml2ZXJzL3N0YWdpbmcvZ3JleWJ1cy9U
T0RPCkBAIC0xLDMgKzEsNSBAQAogKiBDb252ZXJ0IGFsbCB1c2VzIG9mIHRoZSBvbGQgR1BJTyBB
UEkgZnJvbSA8bGludXgvZ3Bpby5oPiB0byB0aGUKICAgR1BJTyBkZXNjcmlwdG9yIEFQSSBpbiA8
bGludXgvZ3Bpby9jb25zdW1lci5oPiBhbmQgbG9vayB1cCBHUElPCiAgIGxpbmVzIGZyb20gZGV2
aWNlIHRyZWUgb3IgQUNQSS4KKyogTWFrZSBwd20uYyB1c2UgdGhlIHN0cnVjdCBwd21fb3BzOjph
cHBseSBpbnN0ZWFkIG9mIDo6Y29uZmlnLCA6OnNldF9wb2xhcml0eSwKKyAgOjplbmFibGUgYW5k
IDo6ZGlzYWJsZS4KLS0gCjIuMjkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
