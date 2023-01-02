Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 897EE65AE95
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Jan 2023 10:16:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7A4080BC3;
	Mon,  2 Jan 2023 09:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7A4080BC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRcRX5XPuZrB; Mon,  2 Jan 2023 09:16:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85F0D80B29;
	Mon,  2 Jan 2023 09:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85F0D80B29
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA6FA1BF3D4
 for <devel@linuxdriverproject.org>; Mon,  2 Jan 2023 09:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5F1F404B4
 for <devel@linuxdriverproject.org>; Mon,  2 Jan 2023 09:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5F1F404B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YHkBHiVb6JYu for <devel@linuxdriverproject.org>;
 Mon,  2 Jan 2023 09:16:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C5B640142
Received: from mail.buntait.pl (mail.buntait.pl [89.40.118.208])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C5B640142
 for <devel@driverdev.osuosl.org>; Mon,  2 Jan 2023 09:16:31 +0000 (UTC)
Received: by mail.buntait.pl (Postfix, from userid 1001)
 id 731DC831C0; Mon,  2 Jan 2023 09:16:17 +0000 (GMT)
Received: by mail.buntait.pl for <devel@driverdev.osuosl.org>;
 Mon,  2 Jan 2023 09:15:56 GMT
Message-ID: <20230102074501-0.1.10.2s9b.0.hblksgeaf3@buntait.pl>
Date: Mon,  2 Jan 2023 09:15:56 GMT
From: =?UTF-8?Q?"Pawe=C5=82_Kamieniecki"?= <pawel.kamieniecki@buntait.pl>
To: <devel@driverdev.osuosl.org>
Subject: Prezentacja
X-Mailer: mail.buntait.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=buntait.pl; s=mail; 
 t=1672650989; bh=cNbZL9WXZbgcQtzgDCharPn7EQBjUHnC1FAZ/+OQVjk=;
 h=Date:From:To:Subject:From;
 b=Ngfh2MVDHM0a8UiApkhuVZiufivc5ZtIKKgHTfrKVj47Nck+E25WE2StEJRs+Q1y+
 ggjBGSwiVHKvDEM2GFbJWT72UDxwefGYTvwXfNQpAgFZ7QbrKhri82C1/BM46dev+Q
 aCUOIOFs3TcXiUsRwlF5lmtyCMj4Iy+sTeIYA6gC/FqK4JxqhFtVio8vzGGrZMotjS
 Kpf4rZ1vcszM4AQ2YSfA1idKVlDku2XLG3DfB/AZBpWcvDU90151eUrKtENzLVzjef
 3YX1l5p1tlVCrr0QiJvGP3fhEb+TfURqYuRYSN5UhLrWF8yrNaIJ8rxcXek47EfP5x
 5kFWEOOnFBf2g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=buntait.pl header.i=@buntait.pl
 header.a=rsa-sha256 header.s=mail header.b=Ngfh2MVD
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

RHppZcWEIGRvYnJ5IQoKQ3p5IG3Ds2fFgmJ5bSBwcnplZHN0YXdpxIcgcm96d2nEhXphbmllLCBr
dMOzcmUgdW1vxbxsaXdpYSBtb25pdG9yaW5nIGthxbxkZWdvIGF1dGEgdyBjemFzaWUgcnplY3p5
d2lzdHltIHcgdHltIGplZ28gcG96eWNqxJksIHp1xbx5Y2llIHBhbGl3YSBpIHByemViaWVnPwoK
RG9kYXRrb3dvIG5hc3plIG5hcnrEmWR6aWUgbWluaW1hbGl6dWplIGtvc3p0eSB1dHJ6eW1hbmlh
IHNhbW9jaG9kw7N3LCBza3JhY2EgY3phcyBwcnplamF6ZMOzdywgYSB0YWvFvGUgdHdvcnplbmll
IHBsYW51IHRyYXMgY3p5IGRvc3Rhdy4KClogbmFzemVqIHdpZWR6eSBpIGRvxZt3aWFkY3plbmlh
IGtvcnp5c3RhIGp1xbwgcG9uYWQgNDkgdHlzLiBLbGllbnTDs3cuIE1vbml0b3J1amVteSA4MDkg
MDAwIHBvamF6ZMOzdyBuYSBjYcWCeW0gxZt3aWVjaWUsIGNvIGplc3QgbmFzesSFIG5hamxlcHN6
xIUgd2l6eXTDs3drxIUuCgpCYXJkem8gcHJvc3rEmSBvIGUtbWFpbGEgendyb3RuZWdvLCBqZcWb
bGkgbW9nbGliecWbbXkgd3Nww7NsbmllIG9tw7N3acSHIHBvdGVuY2phxYIgd3lrb3J6eXN0YW5p
YSB0YWtpZWdvIHJvendpxIV6YW5pYSB3IFBhxYRzdHdhIGZpcm1pZS4KCgpQb3pkcmF3aWFtLApQ
YXdlxYIgS2FtaWVuaWVja2kKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
