Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE33953269D
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 May 2022 11:39:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D97BA419F1;
	Tue, 24 May 2022 09:39:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Se-2hCAP7wM3; Tue, 24 May 2022 09:39:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5ACF6419EF;
	Tue, 24 May 2022 09:39:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2467F1BF28B
 for <devel@linuxdriverproject.org>; Tue, 24 May 2022 09:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1360882ADD
 for <devel@linuxdriverproject.org>; Tue, 24 May 2022 09:39:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=box.indicandustries.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NhvJ38URrSH5 for <devel@linuxdriverproject.org>;
 Tue, 24 May 2022 09:39:11 +0000 (UTC)
X-Greylist: delayed 00:14:13 by SQLgrey-1.8.0
Received: from box.indicandustries.com (hwsrv-970840.hostwindsdns.com
 [IPv6:2607:5501:3000:21a5::2])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9BDCA825CA
 for <devel@linuxdriverproject.org>; Tue, 24 May 2022 09:39:11 +0000 (UTC)
Received: from authenticated-user (box.indicandustries.com [104.168.149.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by box.indicandustries.com (Postfix) with ESMTPSA id 255C8107FD9
 for <devel@linuxdriverproject.org>; Tue, 24 May 2022 03:24:18 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=box.indicandustries.com; s=mail; t=1653384259;
 bh=V6VCn7WEbqHjVVQ20/+SYu6rwS1WmTHcxX88g+j430s=;
 h=Reply-To:From:To:Subject:Date:From;
 b=EjFfk+UgG5vlipH6+HYyKB38h3JbvuoMlRVddagOTQJXK97fQ1IXHOJjdE9j48XPe
 X+NtbWW6GSkNqf8ROq7yiNm+a884N8UIbMvkFuklZIGHMVMCCyKhuVV+Eo4BsJ5gcL
 O12luHcPyUdFROiBCU0DsDV0zEBBQoyh8zwkzxNpmPYkX7VSbMuJW3gz1XVDYsZP4F
 usVoDu12tFTGH31Ho0b3GrC6Ej6TP9MT4VhuiYo1/eufBT4YvVK8RHcGxDTKUVKOmb
 KDhTcYRLNXGB5VcF1YTgQP9Uf2hK0IwAvHgXr3doUSG8lRGE87U4RlJ0Ie/8A73lYL
 UtDfGHFXWy+cA==
From: amjad.ali@box.indicandustries.com
To: devel@linuxdriverproject.org
Subject: Hello Sir, I seek your urgent consideration.
Date: 24 May 2022 11:24:18 +0200
Message-ID: <20220524112418.6704386E359CC330@box.indicandustries.com>
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
Reply-To: amjalia90@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8sCgpHcmVldGluZ3M/IEkgYW0gQW1qYWQuIEkgd29yayB3aXRoIGEgbGVhZGluZyBCaW8g
RmlybS4gIER1ZSB0byAKdGhlIHNldGJhY2tzIG9mIHRoZSBwYW5kZW1pYywgbXkgY29tcGFueSBo
YXMgb3BlbmVkIGEgYmlkIGluIApzZWFyY2ggb2YgbmV3IHN1cHBsaWVycyBmb3IgYmFzaWMgcmF3
IG1hdGVyaWFscyBuZWVkZWQgaW4gCnByb2R1Y3Rpb24uCgpJIGFtIHNlZWtpbmcgYSByZXByZXNl
bnRhdGl2ZcKgYXMgSSBhbSBhIHN0YWZmLCBJIGNhbiBub3QgYmUgCmludm9sdmVkIGRpcmVjdGx5
LiBJdCBtYXkgbm90IGJlIHlvdXIgYXJlYSBvZiB3b3JrIGJ1dCB0aGUgCnByb2ZpdHMgYXJlIGdy
ZWF0IGFuZCBJIHdpbGwgZ3VpZGUgeW91IHRocm91Z2guIEkgaGF2ZSBhbHJlYWR5IApzb3VyY2Vk
IGEgbG9jYWwgc3VwcGxpZXIgZm9yIHRoaXMuIEkgb25seSBuZWVkIGEgcmVsaWFibGUgCnJlcHJl
c2VudGF0aXZlLgoKUGxlYXNlIGdldCBiYWNrIHRvIG1lIHNvIEkgY2FuIGV4cGxhaW4gdGhpcyBp
biBmdWxsLgoKQW1qYWQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
