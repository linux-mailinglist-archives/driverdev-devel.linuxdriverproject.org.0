Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B476AD9FA
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Mar 2023 10:12:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB305819BE;
	Tue,  7 Mar 2023 09:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB305819BE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lCm5FadpKJOb; Tue,  7 Mar 2023 09:12:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AC60819BC;
	Tue,  7 Mar 2023 09:12:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AC60819BC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 050F21BF255
 for <devel@linuxdriverproject.org>; Tue,  7 Mar 2023 09:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2B5E60E38
 for <devel@linuxdriverproject.org>; Tue,  7 Mar 2023 09:12:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2B5E60E38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bGsNZ3BBwpOv for <devel@linuxdriverproject.org>;
 Tue,  7 Mar 2023 09:12:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F34660E22
Received: from mail.craftsplex.pl (mail.craftsplex.pl [162.19.155.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F34660E22
 for <devel@driverdev.osuosl.org>; Tue,  7 Mar 2023 09:12:15 +0000 (UTC)
Received: by mail.craftsplex.pl (Postfix, from userid 1002)
 id ADBC2232B6; Tue,  7 Mar 2023 09:11:30 +0000 (UTC)
Received: by mail.craftsplex.pl for <devel@driverdev.osuosl.org>;
 Tue,  7 Mar 2023 09:10:44 GMT
Message-ID: <20230307074501-0.1.4q.g7it.0.uh996vq0p0@craftsplex.pl>
Date: Tue,  7 Mar 2023 09:10:44 GMT
From: "Kamil Tralewski" <kamil.tralewski@craftsplex.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.craftsplex.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=craftsplex.pl; s=mail; t=1678180332;
 bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
 h=Date:From:To:Subject:From;
 b=neG2MPa/xURANh6DJU3SifzXryr/0Qz8rlpCihWuSkmJOGIw2rHjyXuBQyTOHTM8j
 hOc8zlv0xmCL7bZ6V5w2j9RWaLW/pgn+emqyPGYWXOHU2aIliBzORAujoBL9/RFsQ2
 lzEVENzoPx7AOx9D6zFOBTAQcH97v2yPcta9z+LSzwo1BUJoZczF4p6YiMz1rV+8Ko
 /slADI2IFPGd3LocRfKEC4u5Mwo8DaORlZc9Z8M395Ry1vsdiC8O/bZrhSfLpdTPZ4
 /wBO3n2ogitRD20bZl6Rtt3kTq1XX7wUiaAb0o3mrEXFEsRF2Z3ZGUVfOI593K1b/l
 kfv+7IiAH0zeg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=craftsplex.pl header.i=@craftsplex.pl
 header.a=rsa-sha256 header.s=mail header.b=neG2MPa/
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

RHppZcWEIGRvYnJ5LAoKemFwb3puYcWCZW0gc2nEmSB6IFBhxYRzdHdhIG9mZXJ0xIUgaSB6IHBy
enlqZW1ub8WbY2nEhSBwcnp5em5hasSZLCDFvGUgcHJ6eWNpxIVnYSB1d2FnxJkgaSB6YWNoxJlj
YSBkbyBkYWxzenljaCByb3ptw7N3LiAKClBvbXnFm2xhxYJlbSwgxbxlIG1vxbxlIG3Ds2fFgmJ5
bSBtaWXEhyBzd8OzaiB3a8WCYWQgdyBQYcWEc3R3YSByb3p3w7NqIGkgcG9tw7NjIGRvdHJ6ZcSH
IHogdMSFIG9mZXJ0xIUgZG8gd2nEmWtzemVnbyBncm9uYSBvZGJpb3Jjw7N3LiBQb3p5Y2pvbnVq
xJkgc3Ryb255IHd3dywgZHppxJlraSBjemVtdSBnZW5lcnVqxIUgxZt3aWV0bnkgcnVjaCB3IHNp
ZWNpLgoKTW/FvGVteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKUG96ZHJh
d2lhbQpLYW1pbCBUcmFsZXdza2kKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
