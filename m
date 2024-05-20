Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4948C9D34
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2024 14:28:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFC54405C0;
	Mon, 20 May 2024 12:28:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8cBNQEuoPDsk; Mon, 20 May 2024 12:28:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C013E405D2
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C013E405D2;
	Mon, 20 May 2024 12:27:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B36EF1BF3E9
 for <devel@linuxdriverproject.org>; Mon, 20 May 2024 12:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A036C405E3
 for <devel@linuxdriverproject.org>; Mon, 20 May 2024 12:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PUHCdEqHo5Am for <devel@linuxdriverproject.org>;
 Mon, 20 May 2024 12:27:57 +0000 (UTC)
X-Greylist: delayed 600 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 20 May 2024 12:27:56 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6EEF440065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EEF440065
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=62.96.98.11;
 helo=mail-ispcp.winety.com; envelope-from=smtp@winety.com; receiver=<UNKNOWN> 
Received: from mail-ispcp.winety.com (mail.ternum.de [62.96.98.11])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6EEF440065
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2024 12:27:55 +0000 (UTC)
Received: by mail-ispcp.winety.com (Postfix, from userid 2010)
 id D68B38679B2; Mon, 20 May 2024 14:20:51 +0200 (CEST)
Received: from [91.224.92.87] (unknown [91.224.92.87])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mail-ispcp.winety.com (Postfix) with ESMTPSA id 3551C862D04;
 Mon, 20 May 2024 13:36:34 +0200 (CEST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Spende von 3.700.000 Euro
To: Recipients <smtp@winety.com>
From: "Maria Elisabeth Schaeffler" <smtp@winety.com>
Date: Mon, 20 May 2024 04:33:30 -0700
Message-Id: <20240520122051.D68B38679B2@mail-ispcp.winety.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=winety.com; s=201608; 
 t=1716207651; bh=aYPJNQT7/7B1o9hq6VgmHEbQl8VUbUH48js+R58UdSk=;
 h=Subject:To:From:Date:Reply-To:From;
 b=M3BTz6RblYlj7YQ3ulnzQVGgOVs/+CP7uAiYEHsuu7n/QA+edDmm2NK5bI6mPFGuk
 1kTAjKPmLW3jCVUl3ARQrEEHhiplNWwsZ9CSsi0GMK1TY2XedhmT/kRxjmpHnyTleg
 UhOmEtZx/9hXdrK3utwBkSKgxZ7anGqG9dgJNver8mPBp7reTWQw011tCQGvXdnoF8
 fVT63o3OPjGTu84MQksg03yPPmoYnMOX1TP6wAQXWMWLEFM1+1JKfSLYsZdQhwuPKC
 sottWLsuR7s3M0ApDEDI2EWP8wMhqergcnXFYbVCbbG8PA6KaBgWMp3ptIizMCqv6V
 LBkLEeTQxliDg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=winety.com; s=201608; 
 t=1716204997; bh=aYPJNQT7/7B1o9hq6VgmHEbQl8VUbUH48js+R58UdSk=;
 h=Subject:To:From:Date:Reply-To:From;
 b=t/SziO82O2AzmTKAWtetq83dDRjO355684gtwxIt1BeWgzZ83IVUteAZqFl7HGx7d
 vs6CRwX7RMYTdKpQXe5+FVPkKRTB+zc9r7ti3RfGZ6q2ODmMwgK9ZnXknG9WDwZSGe
 GUClIJGB8BHymFiVA4F20Txab4oSHU0fIcIJ68yzYOsp/5N+JxG1JPCPMv/E+AZ7t4
 kijaRkOHtg8RhkY5i+7su3crBHRK5jIvmKcQ32YQtk5XHkpknIpehm+cBI9Bdzcm2m
 uqpXXvEFJodwrsZUVCizyeD5UJsExPVQ2eozVpE04NHiFedo5VojdXUOlgUrc1ESKh
 vdiJFJg/G9rhQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=winety.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=winety.com header.i=@winety.com
 header.a=rsa-sha256 header.s=201608 header.b=M3BTz6Rb; 
 dkim=pass (2048-bit key) header.d=winety.com header.i=@winety.com
 header.a=rsa-sha256 header.s=201608 header.b=t/SziO82
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
Reply-To: mariaelisabeth@myyahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3LDvMOfZSwKCiAgSWNoIGJpbiBNYXJpYSBFbGlzYWJldGggU2NoYWVmZmxlciwgZWluZSBkZXV0
c2NoZSBVbnRlcm5laG1lcmluLCBJbnZlc3RvcmluIHVuZCBHZXNjaMOkZnRzZsO8aHJlcmluIGRl
ciBTY2hhZWZmbGVyIEdydXBwZS4gSWNoIGJpbiBlaW5lciBkZXIgRWlnZW50w7xtZXIgZGVyIFNj
aGFlZmZsZXIgR3J1cHBlLiBJY2ggaGFiZSAyNSAlIG1laW5lcyBBbnRlaWxzIGbDvHIgZWluZW4g
Z3V0ZW4gWndlY2sgZ2VzcGVuZGV0LiBVbmQgYXVjaCBkaWUgcmVzdGxpY2hlbiAyNSAlIGhhYmUg
aWNoIHZvciwgZGllc2VzIEphaHIgaW0gSmFociAyMDI0IGFuIFByaXZhdHBlcnNvbmVuIHp1IHZl
cnNjaGVua2VuLiBJY2ggaGFiZSBiZXNjaGxvc3NlbiwgMy43MDAuMDAwIOKCrCBhbiAxMDAgTWVu
c2NoZW4genUgc3BlbmRlbi4gV2VubiBTaWUgYW4gbWVpbmVyIFNwZW5kZSBpbnRlcmVzc2llcnQg
c2luZCwga29udGFrdGllcmVuIFNpZSBtaWNoIGpldHp0IGbDvHIgd2VpdGVyZSBJbmZvcm1hdGlv
bmVuLgoKSEVSUiBNYXJpYSBFbGlzYWJldGggU2NoYWVmZmxlcgpHZXNjaMOkZnRzZsO8aHJlciBT
Q0jDhEZGTEVSCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
