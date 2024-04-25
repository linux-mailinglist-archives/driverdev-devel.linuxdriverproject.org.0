Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EB18B1CC6
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Apr 2024 10:24:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 704B560850;
	Thu, 25 Apr 2024 08:24:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wUB2qujIjuDF; Thu, 25 Apr 2024 08:24:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84EAE60D5E
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84EAE60D5E;
	Thu, 25 Apr 2024 08:24:08 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD3D41BF331
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 25 Apr 2024 08:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 998934011B
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 25 Apr 2024 08:24:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wSYSPJIxA_Jz for <driverdev-devel@linuxdriverproject.org>;
 Thu, 25 Apr 2024 08:24:05 +0000 (UTC)
X-Greylist: delayed 456 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 25 Apr 2024 08:24:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C0D61400DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0D61400DC
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=162.19.67.48;
 helo=mail.envisioncraftsman.com;
 envelope-from=oscar.brown@envisioncraftsman.com; receiver=<UNKNOWN> 
Received: from mail.envisioncraftsman.com (mail.envisioncraftsman.com
 [162.19.67.48])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0D61400DC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 25 Apr 2024 08:24:04 +0000 (UTC)
Received: by mail.envisioncraftsman.com (Postfix, from userid 1002)
 id 2F94A20925; Thu, 25 Apr 2024 10:16:24 +0200 (CEST)
Received: by mail.envisioncraftsman.com for
 <driverdev-devel@linuxdriverproject.org>; Thu, 25 Apr 2024 08:16:24 GMT
Message-ID: <20240425084500-0.1.2a.k510.0.10l9sn7rek@envisioncraftsman.com>
Date: Thu, 25 Apr 2024 08:16:24 GMT
From: "Oscar Brown" <oscar.brown@envisioncraftsman.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: New dimensions of posts
X-Mailer: mail.envisioncraftsman.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=envisioncraftsman.com; s=mail; t=1714032986;
 bh=JGRjzWXG3QgGTxIdAOckeEU7rsGggEB87UqS2kFnbYw=;
 h=Date:From:To:Subject:From;
 b=MSSRSkXKrVnsKOUEM8qUI90Uv0Sf7LVu/M1p/VbwoU4yxvl4TBJp9719XAbCuYDiE
 4mDuMn9A0Fr8dXNH/Ke85Kmh9ju8QeofqD0/Z7ndSoMlJd4E7sJTFPeDk9uiTpK/3M
 26JZ8vIPSfDkASQt0PtQ3qE1J3v+kaDTIHWF3LHZXDHXIfWXU29d59UFCTxuCkIp2R
 GuK/LJcP//vL7HcqDVS9D5ZppZ3x7s+nYhRt1NNYXfr5STpgFnvc+l8ZBwW6pj7yh6
 NvntnN/btBV1Z3mr6OiDbNA/yG1hIiWzSIJBSXIa1SlfTl/AVF5jW/3lU9Q4FK1OQ4
 Gy1NX0tfYdlqg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=envisioncraftsman.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=envisioncraftsman.com header.i=@envisioncraftsman.com
 header.a=rsa-sha256 header.s=mail header.b=MSSRSkXK
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

SGVsbG8sCgpJcyBpdCBwb3NzaWJsZSB0byBlc3RhYmxpc2ggY29vcGVyYXRpb24gd2l0aCB5b3U/
CgpBcyBhIHByb2R1Y2VyIG9mIG1ldGFsIGNvbXBvbmVudHMgYW5kIHN0cnVjdHVyZXMgYmFzZWQg
aW4gTWHFgm9wb2xza2EsIHdlIHN1cHBseSBzdG9yZXMgYW5kIHdob2xlc2FsZXJzIHdpdGggdmFy
aW91cyBlcXVpcG1lbnQsIHN1Y2ggYXMgYnJhY2tldHMsIGJhc2VzIGZvciB3b29kZW4gcG9zdHMs
IGFuY2hvcnMsIGdhcmRlbiBjb25uZWN0b3JzLCBwZXJnb2xhcywgc2hlbHRlcnMsIGFuZCBtdWNo
IG1vcmUuCgpXZSBndWFyYW50ZWUgc2lnbmlmaWNhbnQgZmxleGliaWxpdHkgaW4gbmVnb3RpYXRp
b24gcHJvY2Vzc2VzIGFuZCBwcm9tcHQgZGVsaXZlcnkuIFdlIGNvbGxhYm9yYXRlIHdpdGggd2hv
bGVzYWxlcnMgYW5kIHJldGFpbCBuZXR3b3JrcyBhY3Jvc3MgUG9sYW5kLCBnZW5lcmF0aW5nIGhp
Z2ggcHJvZml0cyBmcm9tIHRoZSBzYWxlIG9mIHN1Y2ggYXNzb3J0bWVudC4KCldvdWxkIHlvdSBs
aWtlIHRvIGV4cGxvcmUgd2hhdCB3ZSBjYW4gb2ZmZXI/CgoKQmVzdCByZWdhcmRzCk9zY2FyIEJy
b3duCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
