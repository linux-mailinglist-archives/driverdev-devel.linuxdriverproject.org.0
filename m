Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7341D76408B
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jul 2023 22:31:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB8F940144;
	Wed, 26 Jul 2023 20:31:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB8F940144
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mZrIthKqj4IX; Wed, 26 Jul 2023 20:31:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C822240B81;
	Wed, 26 Jul 2023 20:31:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C822240B81
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9D411BF40D
 for <devel@linuxdriverproject.org>; Wed, 26 Jul 2023 20:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B3B1640144
 for <devel@linuxdriverproject.org>; Wed, 26 Jul 2023 20:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3B1640144
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SdV8-wDHLHbT for <devel@linuxdriverproject.org>;
 Wed, 26 Jul 2023 20:31:47 +0000 (UTC)
X-Greylist: delayed 10741 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 26 Jul 2023 20:31:47 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E28640649
Received: from mailsenadoer.gob.ar (mailsenadoer.gob.ar [190.183.215.180])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E28640649
 for <devel@linuxdriverproject.org>; Wed, 26 Jul 2023 20:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mailsenadoer.gob.ar (Postfix) with ESMTP id E28FE1960755
 for <devel@linuxdriverproject.org>; Wed, 26 Jul 2023 02:59:56 -0300 (-03)
Received: from mailsenadoer.gob.ar ([127.0.0.1])
 by localhost (mailsenadoer.gob.ar [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 2ZpPbRSZn2w4 for <devel@linuxdriverproject.org>;
 Wed, 26 Jul 2023 02:59:56 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by mailsenadoer.gob.ar (Postfix) with ESMTP id 41C6C19416EC
 for <devel@linuxdriverproject.org>; Sun, 23 Jul 2023 00:56:34 -0300 (-03)
DKIM-Filter: OpenDKIM Filter v2.10.3 mailsenadoer.gob.ar 41C6C19416EC
X-Virus-Scanned: amavisd-new at mailsenadoer.gob.ar
Received: from mailsenadoer.gob.ar ([127.0.0.1])
 by localhost (mailsenadoer.gob.ar [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Y3t_4a2rRwgm for <devel@linuxdriverproject.org>;
 Sun, 23 Jul 2023 00:56:34 -0300 (-03)
Received: from [192.168.0.166] (unknown [105.8.7.246])
 by mailsenadoer.gob.ar (Postfix) with ESMTPSA id 4276D1800CAD
 for <devel@linuxdriverproject.org>; Fri, 21 Jul 2023 14:03:32 -0300 (-03)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?b?RHVsZcW+aXTDoSB6cHLDoXZhOyDigqwgMiwwMDAsMDAwJzAwIEVVUg==?=
To: devel@linuxdriverproject.org
From: "Pan Richard Wahl" <santacruz@mailsenadoer.gob.ar>
Date: Fri, 21 Jul 2023 10:03:28 -0700
Message-Id: <20230721170334.4276D1800CAD@mailsenadoer.gob.ar>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailsenadoer.gob.ar; 
 s=dkimmailsenadoer; t=1690084594;
 bh=Aor/WLwl4h5zbhGzya8ajVmHiT+79UPpoXAPFDddDh4=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=1tk4Dk4DtHf8QbPv/yKDRIxabOpx2jHKsKaGc5OxKEghNTtcE7eKEPVIObLESu1lz
 ghJI2yM4GjuPnSDKwcDcvK3Y2U2GIKoqMFBU200JnImZcOy1QXlvD/eubEnHly/wYD
 2pwCZYyIfixvDNxkbDl6ZI/0D+TSzDWtBxAdJM9jses0auXDripVH2X9ZIYbfcb1pd
 VYvBnecurSNUz+hnRM7i9UQuOGEivsKY+IGQm7vNhYETgOHouECW+5WlbNjbrrHX9O
 vyRmFahmpLhqmFYSczW3ctBAKcbJoJuMmySFmVuitM0fVkJC5jekprgiApEUBU26n/
 aHgnkucR4JRyQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=mailsenadoer.gob.ar header.i=@mailsenadoer.gob.ar
 header.a=rsa-sha256 header.s=dkimmailsenadoer header.b=1tk4Dk4D
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
Reply-To: info@wahlfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RHJhaMO9IHByw610ZWxpLAoKSnNlbSBwYW4gUmljaGFyZCBXYWhsLCBtZWdhIHbDrXRleiA1MzMg
bWlsaW9udSAkIHYgamFja3BvdHUgTWVnYSBNaWxsaW9ucy4gRGFydWppIDUgbsOhaG9kbmUgdnli
cmFuw71tIGxpZGVtLiBQb2t1ZCBvYmRyxb7DrXRlIHRlbnRvIGUtbWFpbCwgYnlsIHbDocWhIGUt
bWFpbCB2eWJyw6FuIHBvIHJvenRvY2Vuw60ga291bGUuIFZldMWhaW51IHN2w6lobyBtYWpldGt1
IGpzZW0gcm96ZGFsIHJhZGUgY2hhcml0YXRpdm7DrWNoIG9yZ2FuaXphY8OtIGEgb3JnYW5pemFj
w60uIERvYnJvdm9sbmUganNlbSBzZSByb3pob2RsIHZlbm92YXQgdsOhbSBjw6FzdGt1IOKCrCAy
LDAwMCwwMDAnMDAgRVVSIGpha28gamVkbm9tdSB6IDUgdnlicmFuw71jaCwgYWJ5Y2ggc2kgb3Zl
cmlsIHN2w6kgdsO9aHJ5IHByb3N0cmVkbmljdHbDrW0gbsOtxb5lIHV2ZWRlbsOpIHN0csOhbmt5
IFlvdVR1YmUuCgpWSUTDjVRFIE1FIFpERSBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92
PXRuZTAyRXhORHJ3CgpUT1RPIEpFIFbDgcWgIERBUk9WQUPDjSBLw5NEOiBbREZEVzQzMDM0Ulcy
MDIzXQoKT2Rwb3ZlenRlIG5hIHRlbnRvIGUtbWFpbCBhIHV2ZWR0ZSBrw7NkIGRhcnU6IGluZm9A
d2FobGZvdW5kYXRpb24ub3JnCgpEb3Vmw6FtLCDFvmUgdsOhbSBhIHZhxaHDrSByb2RpbmUgdWRl
bMOhbSByYWRvc3QuCgpQb3pkcmF2eSwKUGFuIFJpY2hhcmQgV2FobApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
