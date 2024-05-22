Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2B48CBC74
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2024 09:54:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 415B880F6C;
	Wed, 22 May 2024 07:54:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SVJMVdJ70vJG; Wed, 22 May 2024 07:54:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A55480F7E
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A55480F7E;
	Wed, 22 May 2024 07:54:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DA051C58D7
 for <devel@linuxdriverproject.org>; Wed, 22 May 2024 07:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2871280F79
 for <devel@linuxdriverproject.org>; Wed, 22 May 2024 07:54:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gNNTgZeT5gb5 for <devel@linuxdriverproject.org>;
 Wed, 22 May 2024 07:54:22 +0000 (UTC)
X-Greylist: delayed 480 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 22 May 2024 07:54:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D7C3E80F6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7C3E80F6C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.61.97.171;
 helo=mail.sparkstart.pl; envelope-from=tomasz.krzak@sparkstart.pl;
 receiver=<UNKNOWN> 
Received: from mail.SparkStart.pl (mail.SparkStart.pl [217.61.97.171])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7C3E80F6C
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2024 07:54:21 +0000 (UTC)
Received: by mail.SparkStart.pl (Postfix, from userid 1002)
 id 68D5882904; Wed, 22 May 2024 09:46:12 +0200 (CEST)
Received: by mail.SparkStart.pl for <devel@driverdev.osuosl.org>;
 Wed, 22 May 2024 07:46:08 GMT
Message-ID: <20240522084500-0.1.2r.66m8.0.kp3mp6kl52@SparkStart.pl>
Date: Wed, 22 May 2024 07:46:08 GMT
From: "Tomasz Krzak" <tomasz.krzak@sparkstart.pl>
To: <devel@driverdev.osuosl.org>
Subject: Plan na rebranding
X-Mailer: mail.SparkStart.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=SparkStart.pl; s=mail; t=1716363978;
 bh=7uHIMmwDj3roXFz2myWwc6YAW+5vai9F8++103q9j+Q=;
 h=Date:From:To:Subject:From;
 b=fWsLZZq/iD/TOka0tNbxEGJX4JZB8jk8QkIzUeQWEew9BxYs5H9QK82zc0S6XCd7j
 KNtLmf2XELkuzjRICQWe2nZE7uRx+TItqXni+jL3cm2921tuqWVGlpRVQ77s+lPR4z
 lWFNy+C2tvhmEJLxUO1Zkcrrbh7xDDZh5bVMgNg3mRwv7ajNHzrtyKZFyiyONeRIYS
 sEZKlFQUYKL80OsPBu4lmNpNUudae0ZMxRlU92pfdOllRbfXVimupclAnl7ekr2WXQ
 noOGfpj94xtbvSNcHQrFB4sSGJ06SHIjNL4+wqDTPWkhTz9Befg5GRgXx50Nl8FgsO
 bobdE16yfpD6g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=sparkstart.pl
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=SparkStart.pl header.i=@SparkStart.pl
 header.a=rsa-sha256 header.s=mail header.b=fWsLZZq/
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

RHppZcWEIGRvYnJ5LCAKCnpham11amVteSBzacSZIHR3b3J6ZW5pZW0gcm96cG96bmF3YWxub8Wb
Y2kgd2l6dWFsbmVqIG1hcmtpLCBvYmVqbXVqxIVjZWogemFyw7N3bm8gZWxlbWVudHkgZ3JhZmlj
em5lLCBqYWsgaSBwcm9qZWt0eSBtYXRlcmlhxYLDs3cgdcW8eXRrb3d5Y2ggY3p5IHJla2xhbS4K
ClByYWN1amVteSBkbGEgem5hbnljaCBtYXJlayBvcmF6IHRha2ljaCwga3TDs3JlIGNoY8SFIGJ5
xIcgem5hbmUsIGEgcHJvZHVrdHksIGt0w7NyZSBrcmV1amVteSBkbGEgbmFzenljaCBrbGllbnTD
s3csIHN0YW5vd2nEhSB3YXJ0b8WbxIcgbmllbWF0ZXJpYWxuxIUsIGt0w7NyYSB6d2nEmWtzemEg
cmVudG93bm/Fm8SHIGlud2VzdHljamkgdyBmaXp5Y3puZSB6YXNvYnkuCgpKZXN0ZcWbbXkgemVz
cG/FgmVtIGRvxZt3aWFkY3pvbnljaCBwcm9mZXNqb25hbGlzdMOzdyBnb3Rvd3ljaCBuaWUgdHls
a28gZG8gdHdvcnplbmlhIHpld27EmXRyem55Y2ggZWxlbWVudMOzdyBicmFuZGluZ3UsIGFsZSB0
YWvFvGUgZG8gcHJvamVrdG93YW5pYSBmdW5rY2pvbmFsbnljaCBzdHJvbiBpbnRlcm5ldG93eWNo
IG9yYXogbWF0ZXJpYcWCw7N3IHJla2xhbW93eWNoIHdzcGllcmFqxIVjeWNoIHByb2Nlc3kgc3By
emVkYcW8eS4KCkN6eSBtb8W8ZW15IHBvcm96bWF3aWHEhz8KCgpQb3pkcmF3aWFtClRvbWFzeiBL
cnphawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
