Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B2394A1D2
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2024 09:36:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC567812AB;
	Wed,  7 Aug 2024 07:36:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jrfmPEQcru_q; Wed,  7 Aug 2024 07:36:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE8928129A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE8928129A;
	Wed,  7 Aug 2024 07:36:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF1651BF869
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2024 07:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD45E404BC
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2024 07:36:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B9sRXgpULG3e for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2024 07:36:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=162.19.67.48;
 helo=mail.envisioncraftsman.com;
 envelope-from=jan.polasek@envisioncraftsman.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5272140274
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5272140274
Received: from mail.envisioncraftsman.com (mail.envisioncraftsman.com
 [162.19.67.48])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5272140274
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2024 07:36:46 +0000 (UTC)
Received: by mail.envisioncraftsman.com (Postfix, from userid 1002)
 id 28B7121433; Wed,  7 Aug 2024 09:35:17 +0200 (CEST)
Received: by mail.envisioncraftsman.com for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2024 07:35:13 GMT
Message-ID: <20240807084500-0.1.4a.seec.0.fmnu3et3pq@envisioncraftsman.com>
Date: Wed,  7 Aug 2024 07:35:13 GMT
From: =?UTF-8?Q?"Jan_Pol=C3=A1=C5=A1ek"?= <jan.polasek@envisioncraftsman.com>
To: <devel@linuxdriverproject.org>
Subject: Quick Question About Collaboration
X-Mailer: mail.envisioncraftsman.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=envisioncraftsman.com; s=mail; t=1723016119;
 bh=uGTmdNfeKWYppKfROrYtp0X+RK7/pRJQsBUrarqToyk=;
 h=Date:From:To:Subject:From;
 b=dA4r0gM+TpivLHO9m2tljJdobiuepttjraApO4ky7ONxpVtWFLbX4kxJWqUxhIloi
 qLqTRACuXaSvpq9CV8gJO0Am0yLQ4k762LUJXaTnX8v2aBHehhbgiuTOtq7YJbir73
 SP/W8l2M57g439mYlLfEm52PVzqVQiHcH4+rF6A/huKNqz8K14A9L9hPT7jTqJmV9K
 75/fmQrlpnB7w3dTStu/voSz03w792Lp6HzcQtaP0cdxH+neiiqtB3sLBwDxSj6Y0C
 u1kOdwdbFI3RIjql1QnRCp/0nJqJvxYsoF/TxSYVQDDKtoQkQ4TOeiy/hbwtfrIPva
 LZoQ9uhyuWzCA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=envisioncraftsman.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=envisioncraftsman.com header.i=@envisioncraftsman.com
 header.a=rsa-sha256 header.s=mail header.b=dA4r0gM+
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

SGVsbG8hCgpJIGFtIHZlcnkgaW1wcmVzc2VkIHdpdGggdGhlIHByb2R1Y3RzIGFuZCBzZXJ2aWNl
cyB5b3Ugb2ZmZXIuCgpJIHRob3VnaHQgd2UgY291bGQgaGVscCB5b3UgcmVhY2ggYSBsYXJnZXIg
YXVkaWVuY2Ugd2l0aCB5b3VyIG9mZmVyaW5ncy4gV291bGQgeW91IGJlIGludGVyZXN0ZWQgaW4g
Y29sbGFib3JhdGluZyB3aXRoIHVzIGluIGFuIGFmZmlsaWF0ZSBtYXJrZXRpbmcgY2FtcGFpZ24/
CgpGb3IgZXhhbXBsZSwgb3VyIHByb2dyYW0gZm9yIGEgY29tcGFueSBpbiB0aGUgZS1jb21tZXJj
ZSBzZWN0b3IgcmVzdWx0ZWQgaW4gYW4gaW5jcmVhc2UgaW4gcmV2ZW51ZSBmcm9tIDglIHRvIGFu
IGltcHJlc3NpdmUgMTklIChvbiBhdmVyYWdlIHBlciBxdWFydGVyKS4KCldlIGFjaGlldmUgdXAg
dG8gMTMlIHR1cm5vdmVyIGluIEdBNCwgd2hpbGUgc3RhbmRhcmQgYWZmaWxpYXRlIG5ldHdvcmtz
IGdlbmVyYXRlIG9ubHkgMy02JS4KCldvdWxkIHlvdSBoYXZlIHRpbWUgZm9yIGEgc2hvcnQgY29u
dmVyc2F0aW9uIGluIHRoZSBuZXh0IGZldyBkYXlzPwoKCkJlc3QgcmVnYXJkcwpKYW4gUG9sw6HF
oWVrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
