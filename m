Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77871239CD8
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 00:36:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24BA687924;
	Sun,  2 Aug 2020 22:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fnnAJQvkY1OQ; Sun,  2 Aug 2020 22:36:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7291486D5A;
	Sun,  2 Aug 2020 22:36:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6ED8C1BF385
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 22:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6637885B09
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 22:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e0BCv0767eny for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 22:36:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
 [185.70.40.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9774F85168
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 22:36:34 +0000 (UTC)
Date: Sun, 02 Aug 2020 22:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1596407792;
 bh=uqkGqPHbw5SoGB+pvlSksm3A26SLfe0aDo1kq7+qs7U=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=vnv9ed0OT286DLgLvXEI6uD8tCjYwmwpRZDJ8xHNqfnzZN5AmxFpbXPHFOMfqd02b
 fN4abzMew2dkyhvw/0yzvy3QRF5nl9vK2btPCPrnTjEsaoPOmEYf2g68bHUDY9Dt/E
 E8817ZLizl/kV2WJAVTqp7Skfbiq8TzbMH5jgDH4=
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christian Gromm <christian.gromm@microchip.com>,
 Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>
From: =?utf-8?Q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@protonmail.com>
Subject: [PATCH] staging: most: dim2: Add missing identifier name to function
 argument
Message-ID: <20200802223615.924307-1-nfraprado@protonmail.com>
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
Reply-To: =?utf-8?Q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?=
 <nfraprado@protonmail.com>
Cc: devel@driverdev.osuosl.org, lkcamp@lists.libreplanetbr.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QSBmdW5jdGlvbiBkZWZpbml0aW9uIGFyZ3VtZW50IHNob3VsZCBoYXZlIGFuIGlkZW50aWZpZXIg
bmFtZSBhY2NvcmRpbmcKdG8gY2hlY2twYXRjaDoKCldBUk5JTkc6IGZ1bmN0aW9uIGRlZmluaXRp
b24gYXJndW1lbnQgJ3N0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKicgc2hvdWxkCmFsc28gaGF2ZSBh
biBpZGVudGlmaWVyIG5hbWUKCk5hbWUgaXQgcGRldiBhcyB0aGF0IG5hbWUgaXMgYWxyZWFkeSB1
c2VkIHRocm91Z2hvdXQgdGhlIGNvZGUuCgpTaWduZWQtb2ZmLWJ5OiBOw61jb2xhcyBGLiBSLiBB
LiBQcmFkbyA8bmZyYXByYWRvQHByb3Rvbm1haWwuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9t
b3N0L2RpbTIvZGltMi5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21vc3QvZGlt
Mi9kaW0yLmMgYi9kcml2ZXJzL3N0YWdpbmcvbW9zdC9kaW0yL2RpbTIuYwppbmRleCA1MDljODAx
MmQyMGIuLmIzNGUzYzEzMGY1MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL21vc3QvZGlt
Mi9kaW0yLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL21vc3QvZGltMi9kaW0yLmMKQEAgLTEwMCwx
MiArMTAwLDEyIEBAIHN0cnVjdCBkaW0yX2hkbSB7CiAJc3RydWN0IG1lZGlhbGJfYnVzIGJ1czsK
IAl2b2lkICgqb25fbmV0aW5mbykoc3RydWN0IG1vc3RfaW50ZXJmYWNlICptb3N0X2lmYWNlLAog
CQkJICAgdW5zaWduZWQgY2hhciBsaW5rX3N0YXRlLCB1bnNpZ25lZCBjaGFyICphZGRycyk7Ci0J
dm9pZCAoKmRpc2FibGVfcGxhdGZvcm0pKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKik7CisJdm9p
ZCAoKmRpc2FibGVfcGxhdGZvcm0pKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpOwogfTsK
IAogc3RydWN0IGRpbTJfcGxhdGZvcm1fZGF0YSB7Ci0JaW50ICgqZW5hYmxlKShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICopOwotCXZvaWQgKCpkaXNhYmxlKShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICopOworCWludCAoKmVuYWJsZSkoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldik7CisJdm9p
ZCAoKmRpc2FibGUpKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpOwogfTsKIAogI2RlZmlu
ZSBpZmFjZV90b19oZG0oaWZhY2UpIGNvbnRhaW5lcl9vZihpZmFjZSwgc3RydWN0IGRpbTJfaGRt
LCBtb3N0X2lmYWNlKQotLSAKMi4yOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
