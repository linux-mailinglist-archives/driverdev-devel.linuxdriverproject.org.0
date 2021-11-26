Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9536445E99F
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Nov 2021 09:50:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CAAD82881;
	Fri, 26 Nov 2021 08:50:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uhidsfh9PX7I; Fri, 26 Nov 2021 08:50:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4741824E2;
	Fri, 26 Nov 2021 08:50:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DDF51BF371
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 08:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A6644040F
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 08:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=cowhole.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YTfwBXe1u9vO for <devel@linuxdriverproject.org>;
 Fri, 26 Nov 2021 08:50:39 +0000 (UTC)
X-Greylist: delayed 00:09:12 by SQLgrey-1.8.0
Received: from mail.cowhole.com (mail.cowhole.com [5.249.149.138])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21608403CA
 for <devel@driverdev.osuosl.org>; Fri, 26 Nov 2021 08:50:38 +0000 (UTC)
Received: by mail.cowhole.com (Postfix, from userid 1001)
 id 8A408A1E1F; Fri, 26 Nov 2021 08:41:18 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cowhole.com; s=mail;
 t=1637916084; bh=WKy+hXvw3C4jr+pWHEGSigY0wiFm54qzNbDutWdLSec=;
 h=Date:From:To:Subject:From;
 b=v/OaWPt0nlN4XYrWKJAVxGlBfmBIXWs+oRRtWJ5NLVJQbbVjPy2pOcTnrKBBM8vjw
 yY4hyE2iVXGxDziJ98MN64uFgBRjqTcogzrVownHGYusIqzVmgUr6u/V41PNMqAcex
 6+H8I5K/3DvJJziRoE2HzvFE5wwKVwJNVUMuVtexvtSRhu7zNtqcPxJYRmQRME7hXp
 T0xBfpiyMdXNIZjezsb/y3NZ+5kNZgxvGHX9/nEGOcWDVuD92itPTbSUzxLrpr8mR7
 508ctgNJ6JN33irFTWPm4aDsUvkybwf2ym+d+3F5Ax22H5F02uxV/AQjEbrwENu5fP
 DhVwevl3xe/xQ==
Received: by mail.cowhole.com for <devel@driverdev.osuosl.org>;
 Fri, 26 Nov 2021 08:41:16 GMT
Message-ID: <20211126074500-0.1.1t.g19p.0.7g50si0qi5@cowhole.com>
Date: Fri, 26 Nov 2021 08:41:16 GMT
From: "Aiden Brown" <aiden.brown@cowhole.com>
To: <devel@driverdev.osuosl.org>
Subject: Campaign success
X-Mailer: mail.cowhole.com
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

SGVsbG8sCgpEbyB5b3Ugc2VsbCB5b3VyIHByb2R1Y3RzIGRpcmVjdGx5IHRvIGNvbnN1bWVycyB0
aHJvdWdoIGFuIEUtQ29tbWVyY2UgY2hhbm5lbD8KCklmIHllcywgdGhlbiBJIHdvdWxkIGxpa2Ug
dG8gcHJlc2VudCB0aGUgcG9zc2liaWxpdGllcyBhbmQgc29tZSBleGFtcGxlcyBvZiB0aGUgb3Bw
b3J0dW5pdGllcyB0byBpbmNyZWFzZSB5b3VyIHJlc3VsdHMgZnJvbSB0aGlzIGNoYW5uZWwuCgpX
ZSBoYXZlIHJlY2VudGx5IGJlZW4gY29udGFjdGVkIGJ5IGEgY29tcGFueSBzZWVraW5nIHRvIHNp
Z25pZmljYW50bHkgaW1wcm92ZSBpdHMgcGVyZm9ybWFuY2UgYWNyb3NzIGFsbCBjaGFubmVscyBp
biByZWFjaGluZyBpdHMgY3VzdG9tZXJzLiBUaGUgYWltIHdhcyB0byBhY2hpZXZlIHN0YWJsZSwg
c2NhbGFibGUgcmVzdWx0cyBhcyB3ZWxsIGFzIHRvIGV4cGFuZCBpbnRvIGludGVybmF0aW9uYWwg
bWFya2V0cy4KCldlIHNpbXBsaWZpZWQgdGhlIGNvbXBhbnnigJlzIHN0cnVjdHVyZSwgaW1wcm92
ZWQgdGhlIGRpdmVyc2l0eSBvZiBhZHZlcnRpc2luZyBhbmQgY29tbXVuaWNhdGlvbiwgYW5kIGJ1
aWx0IGEgY3VzdG9tIHByb2R1Y3QgY2F0YWxvZ3VlLiAKClRoZSBzb2x1dGlvbnMgd2UgaW1wbGVt
ZW50ZWQgcmVzdWx0ZWQgaW4gYSBiZXR0ZXIgQ1BDIHNjb3JlLCBpbmNyZWFzZWQgQ1RSIGFuZCBy
YWlzZWQgc2FsZXMgY29udmVyc2lvbnMuIE91ciBjb21wcmVoZW5zaXZlIG9wZXJhdGlvbnMgc2ln
bmlmaWNhbnRseSBpbmNyZWFzZWQgUk9JIGFuZCByZXZlbnVlIGJ5IHVwIHRvCjk1JS4KCkl0IGlz
IHdvcnRoIGRpc2N1c3NpbmcgaG93IHlvdXIgY29tcGFueSBvcGVyYXRlcyBhbmQgd2hhdCB3ZSBj
YW4gb2ZmZXIuIElmIHlvdSBhcmUgaW50ZXJlc3RlZCBpbiBhIHNob3J0IGNvbnZlcnNhdGlvbiwg
bGV0IHVzIGtub3cuIE91ciBFbmdsaXNoLXNwZWFraW5nIHJlcHJlc2VudGF0aXZlIGNhbiBjb250
YWN0IHlvdSBpbW1lZGlhdGVseS4KCgpCZXN0IHJlZ2FyZHMKQWlkZW4gQnJvd24KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
