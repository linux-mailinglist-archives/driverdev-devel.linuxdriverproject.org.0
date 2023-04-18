Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C118F6E5CAA
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Apr 2023 10:56:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EC7683C10;
	Tue, 18 Apr 2023 08:56:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EC7683C10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6yrgBs23diVr; Tue, 18 Apr 2023 08:56:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 744DF8148F;
	Tue, 18 Apr 2023 08:56:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 744DF8148F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5D851BF302
 for <devel@linuxdriverproject.org>; Tue, 18 Apr 2023 08:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F57A41040
 for <devel@linuxdriverproject.org>; Tue, 18 Apr 2023 08:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F57A41040
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ewyF8zp3AkTg for <devel@linuxdriverproject.org>;
 Tue, 18 Apr 2023 08:56:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D50F402F6
Received: from mail.edsonnith.pl (mail.edsonnith.pl [195.231.83.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D50F402F6
 for <devel@driverdev.osuosl.org>; Tue, 18 Apr 2023 08:56:47 +0000 (UTC)
Received: by mail.edsonnith.pl (Postfix, from userid 1002)
 id 7E8FB86AA5; Tue, 18 Apr 2023 10:53:27 +0200 (CEST)
Received: by mail.edsonnith.pl for <devel@driverdev.osuosl.org>;
 Tue, 18 Apr 2023 08:53:15 GMT
Message-ID: <20230418102808-0.1.r.bm55.0.icy211dxjd@edsonnith.pl>
Date: Tue, 18 Apr 2023 08:53:15 GMT
From: "Maciej Przybylski" <maciej.przybylski@edsonnith.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Pytanie_o_wycen=C4=99_?=
X-Mailer: mail.edsonnith.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=edsonnith.pl; s=mail; 
 t=1681808043; bh=R834O9ZKPsOqL7TcrHze/mUM6BZ0xyR+u5GqXjK8tTo=;
 h=Date:From:To:Subject:From;
 b=W1d+8WsjXj46ruKgOY4x7o1Hb6uW4RbwIMdyivF4yh3Kpa79psQU8tIFy4LF8ZoH9
 Ch3/uX4T/+PLASN0TFMfH/Yv6iSXrmSmrdStghL1U1b7vysFARnNZNNkAubWAbbdI/
 Y2PY8tl6nsJM6HxnBXNAfbMTcawRneJtP0yknxssJ/i+ty9c/wjC2BEArCN8Cdpox9
 8rSYhtPQZ5bT/+3yNc+nbrARouV3F9PnkQ5ntWXfdRGXCCFYu1c63BBtoJPkWRdypU
 NC7kNVwCMLDvErdhuleUFgsMJnS1NCMo5JPCd3i17CmeD/4UBwcxu2wpS0/XnufLup
 WHY0gIDml2QxQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=edsonnith.pl header.i=@edsonnith.pl
 header.a=rsa-sha256 header.s=mail header.b=W1d+8Wsj
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

RHppZcWEIGRvYnJ5LAoKQ3p5IHBvc3p1a3VqxIUgUGHFhHN0d28gYWt0dWFsbmllIG5vd3ljaCBr
bGllbnTDs3cgeiBzZWdtZW50dSBCMkI/CgpXc3BpZXJhbXkgZmlybXkgdyBuYXdpxIV6eXdhbml1
IHJlbGFjamkgYml6bmVzb3d5Y2guCgpDenkgbW/FvGVteSBwb3Jvem1hd2lhxIc/CgoKUG96ZHJh
d2lhbQpNYWNpZWogUHJ6eWJ5bHNraQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
