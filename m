Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CB78C184C
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2024 23:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB7404200B;
	Thu,  9 May 2024 21:21:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zHSA17Z9_dok; Thu,  9 May 2024 21:21:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C989442018
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C989442018;
	Thu,  9 May 2024 21:21:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E91061BF427
 for <devel@linuxdriverproject.org>; Thu,  9 May 2024 21:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2CCF8402B
 for <devel@linuxdriverproject.org>; Thu,  9 May 2024 21:21:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CtQtTaTikZl9 for <devel@linuxdriverproject.org>;
 Thu,  9 May 2024 21:21:33 +0000 (UTC)
X-Greylist: delayed 21452 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 09 May 2024 21:21:31 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6266E84029
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6266E84029
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.63.172.104;
 helo=mail.07037.cn; envelope-from=admin@07037.cn; receiver=<UNKNOWN> 
Received: from mail.07037.cn (unknown [202.63.172.104])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6266E84029
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2024 21:21:31 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
 by mail.07037.cn (Postfix) with ESMTP id E321E601D78;
 Thu,  9 May 2024 21:03:50 +0000 (UTC)
Received: from mail.07037.cn ([127.0.0.1])
 by localhost (mail.07037.cn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7u3qMmJuGAgE; Fri, 10 May 2024 05:03:50 +0800 (CST)
Received: from [192.168.8.183] (unknown [197.184.180.84])
 by mail.07037.cn (Postfix) with ESMTPA id 7A0E4601874;
 Fri, 10 May 2024 03:40:43 +0800 (CST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?b?4oKsIDIsNTAwLjAwMCwwMA==?=
To: Recipients <admin@07037.cn>
From: admin@07037.cn
Date: Thu, 09 May 2024 12:40:30 -0700
Message-Id: <20240509210350.E321E601D78@mail.07037.cn>
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=07037.cn
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
Reply-To: fridmanmikhail511@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGFsbG8sCgpNaWtoYWlsIEZyaWRtYW4gd2lyZCAyLjUwMC4wMDAsMDAg4oKsIGF1cyBlaW5lbSBU
ZWlsIG1laW5lciBJbnZlc3RpdGlvbiBpbSBOYW1lbiBlaW5lciBXb2hsdMOkdGlna2VpdHNvcmdh
bmlzYXRpb24gc3BlbmRlbi4gQml0dGUgYW50d29ydGVuIFNpZSBtaXQgSWhyZW4gQW5zcHJ1Y2hz
ZGV0YWlscy4gSWNoIGVyd2FydGUgSWhyZSBmcsO8aGVzdGUgQW50d29ydCB1bmQgR290dCBzZWdu
ZSBTaWUuCgpWaWVsIEdsw7xjaywKTWljaGFpbCBGcmlkbWFuCktvbnRha3QtRS1NYWlsOiBmcmlk
bWFubWlraGFpbDUxMUBnbWFpbC5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
