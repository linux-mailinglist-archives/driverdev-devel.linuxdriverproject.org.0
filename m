Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 663882D96E0
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:03:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E62528753D;
	Mon, 14 Dec 2020 11:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWh97f6he4ZA; Mon, 14 Dec 2020 11:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 019A88752F;
	Mon, 14 Dec 2020 11:03:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 389CE1BF45A
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3530C871CC
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eI-LgDz0N-qD for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:02:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8EA00871C9
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:02:54 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [131.188.30.90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 5DDC5240BE4;
 Mon, 14 Dec 2020 12:02:53 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id 598443280146; Mon, 14 Dec 2020 12:02:53 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/12] media: atomisp: Fix funciton decleration
Date: Mon, 14 Dec 2020 12:01:51 +0100
Message-Id: <20201214110156.6152-8-Philipp.Gerlesberger@fau.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214110156.6152-1-Philipp.Gerlesberger@fau.de>
References: <20201214110156.6152-1-Philipp.Gerlesberger@fau.de>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, ij72uhux@stud.informatik.uni-erlangen.de,
 Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>,
 sakari.ailus@linux.intel.com, mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

V3JpdGUgcmV0dXJuX3R5cGUsIGZ1bmN0aW9uX25hbWUgYW5kIHBhcmFtZXRlcnMgaW4gb25lIGxp
bmUKYmVjYXVzZSBsaW5lcyBzaG91bGQgbm90IGVuZCB3aXRoIGEgJygnIFtPUEVOX0VOREVEX0xJ
TkVdCldyaXRlIG9wZW4gYnJhY2Ug4oCZe+KAmSBvbiB0aGUgbmV4dCBsaW5lIHRvIGZpeCBPUEVO
X0JSQUNFIEVycm9yCgpDby1kZXZlbG9wZWQtYnk6IEFuZHJleSBLaGxvcGtvdiA8aWo3MnVodXhA
c3R1ZC5pbmZvcm1hdGlrLnVuaS1lcmxhbmdlbi5kZT4KU2lnbmVkLW9mZi1ieTogQW5kcmV5IEto
bG9wa292IDxpajcydWh1eEBzdHVkLmluZm9ybWF0aWsudW5pLWVybGFuZ2VuLmRlPgpTaWduZWQt
b2ZmLWJ5OiBQaGlsaXBwIEdlcmxlc2JlcmdlciA8UGhpbGlwcC5HZXJsZXNiZXJnZXJAZmF1LmRl
PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwL3BjaS9ydW50aW1lL3RpbWVyL3Ny
Yy90aW1lci5jIHwgNSArKy0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9w
Y2kvcnVudGltZS90aW1lci9zcmMvdGltZXIuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9t
aXNwL3BjaS9ydW50aW1lL3RpbWVyL3NyYy90aW1lci5jCmluZGV4IDY3OWVmODI0MjU3NC4uMDBi
NTRhMDYxM2JiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kv
cnVudGltZS90aW1lci9zcmMvdGltZXIuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRv
bWlzcC9wY2kvcnVudGltZS90aW1lci9zcmMvdGltZXIuYwpAQCAtMTksOSArMTksOCBAQAogI2lu
Y2x1ZGUgImdwX3RpbWVyLmgiIC8qZ3BfdGltZXJfcmVhZCgpKi8KICNpbmNsdWRlICJhc3NlcnRf
c3VwcG9ydC5oIgogCi1pbnQKLWlhX2Nzc190aW1lcl9nZXRfY3VycmVudF90aWNrKAotICAgIHN0
cnVjdCBpYV9jc3NfY2xvY2tfdGljayAqY3Vycl90cykgeworaW50IGlhX2Nzc190aW1lcl9nZXRf
Y3VycmVudF90aWNrKHN0cnVjdCBpYV9jc3NfY2xvY2tfdGljayAqY3Vycl90cykKK3sKIAlhc3Nl
cnQoY3Vycl90cyk7CiAJaWYgKCFjdXJyX3RzKQogCXsKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
