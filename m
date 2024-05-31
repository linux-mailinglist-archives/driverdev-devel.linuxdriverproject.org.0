Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8258D5BC3
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2024 09:46:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA0FF41A72;
	Fri, 31 May 2024 07:46:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1IgX7mzwLkXS; Fri, 31 May 2024 07:46:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB80441A30
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB80441A30;
	Fri, 31 May 2024 07:46:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B97F1D4F2D
 for <devel@linuxdriverproject.org>; Fri, 31 May 2024 07:46:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4536B40AF3
 for <devel@linuxdriverproject.org>; Fri, 31 May 2024 07:46:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w_wesxcZzrHB for <devel@linuxdriverproject.org>;
 Fri, 31 May 2024 07:46:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=162.19.67.48;
 helo=mail.envisioncraftsman.com;
 envelope-from=jan.polasek@envisioncraftsman.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 73BB940436
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73BB940436
Received: from mail.envisioncraftsman.com (mail.envisioncraftsman.com
 [162.19.67.48])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73BB940436
 for <devel@driverdev.osuosl.org>; Fri, 31 May 2024 07:46:16 +0000 (UTC)
Received: by mail.envisioncraftsman.com (Postfix, from userid 1002)
 id E4BC5203B4; Fri, 31 May 2024 09:46:10 +0200 (CEST)
Received: by mail.envisioncraftsman.com for <devel@driverdev.osuosl.org>;
 Fri, 31 May 2024 07:46:07 GMT
Message-ID: <20240531084500-0.1.2y.lv31.0.r395f8j6ke@envisioncraftsman.com>
Date: Fri, 31 May 2024 07:46:07 GMT
From: =?UTF-8?Q?"Jan_Pol=C3=A1=C5=A1ek"?= <jan.polasek@envisioncraftsman.com>
To: <devel@driverdev.osuosl.org>
Subject: Affiliate Marketing
X-Mailer: mail.envisioncraftsman.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=envisioncraftsman.com; s=mail; t=1717141573;
 bh=1aq+LNyfH/uD4lN+Zf05X6FmO9ash4UnYEJ0qHjCHx4=;
 h=Date:From:To:Subject:From;
 b=dbX648IzmmiXCHwT6A0Bjjmxh/pTy6yikGC0IFM8OuYeSiiUhWEZdFCK5H2RPvJUE
 4BozSe5OQ4fCIn5xQ7rDjSiPU7H1W3NqQ67mME1NavnOJjTGx3sa4mtIPA5gsI/gWT
 ZZh0fluu2nRCsU7BNT6mGKX0LG9Dtv0UYRIo9w5n3WwA5Z/SlU2NxP3t9PGz6Qo/ia
 SYRqDuKjENwkql7qnWl8Wf+oTOciWB2rf7XZSeC5eMgDjY4wm/NEogPn37Auvl5HED
 W2Tn74Nt2IKUdYctz11YaOQ+0p4NgoIf8pN6M55lq8drRE25GgZcxsUBO34pOOkGL6
 sMa1g6jEgO02Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=envisioncraftsman.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=envisioncraftsman.com header.i=@envisioncraftsman.com
 header.a=rsa-sha256 header.s=mail header.b=dbX648Iz
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

SGksCgpEbyB5b3UgaGF2ZSBleHBlcmllbmNlIHdpdGggYWZmaWxpYXRlIG1hcmtldGluZz8KCldo
YXQgaWYgSSBhc3N1cmUgeW91IHRoYXQgd2UgY2FuIHNpZ25pZmljYW50bHkgaW1wcm92ZSB5b3Vy
IGN1cnJlbnQgcmVzdWx0cyBhbmQgYWRkaXRpb25hbGx5IG9wZXJhdGUgaW4gUG9sYW5kLCB0aGUg
Q3plY2ggUmVwdWJsaWMsIEdlcm1hbnksIFNsb3Zha2lhLCBIdW5nYXJ5LCBSb21hbmlhLCBhbmQg
VWtyYWluZT8KCldlIGFjaGlldmUgdXAgdG8gMTMlIHR1cm5vdmVyIGluIEdBNCBmb3Igb3VyIGNs
aWVudHMsIHdoaWxlIHN0YW5kYXJkIGFmZmlsaWF0ZSBuZXR3b3JrcyBvbmx5IGdlbmVyYXRlIDMt
NiUuIFRoZSBzZWNyZXQgbGllcyBpbiBvdXIgaW5ub3ZhdGl2ZSBhcHByb2FjaCB0byB0aGUgcHVy
Y2hhc2UgZnVubmVsIGFuZCBwcmVjaXNlIHF1YWxpdHkgY29udHJvbC4KCk91ciB0ZWNobm9sb2dp
ZXMsIHN1Y2ggYXMgSW5nZW5pb3VzIFRlY2hub2xvZ2llcyBhbmQgQWRQb2xpY2UsIGVsaW1pbmF0
ZSBib3QgdHJhZmZpYyBhbmQgdW5mYWlyIHByYWN0aWNlcywgZW5zdXJpbmcgY2xlYW4gYW5kIHZh
bHVhYmxlIHRyYWZmaWMuIFRoYXQncyB3aHkgbGVhZGluZyBicmFuZHMgbGlrZSBJS0VBLCBCaWVk
cm9ua2EsIGFuZCBOZXNwcmVzc28gdHJ1c3QgdXMgdG8gbWFuYWdlIHRoZWlyIGFmZmlsaWF0ZSBw
cm9ncmFtcy4KCkknbSBhdmFpbGFibGUgdG8gZGlzY3VzcyB0aGUgb2ZmZXIgaW4gbW9yZSBkZXRh
aWwuIENhbiB3ZSB0YWxrPwoKCkJlc3QgcmVnYXJkcwpKYW4gUG9sw6HFoWVrCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
