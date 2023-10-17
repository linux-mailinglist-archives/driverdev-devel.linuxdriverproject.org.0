Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D863C7CBCAF
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Oct 2023 09:47:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77A05416B6;
	Tue, 17 Oct 2023 07:47:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77A05416B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MpKIPM8W6BDB; Tue, 17 Oct 2023 07:47:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DA844161D;
	Tue, 17 Oct 2023 07:47:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DA844161D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA6D51BF2C5
 for <devel@linuxdriverproject.org>; Tue, 17 Oct 2023 07:47:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6564416B6
 for <devel@linuxdriverproject.org>; Tue, 17 Oct 2023 07:47:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6564416B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FtUzkROdAayi for <devel@linuxdriverproject.org>;
 Tue, 17 Oct 2023 07:47:28 +0000 (UTC)
Received: from mail.synergyflux.pl (mail.synergyflux.pl [51.38.99.212])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 85C914161D
 for <devel@driverdev.osuosl.org>; Tue, 17 Oct 2023 07:47:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85C914161D
Received: by mail.synergyflux.pl (Postfix, from userid 1002)
 id 3532726D07; Tue, 17 Oct 2023 07:45:58 +0000 (UTC)
Received: by mail.synergyflux.pl for <devel@driverdev.osuosl.org>;
 Tue, 17 Oct 2023 07:45:35 GMT
Message-ID: <20231017064500-0.1.7l.13fmd.0.hzhqkla3bb@synergyflux.pl>
Date: Tue, 17 Oct 2023 07:45:35 GMT
From: =?UTF-8?Q?"Konrad_Zieli=C5=84ski_"?= <konrad.zielinski@synergyflux.pl>
To: <devel@driverdev.osuosl.org>
Subject: Instalacja pv
X-Mailer: mail.synergyflux.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=synergyflux.pl; s=mail; t=1697528794;
 bh=n9RRp8MlabRDJBtJNro49Rmci90RtotaZYZ8+xo6WI4=;
 h=Date:From:To:Subject:From;
 b=qOn/h2OGYKFw28+Ms8aNwAGZatlGo/2bnJCUjF5KGnCDwS7k33R5IkN8L3G6bxnt6
 xzCKaBHJC9Vfo6CG7nv8VADJ/585t0Q2T0hoy5Rx5TDGtJEAnCJ3szRJ5bP8YN/FFs
 TN/U2vk7SLfn9isGGHU7LOMxXzJvoQ7P2c77WvrH+6V4fYM5hPb23KX4H4edJbO3XL
 CCOnOVQtLxwq4ygOBCFios0T3E0bicDrRFQbXF7E13AyUZOlnxy8gJgnKWnMcE94vF
 S7aNnFkwHh2Rixa2C4g9d2YczbeAMkg6uVxY23IyeoPhSm1Ky7N882YzxjmSmSsEpl
 /dzhLwoYNmVIQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=synergyflux.pl header.i=@synergyflux.pl
 header.a=rsa-sha256 header.s=mail header.b=qOn/h2OG
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

RHppZcWEIGRvYnJ5LAoKY3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIG5pZXpvYm93acSFenVq
xIVjxIUgcm96bW93xJkgbmEgdGVtYXQgZm90b3dvbHRhaWtpPwoKSmFrbyBmaXJtYSBzcGVjamFs
aXp1asSFY2Egc2nEmSB3IGluc3RhbGFjamkgaSBzZXJ3aXNpZSBuYWpsZXBzenljaCBqYWtvxZtj
aW93byBwYW5lbGkgc8WCb25lY3pueWNoIG5hIHJ5bmt1IGNoY2lhxYJieW0gcHJ6ZWRzdGF3acSH
IHByb3BvenljasSZLCBqYWvEhSB3c3DDs2xuaWUgeiB6ZXNwb8WCZW0gcHJ6eWdvdG93YWxpxZtt
eSBkbGEgUGHFhHN0d2Egb2JpZWt0dS4KCkLEmWTEmSB3ZHppxJljem55IHphIHdpYWRvbW/Fm8SH
IG9kIFBhxYRzdHdhIGN6eSBtb8W8ZW15IHBvcm96bWF3aWHEhy4KCgpQb3pkcmF3aWFtCktvbnJh
ZCBaaWVsacWEc2tpIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
