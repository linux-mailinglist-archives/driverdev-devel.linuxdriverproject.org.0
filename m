Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0D732CA3F
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Mar 2021 03:02:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 730B96F5A7;
	Thu,  4 Mar 2021 02:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A9h2zYcGi0cJ; Thu,  4 Mar 2021 02:02:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9056C60707;
	Thu,  4 Mar 2021 02:02:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 501CD1BF57B
 for <devel@linuxdriverproject.org>; Thu,  4 Mar 2021 02:02:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B71C8434E
 for <devel@linuxdriverproject.org>; Thu,  4 Mar 2021 02:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4TsfvqcV6j_4 for <devel@linuxdriverproject.org>;
 Thu,  4 Mar 2021 02:02:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 738C484347
 for <devel@driverdev.osuosl.org>; Thu,  4 Mar 2021 02:02:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D3FF765036;
 Thu,  4 Mar 2021 02:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614823351;
 bh=O2GnyG4QH/iY6ZijLJqcuRB4+Yf0aV3BW9XeaC5jkMY=;
 h=Date:From:To:Cc:Subject:From;
 b=Fm/+7EHKM2w+ZsMWRXsW5W1VgPmG46KfC+76ILL/06OOnYpvlIO0AV34cD9I2KQfb
 l4k3CG4in02Y7ujz8DHSpXyuW1l3JQUp25RQN4JLDtss+lvqM2L/+Dq0w/hqJylfSx
 GdlLz1XpOoRH1bphLjhwVZsTP9j7RLCZydzyxAzc/5eAU3iNRgi9rfp3papE0fqZyF
 xGlewg/n9O2BbajnDNy0Q9TxNneeZwkDc1lqRR5RPVs6BToHgmYcNCznw5IJeR+SIN
 FkWoZCSQcOQM1irwo0YymqeXs2E2X+wcxxzG/j9IrDJ4wSTXap+86EdekKDECDPMG+
 Gz2sFIKEmVCaA==
Date: Wed, 3 Mar 2021 20:02:28 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH][next] staging: rtl8188eu: Replace one-element array with
 flexible-array in struct ndis_802_11_var_ie
Message-ID: <20210304020228.GA45139@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlcmUgaXMgYSByZWd1bGFyIG5lZWQgaW4gdGhlIGtlcm5lbCB0byBwcm92aWRlIGEgd2F5IHRv
IGRlY2xhcmUgaGF2aW5nCmEgZHluYW1pY2FsbHkgc2l6ZWQgc2V0IG9mIHRyYWlsaW5nIGVsZW1l
bnRzIGluIGEgc3RydWN0dXJlLiBLZXJuZWwgY29kZQpzaG91bGQgYWx3YXlzIHVzZSDigJxmbGV4
aWJsZSBhcnJheSBtZW1iZXJz4oCdWzFdIGZvciB0aGVzZSBjYXNlcy4gVGhlIG9sZGVyCnN0eWxl
IG9mIG9uZS1lbGVtZW50IG9yIHplcm8tbGVuZ3RoIGFycmF5cyBzaG91bGQgbm8gbG9uZ2VyIGJl
IHVzZWRbMl0uCgpVc2UgZmxleGlibGUtYXJyYXkgbWVtYmVyIGluIHN0cnVjdCBuZGlzXzgwMl8x
MV92YXJfaWUsIGluc3RlYWQgb2YKb25lLWVsZW1lbnQgYXJyYXkuCgpBbHNvLCB0aGlzIGhlbHBz
IHdpdGggdGhlIG9uZ29pbmcgZWZmb3J0cyB0byBlbmFibGUgLVdhcnJheS1ib3VuZHMgYnkKZml4
aW5nIHRoZSBmb2xsb3dpbmcgd2FybmluZzoKCmRyaXZlcnMvc3RhZ2luZy9ydGw4MTg4ZXUvY29y
ZS9ydHdfd2xhbl91dGlsLmM6IEluIGZ1bmN0aW9uIOKAmEhUX2NhcHNfaGFuZGxlcuKAmToKZHJp
dmVycy9zdGFnaW5nL3J0bDgxODhldS9jb3JlL3J0d193bGFuX3V0aWwuYzo2NjU6NjU6IHdhcm5p
bmc6IGFycmF5IHN1YnNjcmlwdCAyIGlzIGFib3ZlIGFycmF5IGJvdW5kcyBvZiDigJh1OFsxXeKA
mSB7YWthIOKAmHVuc2lnbmVkIGNoYXJbMV3igJl9IFstV2FycmF5LWJvdW5kc10KICA2NjUgfCAg
ICBpZiAoKHBtbG1laW5mby0+SFRfY2Fwcy5hbXBkdV9wYXJhbXNfaW5mbyAmIDB4MykgPiAocElF
LT5kYXRhW2ldICYgMHgzKSkKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfn5+fn5+fn5+Xn5+CgpbMV0gaHR0cHM6Ly9lbi53aWtp
cGVkaWEub3JnL3dpa2kvRmxleGlibGVfYXJyYXlfbWVtYmVyClsyXSBodHRwczovL3d3dy5rZXJu
ZWwub3JnL2RvYy9odG1sL3Y1LjkvcHJvY2Vzcy9kZXByZWNhdGVkLmh0bWwjemVyby1sZW5ndGgt
YW5kLW9uZS1lbGVtZW50LWFycmF5cwoKTGluazogaHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGlu
dXgvaXNzdWVzLzc5Ckxpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy8x
MDkKU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwu
b3JnPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTg4ZXUvaW5jbHVkZS93bGFuX2Jzc2RlZi5o
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9pbmNsdWRlL3dsYW5fYnNzZGVm
LmggYi9kcml2ZXJzL3N0YWdpbmcvcnRsODE4OGV1L2luY2x1ZGUvd2xhbl9ic3NkZWYuaAppbmRl
eCAyYzE4NGNlODc0NmIuLjM1MGJiZjkwNTdiOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5n
L3J0bDgxODhldS9pbmNsdWRlL3dsYW5fYnNzZGVmLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0
bDgxODhldS9pbmNsdWRlL3dsYW5fYnNzZGVmLmgKQEAgLTY0LDcgKzY0LDcgQEAgc3RydWN0IG5k
aXNfODAyXzExX2ZpeGVkX2llIHsKIHN0cnVjdCBuZGlzXzgwMl8xMV92YXJfaWUgewogCXU4ICBF
bGVtZW50SUQ7CiAJdTggIExlbmd0aDsKLQl1OCAgZGF0YVsxXTsKKwl1OCAgZGF0YVtdOwogfTsK
IAogLyoKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
