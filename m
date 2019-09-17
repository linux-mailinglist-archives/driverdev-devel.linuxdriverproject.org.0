Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBAEB540E
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 19:24:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F1DE84187;
	Tue, 17 Sep 2019 17:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2u4uX-zEZhZw; Tue, 17 Sep 2019 17:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A154F844A5;
	Tue, 17 Sep 2019 17:24:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80E6A1BF298
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 17:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B61A815E9
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 17:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3qnrfoqEPgDs for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 17:24:03 +0000 (UTC)
X-Greylist: delayed 00:05:01 by SQLgrey-1.7.6
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9EDF98610B
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 17:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201810;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MfZrMCUAMeA7TQrw3rrOPzZCfpWaDHz40znbVYjtSGc=; b=EvJiObe6F1J/NU4cwdHtBQJwsm
 tvzmF3ckxOYGz+xxC9Ww9cA012m3X9wxOJDmTpO+fHNEia9zU+Ri/A281pBzwDXPobT3IU0krwt4X
 alAZ+n/0vNuBuTXAUUjm9weACND2AVMYeUyQR6I8okjancFCIYym1nKGjY2n2JBQSd/lSJ81T+YHh
 O4yhfdtmmOiJRWAIpCY0tnYTeQzMaEy/s4sd06EBdIxbGdBMGx5AxnFFTo+yjDMdAEazFbGzrgpeC
 CW2xSkPJiA8ZYIinPttIfGvRV3KC2sPXFl5MrHdo7nkHe/3BJYT1jOf+XhKX/8wujlh8xTNVwJPhg
 DmdH4DTg==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:60392
 helo=localhost.localdomain)
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.89) (envelope-from <noralf@tronnes.org>)
 id 1iAH7z-0005yL-Lc; Tue, 17 Sep 2019 19:18:59 +0200
From: =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 1/3] staging/fbtft: Depend on OF
Date: Tue, 17 Sep 2019 19:18:41 +0200
Message-Id: <20190917171843.10334-1-noralf@tronnes.org>
X-Mailer: git-send-email 2.20.1
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
Cc: gregkh@linuxfoundation.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q29tbWl0IGM0NDBlZWUxYTdhMSAoIlN0YWdpbmc6IGZidGZ0OiBTd2l0Y2ggdG8gdGhlIGdwaW8g
ZGVzY3JpcHRvcgppbnRlcmZhY2UiKSByZW1vdmVkIHNldHRpbmcgZ3Bpb3MgdmlhIHBsYXRmb3Jt
IGRhdGEuIFRoaXMgbWVhbnMgdGhhdApmYnRmdCB3aWxsIG5vdyBvbmx5IHdvcmsgd2l0aCBEZXZp
Y2UgVHJlZSBzbyBzZXQgdGhlIGRlcGVuZGVuY3kuCgpUaGlzIGFsc28gcHJldmVudHMgYSBOVUxM
IHBvaW50ZXIgZGVyZWYgb24gbm9uLURUIHBsYXRmb3JtIGJlY2F1c2UKZmJ0ZnRvcHMucmVxdWVz
dF9ncGlvcyBpcyBub3Qgc2V0IGluIHRoYXQgY2FzZSBhbnltb3JlLgoKRml4ZXM6IGM0NDBlZWUx
YTdhMSAoIlN0YWdpbmc6IGZidGZ0OiBTd2l0Y2ggdG8gdGhlIGdwaW8gZGVzY3JpcHRvciBpbnRl
cmZhY2UiKQpDYzogc3RhYmxlIDxzdGFibGVAdmdlci5rZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5
OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KLS0tCiBkcml2ZXJzL3N0YWdp
bmcvZmJ0ZnQvS2NvbmZpZyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9mYnRmdC9LY29uZmln
IGIvZHJpdmVycy9zdGFnaW5nL2ZidGZ0L0tjb25maWcKaW5kZXggOGVjNTI0YTk1ZWM4Li40ZTVk
ODYwZmQ3ODggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9mYnRmdC9LY29uZmlnCisrKyBi
L2RyaXZlcnMvc3RhZ2luZy9mYnRmdC9LY29uZmlnCkBAIC0xLDcgKzEsNyBAQAogIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAogbWVudWNvbmZpZyBGQl9URlQKIAl0cmlzdGF0ZSAi
U3VwcG9ydCBmb3Igc21hbGwgVEZUIExDRCBkaXNwbGF5IG1vZHVsZXMiCi0JZGVwZW5kcyBvbiBG
QiAmJiBTUEkKKwlkZXBlbmRzIG9uIEZCICYmIFNQSSAmJiBPRgogCWRlcGVuZHMgb24gR1BJT0xJ
QiB8fCBDT01QSUxFX1RFU1QKIAlzZWxlY3QgRkJfU1lTX0ZJTExSRUNUCiAJc2VsZWN0IEZCX1NZ
U19DT1BZQVJFQQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
